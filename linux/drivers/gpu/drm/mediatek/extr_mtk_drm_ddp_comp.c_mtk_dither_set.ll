; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_dither_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_dither_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }

@MTK_MIN_BPC = common dso_local global i32 0, align 4
@DISP_DITHER_5 = common dso_local global i64 0, align 8
@DISP_DITHER_7 = common dso_local global i64 0, align 8
@MTK_MAX_BPC = common dso_local global i64 0, align 8
@DITHER_NEW_BIT_MODE = common dso_local global i32 0, align 4
@DISP_DITHER_15 = common dso_local global i64 0, align 8
@DISP_DITHER_16 = common dso_local global i64 0, align 8
@DISP_DITHERING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_dither_set(%struct.mtk_ddp_comp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %83

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MTK_MIN_BPC, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DISP_DITHER_5, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DISP_DITHER_7, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load i64, i64* @MTK_MAX_BPC, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = call i32 @DITHER_LSB_ERR_SHIFT_R(i64 %30)
  %32 = load i64, i64* @MTK_MAX_BPC, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = call i32 @DITHER_ADD_LSHIFT_R(i64 %35)
  %37 = or i32 %31, %36
  %38 = load i32, i32* @DITHER_NEW_BIT_MODE, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DISP_DITHER_15, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i64, i64* @MTK_MAX_BPC, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  %50 = call i32 @DITHER_LSB_ERR_SHIFT_B(i64 %49)
  %51 = load i64, i64* @MTK_MAX_BPC, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = call i32 @DITHER_ADD_LSHIFT_B(i64 %54)
  %56 = or i32 %50, %55
  %57 = load i64, i64* @MTK_MAX_BPC, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = call i32 @DITHER_LSB_ERR_SHIFT_G(i64 %60)
  %62 = or i32 %56, %61
  %63 = load i64, i64* @MTK_MAX_BPC, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = call i32 @DITHER_ADD_LSHIFT_G(i64 %66)
  %68 = or i32 %62, %67
  %69 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DISP_DITHER_16, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* @DISP_DITHERING, align 4
  %76 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @writel(i32 %75, i64 %81)
  br label %83

83:                                               ; preds = %9, %14, %10
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DITHER_LSB_ERR_SHIFT_R(i64) #1

declare dso_local i32 @DITHER_ADD_LSHIFT_R(i64) #1

declare dso_local i32 @DITHER_LSB_ERR_SHIFT_B(i64) #1

declare dso_local i32 @DITHER_ADD_LSHIFT_B(i64) #1

declare dso_local i32 @DITHER_LSB_ERR_SHIFT_G(i64) #1

declare dso_local i32 @DITHER_ADD_LSHIFT_G(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
