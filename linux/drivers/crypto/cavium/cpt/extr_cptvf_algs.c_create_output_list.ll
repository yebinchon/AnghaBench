; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_create_output_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_create_output_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32 }
%struct.cvm_req_ctx = type { %struct.cpt_request_info }
%struct.cpt_request_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ablkcipher_request*, i32)* @create_output_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_output_list(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cvm_req_ctx*, align 8
  %6 = alloca %struct.cpt_request_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.cvm_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %8)
  store %struct.cvm_req_ctx* %9, %struct.cvm_req_ctx** %5, align 8
  %10 = load %struct.cvm_req_ctx*, %struct.cvm_req_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.cvm_req_ctx, %struct.cvm_req_ctx* %10, i32 0, i32 0
  store %struct.cpt_request_info* %11, %struct.cpt_request_info** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.cpt_request_info*, %struct.cpt_request_info** %6, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %14 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @update_output_iv(%struct.cpt_request_info* %12, i32 %15, i32 %16, i32* %7)
  %18 = load %struct.cpt_request_info*, %struct.cpt_request_info** %6, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %20 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @update_output_data(%struct.cpt_request_info* %18, i32 %21, i32 %24, i32* %7)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.cpt_request_info*, %struct.cpt_request_info** %6, align 8
  %28 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local %struct.cvm_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @update_output_iv(%struct.cpt_request_info*, i32, i32, i32*) #1

declare dso_local i32 @update_output_data(%struct.cpt_request_info*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
