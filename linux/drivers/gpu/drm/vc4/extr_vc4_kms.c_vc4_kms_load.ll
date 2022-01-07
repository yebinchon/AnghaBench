; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_kms_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_kms_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.vc4_dev = type { i32, i32, i32, i32, i32 }
%struct.vc4_ctm_state = type { i32 }
%struct.vc4_load_tracker_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@vc4_mode_funcs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_ctm_state_funcs = common dso_local global i32 0, align 4
@vc4_load_tracker_state_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_kms_load(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_ctm_state*, align 8
  %6 = alloca %struct.vc4_load_tracker_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %8)
  store %struct.vc4_dev* %9, %struct.vc4_dev** %4, align 8
  %10 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %12, i32 0, i32 4
  %14 = call i32 @sema_init(i32* %13, i32 1)
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @drm_vblank_init(%struct.drm_device* %19, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %92

33:                                               ; preds = %1
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 2048, i32* %36, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 2048, i32* %39, align 4
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i32* @vc4_mode_funcs, i32** %42, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 24, i32* %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %53 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %52, i32 0, i32 3
  %54 = call i32 @drm_modeset_lock_init(i32* %53)
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 4, i32 %55)
  %57 = bitcast i8* %56 to %struct.vc4_ctm_state*
  store %struct.vc4_ctm_state* %57, %struct.vc4_ctm_state** %5, align 8
  %58 = load %struct.vc4_ctm_state*, %struct.vc4_ctm_state** %5, align 8
  %59 = icmp ne %struct.vc4_ctm_state* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %33
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %92

63:                                               ; preds = %33
  %64 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %65 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %66 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %65, i32 0, i32 2
  %67 = load %struct.vc4_ctm_state*, %struct.vc4_ctm_state** %5, align 8
  %68 = getelementptr inbounds %struct.vc4_ctm_state, %struct.vc4_ctm_state* %67, i32 0, i32 0
  %69 = call i32 @drm_atomic_private_obj_init(%struct.drm_device* %64, i32* %66, i32* %68, i32* @vc4_ctm_state_funcs)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kzalloc(i32 4, i32 %70)
  %72 = bitcast i8* %71 to %struct.vc4_load_tracker_state*
  store %struct.vc4_load_tracker_state* %72, %struct.vc4_load_tracker_state** %6, align 8
  %73 = load %struct.vc4_load_tracker_state*, %struct.vc4_load_tracker_state** %6, align 8
  %74 = icmp ne %struct.vc4_load_tracker_state* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %77 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %76, i32 0, i32 2
  %78 = call i32 @drm_atomic_private_obj_fini(i32* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %92

81:                                               ; preds = %63
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %84 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %83, i32 0, i32 1
  %85 = load %struct.vc4_load_tracker_state*, %struct.vc4_load_tracker_state** %6, align 8
  %86 = getelementptr inbounds %struct.vc4_load_tracker_state, %struct.vc4_load_tracker_state* %85, i32 0, i32 0
  %87 = call i32 @drm_atomic_private_obj_init(%struct.drm_device* %82, i32* %84, i32* %86, i32* @vc4_load_tracker_state_funcs)
  %88 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %89 = call i32 @drm_mode_config_reset(%struct.drm_device* %88)
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %81, %75, %60, %27
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_modeset_lock_init(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_atomic_private_obj_init(%struct.drm_device*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_atomic_private_obj_fini(i32*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
