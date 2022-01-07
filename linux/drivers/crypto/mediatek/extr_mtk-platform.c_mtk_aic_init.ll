; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_aic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_aic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i64 }

@MTK_RING_MAX = common dso_local global i32 0, align 4
@AIC_G_ENABLE_CTRL = common dso_local global i64 0, align 8
@AIC_G_POL_CTRL = common dso_local global i64 0, align 8
@AIC_G_TYPE_CTRL = common dso_local global i64 0, align 8
@AIC_G_ENABLE_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, i32)* @mtk_aic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aic_init(%struct.mtk_cryp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mtk_aic_cap_check(%struct.mtk_cryp* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MTK_RING_MAX, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AIC_G_ENABLE_CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 0, i64 %23)
  %25 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AIC_G_POL_CTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AIC_G_TYPE_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 0, i64 %35)
  %37 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AIC_G_ENABLE_SET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 0, i64 %41)
  br label %72

43:                                               ; preds = %14
  %44 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @AIC_ENABLE_CTRL(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @AIC_POL_CTRL(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %59 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @AIC_TYPE_CTRL(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @writel(i32 0, i64 %63)
  %65 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %66 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @AIC_ENABLE_SET(i32 %68)
  %70 = add nsw i64 %67, %69
  %71 = call i32 @writel(i32 0, i64 %70)
  br label %72

72:                                               ; preds = %43, %18
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mtk_aic_cap_check(%struct.mtk_cryp*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @AIC_ENABLE_CTRL(i32) #1

declare dso_local i64 @AIC_POL_CTRL(i32) #1

declare dso_local i64 @AIC_TYPE_CTRL(i32) #1

declare dso_local i64 @AIC_ENABLE_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
