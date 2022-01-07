; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp4_plane = type { i32, i32, i32, i32, i32, %struct.drm_plane }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pipe_names = common dso_local global i32* null, align 8
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@mdp4_plane_funcs = common dso_local global i32 0, align 4
@mdp4_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane* @mdp4_plane_init(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.mdp4_plane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.drm_plane* null, %struct.drm_plane** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mdp4_plane* @kzalloc(i32 24, i32 %12)
  store %struct.mdp4_plane* %13, %struct.mdp4_plane** %9, align 8
  %14 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %15 = icmp ne %struct.mdp4_plane* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %21 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %20, i32 0, i32 5
  store %struct.drm_plane* %21, %struct.drm_plane** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %24 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** @pipe_names, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %31 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mdp4_pipe_caps(i32 %32)
  %34 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %35 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %37 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %40 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %44 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pipe_supports_yuv(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @mdp_get_formats(i32 %38, i32 %42, i32 %49)
  %51 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %52 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %19
  %56 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  br label %59

57:                                               ; preds = %19
  %58 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %11, align 4
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %63 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %64 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mdp4_plane*, %struct.mdp4_plane** %9, align 8
  %67 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @drm_universal_plane_init(%struct.drm_device* %61, %struct.drm_plane* %62, i32 255, i32* @mdp4_plane_funcs, i32 %65, i32 %68, i32* null, i32 %69, i32* null)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %84

74:                                               ; preds = %59
  %75 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %76 = call i32 @drm_plane_helper_add(%struct.drm_plane* %75, i32* @mdp4_plane_helper_funcs)
  %77 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %78 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %79 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %78, i32 0, i32 0
  %80 = call i32 @mdp4_plane_install_properties(%struct.drm_plane* %77, i32* %79)
  %81 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %82 = call i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane* %81)
  %83 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  store %struct.drm_plane* %83, %struct.drm_plane** %4, align 8
  br label %93

84:                                               ; preds = %73, %16
  %85 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %86 = icmp ne %struct.drm_plane* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %89 = call i32 @mdp4_plane_destroy(%struct.drm_plane* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %10, align 4
  %92 = call %struct.drm_plane* @ERR_PTR(i32 %91)
  store %struct.drm_plane* %92, %struct.drm_plane** %4, align 8
  br label %93

93:                                               ; preds = %90, %74
  %94 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  ret %struct.drm_plane* %94
}

declare dso_local %struct.mdp4_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @mdp4_pipe_caps(i32) #1

declare dso_local i32 @mdp_get_formats(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pipe_supports_yuv(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @mdp4_plane_install_properties(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane*) #1

declare dso_local i32 @mdp4_plane_destroy(%struct.drm_plane*) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
