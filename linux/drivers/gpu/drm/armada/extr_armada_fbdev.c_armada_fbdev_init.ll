; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fbdev.c_armada_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fbdev.c_armada_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.armada_private* }
%struct.armada_private = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@armada_fb_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to initialize drm fb helper\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to add fb connectors\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to set initial config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.armada_private*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.armada_private*, %struct.armada_private** %8, align 8
  store %struct.armada_private* %9, %struct.armada_private** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.drm_fb_helper* @devm_kzalloc(i32 %12, i32 4, i32 %13)
  store %struct.drm_fb_helper* %14, %struct.drm_fb_helper** %5, align 8
  %15 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %16 = icmp ne %struct.drm_fb_helper* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %22 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %23 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %22, i32 0, i32 0
  store %struct.drm_fb_helper* %21, %struct.drm_fb_helper** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %26 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %24, %struct.drm_fb_helper* %25, i32* @armada_fb_helper_funcs)
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %29 = call i32 @drm_fb_helper_init(%struct.drm_device* %27, %struct.drm_fb_helper* %28, i32 1)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %52

34:                                               ; preds = %20
  %35 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %36 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %49

41:                                               ; preds = %34
  %42 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %43 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %42, i32 32)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %46, %39
  %50 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %51 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %50)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %54 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %53, i32 0, i32 0
  store %struct.drm_fb_helper* null, %struct.drm_fb_helper** %54, align 8
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %48, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.drm_fb_helper* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
