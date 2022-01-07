; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_plane_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_plane* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_disable_plane(%struct.drm_plane* %0, %struct.drm_modeset_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %11)
  store %struct.drm_atomic_state* %12, %struct.drm_atomic_state** %6, align 8
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %14 = icmp ne %struct.drm_atomic_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %20, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %19, %struct.drm_modeset_acquire_ctx** %21, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %23 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %24 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %22, %struct.drm_plane* %23)
  store %struct.drm_plane_state* %24, %struct.drm_plane_state** %7, align 8
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %26 = call i64 @IS_ERR(%struct.drm_plane_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.drm_plane_state* %29)
  store i32 %30, i32* %8, align 4
  br label %59

31:                                               ; preds = %18
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.drm_plane*, %struct.drm_plane** %40, align 8
  %42 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %43 = icmp eq %struct.drm_plane* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %46 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %36, %31
  %50 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %52 = call i32 @__drm_atomic_helper_disable_plane(%struct.drm_plane* %50, %struct.drm_plane_state* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %58 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %55, %28
  %60 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %61 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @__drm_atomic_helper_disable_plane(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
