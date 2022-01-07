; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fsl_dcu_drm_device* }
%struct.fsl_dcu_drm_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_gem_cma_object = type { i32 }

@DCU_LAYER_AB_NONE = common dso_local global i32 0, align 4
@FSL_DCU_RGB565 = common dso_local global i32 0, align 4
@FSL_DCU_RGB888 = common dso_local global i32 0, align 4
@DCU_LAYER_AB_WHOLE_FRAME = common dso_local global i32 0, align 4
@FSL_DCU_ARGB8888 = common dso_local global i32 0, align 4
@FSL_DCU_ARGB4444 = common dso_local global i32 0, align 4
@FSL_DCU_ARGB1555 = common dso_local global i32 0, align 4
@FSL_DCU_YUV422 = common dso_local global i32 0, align 4
@DCU_LAYER_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ls1021a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @fsl_dcu_drm_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dcu_drm_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.fsl_dcu_drm_device*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_gem_cma_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %15, align 8
  store %struct.fsl_dcu_drm_device* %16, %struct.fsl_dcu_drm_device** %5, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %18, align 8
  store %struct.drm_plane_state* %19, %struct.drm_plane_state** %6, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %21, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %7, align 8
  %25 = load i32, i32* @DCU_LAYER_AB_NONE, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %27 = icmp ne %struct.drm_framebuffer* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %176

29:                                               ; preds = %2
  %30 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %31 = call i32 @fsl_dcu_drm_plane_index(%struct.drm_plane* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %176

35:                                               ; preds = %29
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %37 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %36, i32 0)
  store %struct.drm_gem_cma_object* %37, %struct.drm_gem_cma_object** %8, align 8
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %61 [
    i32 133, label %43
    i32 132, label %45
    i32 134, label %47
    i32 129, label %49
    i32 135, label %51
    i32 130, label %53
    i32 136, label %55
    i32 131, label %57
    i32 128, label %59
  ]

43:                                               ; preds = %35
  %44 = load i32, i32* @FSL_DCU_RGB565, align 4
  store i32 %44, i32* %10, align 4
  br label %62

45:                                               ; preds = %35
  %46 = load i32, i32* @FSL_DCU_RGB888, align 4
  store i32 %46, i32* %10, align 4
  br label %62

47:                                               ; preds = %35
  %48 = load i32, i32* @DCU_LAYER_AB_WHOLE_FRAME, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %35, %47
  %50 = load i32, i32* @FSL_DCU_ARGB8888, align 4
  store i32 %50, i32* %10, align 4
  br label %62

51:                                               ; preds = %35
  %52 = load i32, i32* @DCU_LAYER_AB_WHOLE_FRAME, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %35, %51
  %54 = load i32, i32* @FSL_DCU_ARGB4444, align 4
  store i32 %54, i32* %10, align 4
  br label %62

55:                                               ; preds = %35
  %56 = load i32, i32* @DCU_LAYER_AB_WHOLE_FRAME, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %35, %55
  %58 = load i32, i32* @FSL_DCU_ARGB1555, align 4
  store i32 %58, i32* %10, align 4
  br label %62

59:                                               ; preds = %35
  %60 = load i32, i32* @FSL_DCU_YUV422, align 4
  store i32 %60, i32* %10, align 4
  br label %62

61:                                               ; preds = %35
  br label %176

62:                                               ; preds = %59, %57, %53, %49, %45, %43
  %63 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %64 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @DCU_CTRLDESCLN(i32 %66, i32 1)
  %68 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %69 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DCU_LAYER_HEIGHT(i32 %70)
  %72 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %73 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DCU_LAYER_WIDTH(i32 %74)
  %76 = or i32 %71, %75
  %77 = call i32 @regmap_write(i32 %65, i32 %67, i32 %76)
  %78 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %79 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @DCU_CTRLDESCLN(i32 %81, i32 2)
  %83 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %84 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DCU_LAYER_POSY(i32 %85)
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %88 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @DCU_LAYER_POSX(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @regmap_write(i32 %80, i32 %82, i32 %91)
  %93 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %94 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @DCU_CTRLDESCLN(i32 %96, i32 3)
  %98 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %99 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @regmap_write(i32 %95, i32 %97, i32 %100)
  %102 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %103 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @DCU_CTRLDESCLN(i32 %105, i32 4)
  %107 = load i32, i32* @DCU_LAYER_EN, align 4
  %108 = call i32 @DCU_LAYER_TRANS(i32 255)
  %109 = or i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @DCU_LAYER_BPP(i32 %110)
  %112 = or i32 %109, %111
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @regmap_write(i32 %104, i32 %106, i32 %114)
  %116 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %117 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @DCU_CTRLDESCLN(i32 %119, i32 5)
  %121 = call i32 @DCU_LAYER_CKMAX_R(i32 255)
  %122 = call i32 @DCU_LAYER_CKMAX_G(i32 255)
  %123 = or i32 %121, %122
  %124 = call i32 @DCU_LAYER_CKMAX_B(i32 255)
  %125 = or i32 %123, %124
  %126 = call i32 @regmap_write(i32 %118, i32 %120, i32 %125)
  %127 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %128 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @DCU_CTRLDESCLN(i32 %130, i32 6)
  %132 = call i32 @DCU_LAYER_CKMIN_R(i32 0)
  %133 = call i32 @DCU_LAYER_CKMIN_G(i32 0)
  %134 = or i32 %132, %133
  %135 = call i32 @DCU_LAYER_CKMIN_B(i32 0)
  %136 = or i32 %134, %135
  %137 = call i32 @regmap_write(i32 %129, i32 %131, i32 %136)
  %138 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %139 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @DCU_CTRLDESCLN(i32 %141, i32 7)
  %143 = call i32 @regmap_write(i32 %140, i32 %142, i32 0)
  %144 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %145 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @DCU_CTRLDESCLN(i32 %147, i32 8)
  %149 = call i32 @DCU_LAYER_FG_FCOLOR(i32 0)
  %150 = call i32 @regmap_write(i32 %146, i32 %148, i32 %149)
  %151 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %152 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @DCU_CTRLDESCLN(i32 %154, i32 9)
  %156 = call i32 @DCU_LAYER_BG_BCOLOR(i32 0)
  %157 = call i32 @regmap_write(i32 %153, i32 %155, i32 %156)
  %158 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %159 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strcmp(i32 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %62
  %166 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %5, align 8
  %167 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @DCU_CTRLDESCLN(i32 %169, i32 10)
  %171 = call i32 @DCU_LAYER_POST_SKIP(i32 0)
  %172 = call i32 @DCU_LAYER_PRE_SKIP(i32 0)
  %173 = or i32 %171, %172
  %174 = call i32 @regmap_write(i32 %168, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %165, %62
  br label %176

176:                                              ; preds = %175, %61, %34, %28
  ret void
}

declare dso_local i32 @fsl_dcu_drm_plane_index(%struct.drm_plane*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DCU_CTRLDESCLN(i32, i32) #1

declare dso_local i32 @DCU_LAYER_HEIGHT(i32) #1

declare dso_local i32 @DCU_LAYER_WIDTH(i32) #1

declare dso_local i32 @DCU_LAYER_POSY(i32) #1

declare dso_local i32 @DCU_LAYER_POSX(i32) #1

declare dso_local i32 @DCU_LAYER_TRANS(i32) #1

declare dso_local i32 @DCU_LAYER_BPP(i32) #1

declare dso_local i32 @DCU_LAYER_CKMAX_R(i32) #1

declare dso_local i32 @DCU_LAYER_CKMAX_G(i32) #1

declare dso_local i32 @DCU_LAYER_CKMAX_B(i32) #1

declare dso_local i32 @DCU_LAYER_CKMIN_R(i32) #1

declare dso_local i32 @DCU_LAYER_CKMIN_G(i32) #1

declare dso_local i32 @DCU_LAYER_CKMIN_B(i32) #1

declare dso_local i32 @DCU_LAYER_FG_FCOLOR(i32) #1

declare dso_local i32 @DCU_LAYER_BG_BCOLOR(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @DCU_LAYER_POST_SKIP(i32) #1

declare dso_local i32 @DCU_LAYER_PRE_SKIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
