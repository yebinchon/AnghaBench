; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_clear_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_clear_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_phy = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DINT = common dso_local global i32 0, align 4
@DCSR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DCSR_BUSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DCSR_BUSERR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_pdma_phy*)* @clear_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_chan_irq(%struct.mmp_pdma_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmp_pdma_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmp_pdma_phy* %0, %struct.mmp_pdma_phy** %3, align 8
  %7 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %8 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DINT, align 4
  %11 = add nsw i32 %9, %10
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %14 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 2
  %17 = load i32, i32* @DCSR, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %21 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %1
  %30 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %31 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @readl(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %38 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @writel(i32 %36, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DCSR_BUSERR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %29
  %48 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %49 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %54 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %52, %47, %29
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
