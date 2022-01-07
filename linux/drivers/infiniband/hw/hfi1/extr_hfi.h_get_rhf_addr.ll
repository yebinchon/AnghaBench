; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_get_rhf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_get_rhf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hfi1_ctxtdata*)* @get_rhf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_rhf_addr(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %2, align 8
  %3 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %4 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  ret i32* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
