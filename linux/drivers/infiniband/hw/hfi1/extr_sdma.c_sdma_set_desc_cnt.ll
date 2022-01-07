; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_set_desc_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_set_desc_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HFI1_HAS_SDMA_TIMEOUT = common dso_local global i32 0, align 4
@DESC_CNT_CNT_MASK = common dso_local global i32 0, align 4
@DESC_CNT_CNT_SHIFT = common dso_local global i32 0, align 4
@DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, i32)* @sdma_set_desc_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_set_desc_cnt(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %7 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HFI1_HAS_SDMA_TIMEOUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @DESC_CNT_CNT_MASK, align 4
  %18 = call i32 @SD(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @DESC_CNT_CNT_SHIFT, align 4
  %22 = call i32 @SD(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %26 = load i32, i32* @DESC_CNT, align 4
  %27 = call i32 @SD(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @write_sde_csr(%struct.sdma_engine* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @SD(i32) #1

declare dso_local i32 @write_sde_csr(%struct.sdma_engine*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
