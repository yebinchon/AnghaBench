; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_16B_get_l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_16B_get_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_16b_header = type { i32* }

@OPA_16B_L2_MASK = common dso_local global i32 0, align 4
@OPA_16B_L2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_16b_header*)* @hfi1_16B_get_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_16B_get_l2(%struct.hfi1_16b_header* %0) #0 {
  %2 = alloca %struct.hfi1_16b_header*, align 8
  store %struct.hfi1_16b_header* %0, %struct.hfi1_16b_header** %2, align 8
  %3 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %2, align 8
  %4 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @OPA_16B_L2_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @OPA_16B_L2_SHIFT, align 4
  %11 = ashr i32 %9, %10
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
