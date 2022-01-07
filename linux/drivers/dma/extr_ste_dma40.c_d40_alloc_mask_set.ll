; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_alloc_mask_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_alloc_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_phy_res = type { i32, i32, i32 }

@D40_ALLOC_FREE = common dso_local global i32 0, align 4
@D40_ALLOC_PHY = common dso_local global i8* null, align 8
@D40_ALLOC_LOG_FREE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_phy_res*, i32, i32, i32, i32*)* @d40_alloc_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_alloc_mask_set(%struct.d40_phy_res* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.d40_phy_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.d40_phy_res* %0, %struct.d40_phy_res** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %14 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %13, i32 0, i32 2
  %15 = load i64, i64* %12, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %18 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %21 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = load i32, i32* @D40_ALLOC_FREE, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %5
  %31 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %32 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @D40_ALLOC_FREE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %38 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @D40_ALLOC_FREE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i8*, i8** @D40_ALLOC_PHY, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %46 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** @D40_ALLOC_PHY, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %50 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %133

51:                                               ; preds = %36, %30
  br label %128

52:                                               ; preds = %5
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %57 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8*, i8** @D40_ALLOC_PHY, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %128

64:                                               ; preds = %55
  %65 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %66 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @D40_ALLOC_FREE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i8*, i8** @D40_ALLOC_LOG_FREE, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %74 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %77 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %87 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %133

90:                                               ; preds = %75
  br label %128

91:                                               ; preds = %52
  %92 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %93 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** @D40_ALLOC_PHY, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %128

100:                                              ; preds = %91
  %101 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %102 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @D40_ALLOC_FREE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i8*, i8** @D40_ALLOC_LOG_FREE, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %110 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %100
  %112 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %113 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @BIT(i32 %115)
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @BIT(i32 %120)
  %122 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %123 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %133

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %99, %90, %63, %51
  %129 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %130 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %129, i32 0, i32 2
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  store i32 0, i32* %6, align 4
  br label %138

133:                                              ; preds = %119, %83, %42
  %134 = load %struct.d40_phy_res*, %struct.d40_phy_res** %7, align 8
  %135 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %134, i32 0, i32 2
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  store i32 1, i32* %6, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
