; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sa11x0_dma_dev = type { %struct.sa11x0_dma_phy* }
%struct.sa11x0_dma_phy = type { i64, i32, i32*, i32*, %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc* }
%struct.sa11x0_dma_desc = type { i32 }

@NR_PHY_CHAN = common dso_local global i32 0, align 4
@DMA_DCSR_R = common dso_local global i64 0, align 8
@DCSR_BIU = common dso_local global i32 0, align 4
@DCSR_STRTA = common dso_local global i32 0, align 4
@DCSR_STRTB = common dso_local global i32 0, align 4
@DCSR_RUN = common dso_local global i32 0, align 4
@DMA_DDAR = common dso_local global i64 0, align 8
@DMA_DBSA = common dso_local global i64 0, align 8
@DMA_DBTA = common dso_local global i64 0, align 8
@DMA_DBSB = common dso_local global i64 0, align 8
@DMA_DBTB = common dso_local global i64 0, align 8
@DMA_DCSR_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sa11x0_dma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_dma_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sa11x0_dma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sa11x0_dma_phy*, align 8
  %6 = alloca %struct.sa11x0_dma_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.sa11x0_dma_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.sa11x0_dma_dev* %9, %struct.sa11x0_dma_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %122, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NR_PHY_CHAN, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %125

14:                                               ; preds = %10
  %15 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %16 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %15, i32 0, i32 0
  %17 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %17, i64 %19
  store %struct.sa11x0_dma_phy* %20, %struct.sa11x0_dma_phy** %5, align 8
  store %struct.sa11x0_dma_desc* null, %struct.sa11x0_dma_desc** %6, align 8
  %21 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %22 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_DCSR_R, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DCSR_BIU, align 4
  %29 = load i32, i32* @DCSR_STRTA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DCSR_STRTB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DCSR_RUN, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %27, %34
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %38 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %37, i32 0, i32 5
  %39 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %38, align 8
  %40 = icmp ne %struct.sa11x0_dma_desc* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %14
  %42 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %43 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %42, i32 0, i32 5
  %44 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %43, align 8
  store %struct.sa11x0_dma_desc* %44, %struct.sa11x0_dma_desc** %6, align 8
  br label %55

45:                                               ; preds = %14
  %46 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %47 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %46, i32 0, i32 4
  %48 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %47, align 8
  %49 = icmp ne %struct.sa11x0_dma_desc* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %52 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %51, i32 0, i32 4
  %53 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %52, align 8
  store %struct.sa11x0_dma_desc* %53, %struct.sa11x0_dma_desc** %6, align 8
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %6, align 8
  %57 = icmp ne %struct.sa11x0_dma_desc* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %122

59:                                               ; preds = %55
  %60 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %6, align 8
  %61 = getelementptr inbounds %struct.sa11x0_dma_desc, %struct.sa11x0_dma_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %64 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DMA_DDAR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel_relaxed(i32 %62, i64 %67)
  %69 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %70 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %75 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DMA_DBSA, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %73, i64 %78)
  %80 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %81 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %86 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DMA_DBTA, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel_relaxed(i32 %84, i64 %89)
  %91 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %92 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %97 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DMA_DBSB, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel_relaxed(i32 %95, i64 %100)
  %102 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %103 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %108 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DMA_DBTB, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %106, i64 %111)
  %113 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %114 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %117 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DMA_DCSR_S, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel_relaxed(i32 %115, i64 %120)
  br label %122

122:                                              ; preds = %59, %58
  %123 = load i32, i32* %4, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %10

125:                                              ; preds = %10
  ret i32 0
}

declare dso_local %struct.sa11x0_dma_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
