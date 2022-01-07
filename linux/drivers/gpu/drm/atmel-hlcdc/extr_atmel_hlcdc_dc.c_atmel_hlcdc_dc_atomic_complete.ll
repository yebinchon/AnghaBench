; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_atomic_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_atomic_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_dc_commit = type { %struct.drm_atomic_state*, %struct.drm_device* }
%struct.drm_atomic_state = type { i32 }
%struct.drm_device = type { %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_dc_commit*)* @atmel_hlcdc_dc_atomic_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_dc_atomic_complete(%struct.atmel_hlcdc_dc_commit* %0) #0 {
  %2 = alloca %struct.atmel_hlcdc_dc_commit*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.atmel_hlcdc_dc*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  store %struct.atmel_hlcdc_dc_commit* %0, %struct.atmel_hlcdc_dc_commit** %2, align 8
  %6 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_hlcdc_dc_commit, %struct.atmel_hlcdc_dc_commit* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %10, align 8
  store %struct.atmel_hlcdc_dc* %11, %struct.atmel_hlcdc_dc** %4, align 8
  %12 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %2, align 8
  %13 = getelementptr inbounds %struct.atmel_hlcdc_dc_commit, %struct.atmel_hlcdc_dc_commit* %12, i32 0, i32 0
  %14 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %13, align 8
  store %struct.drm_atomic_state* %14, %struct.drm_atomic_state** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %17 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %15, %struct.drm_atomic_state* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %20 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %18, %struct.drm_atomic_state* %19, i32 0)
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %23 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %21, %struct.drm_atomic_state* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %26 = call i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device* %24, %struct.drm_atomic_state* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %29 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %27, %struct.drm_atomic_state* %28)
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %31 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %30)
  %32 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %38 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = call i32 @wake_up_all_locked(%struct.TYPE_4__* %42)
  %44 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %45 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %2, align 8
  %50 = call i32 @kfree(%struct.atmel_hlcdc_dc_commit* %49)
  ret void
}

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_all_locked(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.atmel_hlcdc_dc_commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
