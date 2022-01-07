; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_set_property_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_set_property_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_property = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_atomic_state = type { %struct.TYPE_4__*, %struct.drm_modeset_acquire_ctx* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_property* }
%struct.drm_modeset_acquire_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_object*, %struct.drm_file*, %struct.drm_property*, i32)* @set_property_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_property_atomic(%struct.drm_mode_object* %0, %struct.drm_file* %1, %struct.drm_property* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_mode_object*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_atomic_state*, align 8
  %12 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %13 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %15 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %10, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %18 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device* %17)
  store %struct.drm_atomic_state* %18, %struct.drm_atomic_state** %11, align 8
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %20 = icmp ne %struct.drm_atomic_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %4
  %25 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %12, i32 0)
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %27 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %26, i32 0, i32 1
  store %struct.drm_modeset_acquire_ctx* %12, %struct.drm_modeset_acquire_ctx** %27, align 8
  br label %28

28:                                               ; preds = %71, %24
  %29 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %31 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.drm_property*, %struct.drm_property** %34, align 8
  %36 = icmp eq %struct.drm_property* %29, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %39 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DRM_MODE_OBJECT_CONNECTOR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %66

46:                                               ; preds = %37
  %47 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %49 = call i32 @obj_to_connector(%struct.drm_mode_object* %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @drm_atomic_connector_commit_dpms(%struct.drm_atomic_state* %47, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  br label %65

52:                                               ; preds = %28
  %53 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %54 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %55 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %56 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @drm_atomic_set_property(%struct.drm_atomic_state* %53, %struct.drm_file* %54, %struct.drm_mode_object* %55, %struct.drm_property* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %64 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %46
  br label %66

66:                                               ; preds = %65, %61, %43
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @EDEADLK, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %73 = call i32 @drm_atomic_state_clear(%struct.drm_atomic_state* %72)
  %74 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %12)
  br label %28

75:                                               ; preds = %66
  %76 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %11, align 8
  %77 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %76)
  %78 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %12)
  %79 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %12)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %75, %21
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device*) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @drm_atomic_connector_commit_dpms(%struct.drm_atomic_state*, i32, i32) #1

declare dso_local i32 @obj_to_connector(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_atomic_set_property(%struct.drm_atomic_state*, %struct.drm_file*, %struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_clear(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
