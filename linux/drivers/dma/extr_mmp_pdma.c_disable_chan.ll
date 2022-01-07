; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_disable_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_disable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_phy = type { i32, i64 }

@DCSR = common dso_local global i64 0, align 8
@DCSR_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_pdma_phy*)* @disable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_chan(%struct.mmp_pdma_phy* %0) #0 {
  %2 = alloca %struct.mmp_pdma_phy*, align 8
  %3 = alloca i64, align 8
  store %struct.mmp_pdma_phy* %0, %struct.mmp_pdma_phy** %2, align 8
  %4 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %5 = icmp ne %struct.mmp_pdma_phy* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %9 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @DCSR, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %3, align 8
  %15 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %16 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @DCSR_RUN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %25 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
