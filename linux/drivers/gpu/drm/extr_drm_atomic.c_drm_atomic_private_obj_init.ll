; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_private_obj_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_private_obj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_private_obj = type { i32, %struct.drm_private_state_funcs*, %struct.drm_private_state*, i32 }
%struct.drm_private_state = type { i32 }
%struct.drm_private_state_funcs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_private_obj_init(%struct.drm_device* %0, %struct.drm_private_obj* %1, %struct.drm_private_state* %2, %struct.drm_private_state_funcs* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_private_obj*, align 8
  %7 = alloca %struct.drm_private_state*, align 8
  %8 = alloca %struct.drm_private_state_funcs*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_private_obj* %1, %struct.drm_private_obj** %6, align 8
  store %struct.drm_private_state* %2, %struct.drm_private_state** %7, align 8
  store %struct.drm_private_state_funcs* %3, %struct.drm_private_state_funcs** %8, align 8
  %9 = load %struct.drm_private_obj*, %struct.drm_private_obj** %6, align 8
  %10 = call i32 @memset(%struct.drm_private_obj* %9, i32 0, i32 32)
  %11 = load %struct.drm_private_obj*, %struct.drm_private_obj** %6, align 8
  %12 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %11, i32 0, i32 3
  %13 = call i32 @drm_modeset_lock_init(i32* %12)
  %14 = load %struct.drm_private_state*, %struct.drm_private_state** %7, align 8
  %15 = load %struct.drm_private_obj*, %struct.drm_private_obj** %6, align 8
  %16 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %15, i32 0, i32 2
  store %struct.drm_private_state* %14, %struct.drm_private_state** %16, align 8
  %17 = load %struct.drm_private_state_funcs*, %struct.drm_private_state_funcs** %8, align 8
  %18 = load %struct.drm_private_obj*, %struct.drm_private_obj** %6, align 8
  %19 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %18, i32 0, i32 1
  store %struct.drm_private_state_funcs* %17, %struct.drm_private_state_funcs** %19, align 8
  %20 = load %struct.drm_private_obj*, %struct.drm_private_obj** %6, align 8
  %21 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %21, i32* %24)
  ret void
}

declare dso_local i32 @memset(%struct.drm_private_obj*, i32, i32) #1

declare dso_local i32 @drm_modeset_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
