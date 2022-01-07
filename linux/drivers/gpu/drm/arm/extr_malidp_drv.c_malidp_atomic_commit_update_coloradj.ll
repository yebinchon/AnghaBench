; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_atomic_commit_update_coloradj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_atomic_commit_update_coloradj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.drm_crtc_state = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.malidp_crtc_state = type { i32* }

@MALIDP_DISP_FUNC_CADJ = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i32 0, align 4
@MALIDP_COLORADJ_NUM_COEFFS = common dso_local global i32 0, align 4
@MALIDP_COLOR_ADJ_COEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @malidp_atomic_commit_update_coloradj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_atomic_commit_update_coloradj(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.malidp_drm*, align 8
  %6 = alloca %struct.malidp_hw_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.malidp_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc* %9)
  store %struct.malidp_drm* %10, %struct.malidp_drm** %5, align 8
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %12 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %11, i32 0, i32 0
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %12, align 8
  store %struct.malidp_hw_device* %13, %struct.malidp_hw_device** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %30 = load i32, i32* @MALIDP_DISP_FUNC_CADJ, align 4
  %31 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %32 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %29, i32 %30, i32 %31)
  br label %94

33:                                               ; preds = %21
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = call %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.TYPE_14__* %36)
  store %struct.malidp_crtc_state* %37, %struct.malidp_crtc_state** %8, align 8
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %39 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %52 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %50, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %42, %33
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MALIDP_COLORADJ_NUM_COEFFS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %65 = load %struct.malidp_crtc_state*, %struct.malidp_crtc_state** %8, align 8
  %66 = getelementptr inbounds %struct.malidp_crtc_state, %struct.malidp_crtc_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %73 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MALIDP_COLOR_ADJ_COEF, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 4, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %64, i32 %71, i64 %83)
  br label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %42
  %90 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %91 = load i32, i32* @MALIDP_DISP_FUNC_CADJ, align 4
  %92 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %93 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %20, %89, %28
  ret void
}

declare dso_local %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc*) #1

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.TYPE_14__*) #1

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i32, i64) #1

declare dso_local i32 @malidp_hw_setbits(%struct.malidp_hw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
