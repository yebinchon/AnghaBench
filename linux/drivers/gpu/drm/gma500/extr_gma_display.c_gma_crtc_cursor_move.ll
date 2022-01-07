; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_cursor_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_cursor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_crtc = type { i32, i32 }

@CURSOR_POS_SIGN = common dso_local global i32 0, align 4
@CURSOR_X_SHIFT = common dso_local global i32 0, align 4
@CURSOR_Y_SHIFT = common dso_local global i32 0, align 4
@CURSOR_POS_MASK = common dso_local global i32 0, align 4
@CURAPOS = common dso_local global i32 0, align 4
@CURBPOS = common dso_local global i32 0, align 4
@CURABASE = common dso_local global i32 0, align 4
@CURBBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_crtc_cursor_move(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.gma_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %16 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %15)
  store %struct.gma_crtc* %16, %struct.gma_crtc** %8, align 8
  %17 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %18 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @CURSOR_POS_SIGN, align 4
  %24 = load i32, i32* @CURSOR_X_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* @CURSOR_POS_SIGN, align 4
  %35 = load i32, i32* @CURSOR_Y_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CURSOR_POS_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CURSOR_X_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CURSOR_POS_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CURSOR_Y_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %57 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %60 = call i64 @gma_power_begin(%struct.drm_device* %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %41
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @CURAPOS, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @CURBPOS, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @REG_WRITE(i32 %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @CURABASE, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @CURBBASE, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @REG_WRITE(i32 %80, i32 %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %84 = call i32 @gma_power_end(%struct.drm_device* %83)
  br label %85

85:                                               ; preds = %79, %41
  ret i32 0
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
