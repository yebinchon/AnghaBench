; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_phy = type { %struct.s3c24xx_dma_chan*, i32, i32, i32, i32 }
%struct.s3c24xx_dma_chan = type { %struct.s3c24xx_dma_engine* }
%struct.s3c24xx_dma_engine = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.s3c24xx_dma_phy* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no phy channel available\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"could not enable clock for channel %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c24xx_dma_phy* (%struct.s3c24xx_dma_chan*)* @s3c24xx_dma_get_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c24xx_dma_phy* @s3c24xx_dma_get_phy(%struct.s3c24xx_dma_chan* %0) #0 {
  %2 = alloca %struct.s3c24xx_dma_phy*, align 8
  %3 = alloca %struct.s3c24xx_dma_chan*, align 8
  %4 = alloca %struct.s3c24xx_dma_engine*, align 8
  %5 = alloca %struct.s3c24xx_dma_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s3c24xx_dma_chan* %0, %struct.s3c24xx_dma_chan** %3, align 8
  %9 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %9, i32 0, i32 0
  %11 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %10, align 8
  store %struct.s3c24xx_dma_engine* %11, %struct.s3c24xx_dma_engine** %4, align 8
  store %struct.s3c24xx_dma_phy* null, %struct.s3c24xx_dma_phy** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %60, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %12
  %21 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %21, i32 0, i32 3
  %23 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %23, i64 %25
  store %struct.s3c24xx_dma_phy* %26, %struct.s3c24xx_dma_phy** %5, align 8
  %27 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %60

32:                                               ; preds = %20
  %33 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %3, align 8
  %34 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %35 = call i32 @s3c24xx_dma_phy_valid(%struct.s3c24xx_dma_chan* %33, %struct.s3c24xx_dma_phy* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %60

38:                                               ; preds = %32
  %39 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %39, i32 0, i32 3
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %44 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %43, i32 0, i32 0
  %45 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %44, align 8
  %46 = icmp ne %struct.s3c24xx_dma_chan* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %3, align 8
  %49 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %50 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %49, i32 0, i32 0
  store %struct.s3c24xx_dma_chan* %48, %struct.s3c24xx_dma_chan** %50, align 8
  %51 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %52 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %51, i32 0, i32 3
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %63

55:                                               ; preds = %38
  %56 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %56, i32 0, i32 3
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %37, %31
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %12

63:                                               ; preds = %47, %12
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.s3c24xx_dma_phy* null, %struct.s3c24xx_dma_phy** %2, align 8
  br label %106

77:                                               ; preds = %63
  %78 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %79 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %86 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clk_enable(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %93 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %97 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  %102 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %101, i32 0, i32 0
  store %struct.s3c24xx_dma_chan* null, %struct.s3c24xx_dma_chan** %102, align 8
  store %struct.s3c24xx_dma_phy* null, %struct.s3c24xx_dma_phy** %2, align 8
  br label %106

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %5, align 8
  store %struct.s3c24xx_dma_phy* %105, %struct.s3c24xx_dma_phy** %2, align 8
  br label %106

106:                                              ; preds = %104, %91, %71
  %107 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %2, align 8
  ret %struct.s3c24xx_dma_phy* %107
}

declare dso_local i32 @s3c24xx_dma_phy_valid(%struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_phy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
