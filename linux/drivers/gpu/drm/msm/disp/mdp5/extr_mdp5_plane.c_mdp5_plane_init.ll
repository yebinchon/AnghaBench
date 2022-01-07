; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp5_plane = type { i32, i32, %struct.drm_plane }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp5_plane_funcs = common dso_local global i32 0, align 4
@mdp5_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane* @mdp5_plane_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.mdp5_plane*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_plane* null, %struct.drm_plane** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mdp5_plane* @kzalloc(i32 12, i32 %9)
  store %struct.mdp5_plane* %10, %struct.mdp5_plane** %7, align 8
  %11 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %12 = icmp ne %struct.mdp5_plane* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %18 = getelementptr inbounds %struct.mdp5_plane, %struct.mdp5_plane* %17, i32 0, i32 2
  store %struct.drm_plane* %18, %struct.drm_plane** %6, align 8
  %19 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %20 = getelementptr inbounds %struct.mdp5_plane, %struct.mdp5_plane* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %23 = getelementptr inbounds %struct.mdp5_plane, %struct.mdp5_plane* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @mdp_get_formats(i32 %21, i32 %25, i32 0)
  %27 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %28 = getelementptr inbounds %struct.mdp5_plane, %struct.mdp5_plane* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %31 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %32 = getelementptr inbounds %struct.mdp5_plane, %struct.mdp5_plane* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mdp5_plane*, %struct.mdp5_plane** %7, align 8
  %35 = getelementptr inbounds %struct.mdp5_plane, %struct.mdp5_plane* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @drm_universal_plane_init(%struct.drm_device* %29, %struct.drm_plane* %30, i32 255, i32* @mdp5_plane_funcs, i32 %33, i32 %36, i32* null, i32 %37, i32* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  br label %52

42:                                               ; preds = %16
  %43 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %44 = call i32 @drm_plane_helper_add(%struct.drm_plane* %43, i32* @mdp5_plane_helper_funcs)
  %45 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %46 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %47 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %46, i32 0, i32 0
  %48 = call i32 @mdp5_plane_install_properties(%struct.drm_plane* %45, i32* %47)
  %49 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %50 = call i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane* %49)
  %51 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  store %struct.drm_plane* %51, %struct.drm_plane** %3, align 8
  br label %61

52:                                               ; preds = %41, %13
  %53 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %54 = icmp ne %struct.drm_plane* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %57 = call i32 @mdp5_plane_destroy(%struct.drm_plane* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.drm_plane* @ERR_PTR(i32 %59)
  store %struct.drm_plane* %60, %struct.drm_plane** %3, align 8
  br label %61

61:                                               ; preds = %58, %42
  %62 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  ret %struct.drm_plane* %62
}

declare dso_local %struct.mdp5_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @mdp_get_formats(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @mdp5_plane_install_properties(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane*) #1

declare dso_local i32 @mdp5_plane_destroy(%struct.drm_plane*) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
