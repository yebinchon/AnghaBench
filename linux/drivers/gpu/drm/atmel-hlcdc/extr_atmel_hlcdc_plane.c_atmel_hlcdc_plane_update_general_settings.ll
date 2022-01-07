; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_general_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_general_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.atmel_hlcdc_layer_desc* }
%struct.atmel_hlcdc_layer_desc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.atmel_hlcdc_plane_state = type { i32, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_format_info* }
%struct.drm_format_info = type { i64, i64 }

@ATMEL_HLCDC_LAYER_DMA_BLEN_INCR16 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB888 = common dso_local global i64 0, align 8
@ATMEL_HLCDC_LAYER_DMA_ROTDIS = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_DMA_CFG = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_DMA = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_REP = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@ATMEL_HLCDC_LAYER_OVR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_ITER2BL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_ITER = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_LAEN = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_GAEN = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_DISCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*)* @atmel_hlcdc_plane_update_general_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_update_general_settings(%struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane_state* %1) #0 {
  %3 = alloca %struct.atmel_hlcdc_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %7 = alloca %struct.drm_format_info*, align 8
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %3, align 8
  store %struct.atmel_hlcdc_plane_state* %1, %struct.atmel_hlcdc_plane_state** %4, align 8
  %8 = load i32, i32* @ATMEL_HLCDC_LAYER_DMA_BLEN_INCR16, align 4
  %9 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %15, align 8
  store %struct.atmel_hlcdc_layer_desc* %16, %struct.atmel_hlcdc_layer_desc** %6, align 8
  %17 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.drm_format_info*, %struct.drm_format_info** %21, align 8
  store %struct.drm_format_info* %22, %struct.drm_format_info** %7, align 8
  %23 = load %struct.drm_format_info*, %struct.drm_format_info** %7, align 8
  %24 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_FORMAT_RGB888, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @ATMEL_HLCDC_LAYER_DMA_ROTDIS, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %33, i32 0, i32 0
  %35 = load i32, i32* @ATMEL_HLCDC_LAYER_DMA_CFG, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_10__* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @ATMEL_HLCDC_LAYER_DMA, align 4
  %39 = load i32, i32* @ATMEL_HLCDC_LAYER_REP, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %42 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %32
  %48 = load i32, i32* @ATMEL_HLCDC_LAYER_OVR, align 4
  %49 = load i32, i32* @ATMEL_HLCDC_LAYER_ITER2BL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ATMEL_HLCDC_LAYER_ITER, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.drm_format_info*, %struct.drm_format_info** %7, align 8
  %56 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, i32* @ATMEL_HLCDC_LAYER_LAEN, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %73

63:                                               ; preds = %47
  %64 = load i32, i32* @ATMEL_HLCDC_LAYER_GAEN, align 4
  %65 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %66 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ATMEL_HLCDC_LAYER_GA(i32 %68)
  %70 = or i32 %64, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %63, %59
  br label %74

74:                                               ; preds = %73, %32
  %75 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %76 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %81 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @ATMEL_HLCDC_LAYER_DISCEN, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %79, %74
  %89 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %90 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %89, i32 0, i32 0
  %91 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %6, align 8
  %92 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_10__* %90, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_GA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
