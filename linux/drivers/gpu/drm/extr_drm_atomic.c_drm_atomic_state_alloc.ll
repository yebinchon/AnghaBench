; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_state_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_mode_config*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  store %struct.drm_mode_config* %7, %struct.drm_mode_config** %4, align 8
  %8 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %9 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to %struct.drm_atomic_state* (%struct.drm_device*)**
  %13 = load %struct.drm_atomic_state* (%struct.drm_device*)*, %struct.drm_atomic_state* (%struct.drm_device*)** %12, align 8
  %14 = icmp ne %struct.drm_atomic_state* (%struct.drm_device*)* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.drm_atomic_state* @kzalloc(i32 4, i32 %16)
  store %struct.drm_atomic_state* %17, %struct.drm_atomic_state** %5, align 8
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %19 = icmp ne %struct.drm_atomic_state* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.drm_atomic_state* null, %struct.drm_atomic_state** %2, align 8
  br label %40

21:                                               ; preds = %15
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %24 = call i64 @drm_atomic_state_init(%struct.drm_device* %22, %struct.drm_atomic_state* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %28 = call i32 @kfree(%struct.drm_atomic_state* %27)
  store %struct.drm_atomic_state* null, %struct.drm_atomic_state** %2, align 8
  br label %40

29:                                               ; preds = %21
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  store %struct.drm_atomic_state* %30, %struct.drm_atomic_state** %2, align 8
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %33 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to %struct.drm_atomic_state* (%struct.drm_device*)**
  %37 = load %struct.drm_atomic_state* (%struct.drm_device*)*, %struct.drm_atomic_state* (%struct.drm_device*)** %36, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = call %struct.drm_atomic_state* %37(%struct.drm_device* %38)
  store %struct.drm_atomic_state* %39, %struct.drm_atomic_state** %2, align 8
  br label %40

40:                                               ; preds = %31, %29, %26, %20
  %41 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  ret %struct.drm_atomic_state* %41
}

declare dso_local %struct.drm_atomic_state* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_atomic_state_init(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @kfree(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
