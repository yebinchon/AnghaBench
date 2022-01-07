; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_enable_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_enable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_phy = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@DRCMR_MAPVLD = common dso_local global i32 0, align 4
@DALGN = common dso_local global i32 0, align 4
@DCSR = common dso_local global i32 0, align 4
@DCSR_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_pdma_phy*)* @enable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_chan(%struct.mmp_pdma_phy* %0) #0 {
  %2 = alloca %struct.mmp_pdma_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mmp_pdma_phy* %0, %struct.mmp_pdma_phy** %2, align 8
  %5 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %6 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %12 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @DRCMR(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @DRCMR_MAPVLD, align 4
  %18 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %19 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %23 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @writel(i32 %21, i32 %26)
  %28 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %29 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DALGN, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @readl(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %35 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %10
  %41 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %42 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %10
  %48 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %49 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %58 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DALGN, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @writel(i32 %56, i32 %61)
  %63 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %64 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 2
  %67 = load i32, i32* @DCSR, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %3, align 4
  %69 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %70 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @readl(i32 %73)
  %75 = load i32, i32* @DCSR_RUN, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %2, align 8
  %78 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @writel(i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %55, %9
  ret void
}

declare dso_local i32 @DRCMR(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
