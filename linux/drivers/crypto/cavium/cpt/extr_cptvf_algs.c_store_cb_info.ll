; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_store_cb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_store_cb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.cpt_request_info = type { i8*, i8* }

@cvm_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ablkcipher_request*, %struct.cpt_request_info*)* @store_cb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_cb_info(%struct.ablkcipher_request* %0, %struct.cpt_request_info* %1) #0 {
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.cpt_request_info*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  store %struct.cpt_request_info* %1, %struct.cpt_request_info** %4, align 8
  %5 = load i64, i64* @cvm_callback, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = load %struct.cpt_request_info*, %struct.cpt_request_info** %4, align 8
  %8 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %10 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct.cpt_request_info*, %struct.cpt_request_info** %4, align 8
  %13 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
