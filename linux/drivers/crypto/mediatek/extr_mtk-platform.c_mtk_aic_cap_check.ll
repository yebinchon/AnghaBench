; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_aic_cap_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_aic_cap_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i64 }

@MTK_RING_MAX = common dso_local global i32 0, align 4
@AIC_G_VERSION = common dso_local global i64 0, align 8
@MTK_AIC_VER_MSK = common dso_local global i32 0, align 4
@MTK_AIC_VER11 = common dso_local global i32 0, align 4
@MTK_AIC_VER12 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AIC_G_OPTIONS = common dso_local global i64 0, align 8
@MTK_AIC_INT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, i32)* @mtk_aic_cap_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aic_cap_check(%struct.mtk_cryp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MTK_RING_MAX, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AIC_G_VERSION, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @AIC_VERSION(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %17, %10
  %26 = load i32, i32* @MTK_AIC_VER_MSK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MTK_AIC_VER11, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MTK_AIC_VER12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MTK_RING_MAX, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AIC_G_OPTIONS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %6, align 4
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @AIC_OPTIONS(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %43
  %59 = load i32, i32* @MTK_AIC_INT_MSK, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 32
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @AIC_VERSION(i32) #1

declare dso_local i64 @AIC_OPTIONS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
