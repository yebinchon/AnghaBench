; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.atmel_hlcdc_dc_commit = type { i32, %struct.drm_atomic_state*, %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_hlcdc_dc_atomic_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_atomic_state*, i32)* @atmel_hlcdc_dc_atomic_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_dc_atomic_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_hlcdc_dc*, align 8
  %9 = alloca %struct.atmel_hlcdc_dc_commit*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %12, align 8
  store %struct.atmel_hlcdc_dc* %13, %struct.atmel_hlcdc_dc** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %16 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %14, %struct.drm_atomic_state* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %102

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.atmel_hlcdc_dc_commit* @kzalloc(i32 24, i32 %22)
  store %struct.atmel_hlcdc_dc_commit* %23, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %24 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %25 = icmp ne %struct.atmel_hlcdc_dc_commit* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %97

29:                                               ; preds = %21
  %30 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_dc_commit, %struct.atmel_hlcdc_dc_commit* %30, i32 0, i32 0
  %32 = load i32, i32* @atmel_hlcdc_dc_atomic_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %36 = getelementptr inbounds %struct.atmel_hlcdc_dc_commit, %struct.atmel_hlcdc_dc_commit* %35, i32 0, i32 2
  store %struct.drm_device* %34, %struct.drm_device** %36, align 8
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %38 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %39 = getelementptr inbounds %struct.atmel_hlcdc_dc_commit, %struct.atmel_hlcdc_dc_commit* %38, i32 0, i32 1
  store %struct.drm_atomic_state* %37, %struct.drm_atomic_state** %39, align 8
  %40 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %8, align 8
  %41 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %8, align 8
  %46 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %8, align 8
  %49 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wait_event_interruptible_locked(i32 %56, i32 %54)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %29
  %61 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %8, align 8
  %62 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %29
  %65 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %8, align 8
  %66 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %94

73:                                               ; preds = %64
  %74 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %75 = call i64 @drm_atomic_helper_swap_state(%struct.drm_atomic_state* %74, i32 0)
  %76 = icmp slt i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %80 = call i32 @drm_atomic_state_get(%struct.drm_atomic_state* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %8, align 8
  %85 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %88 = getelementptr inbounds %struct.atmel_hlcdc_dc_commit, %struct.atmel_hlcdc_dc_commit* %87, i32 0, i32 0
  %89 = call i32 @queue_work(i32 %86, i32* %88)
  br label %93

90:                                               ; preds = %73
  %91 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %92 = call i32 @atmel_hlcdc_dc_atomic_complete(%struct.atmel_hlcdc_dc_commit* %91)
  br label %93

93:                                               ; preds = %90, %83
  store i32 0, i32* %4, align 4
  br label %102

94:                                               ; preds = %72
  %95 = load %struct.atmel_hlcdc_dc_commit*, %struct.atmel_hlcdc_dc_commit** %9, align 8
  %96 = call i32 @kfree(%struct.atmel_hlcdc_dc_commit* %95)
  br label %97

97:                                               ; preds = %94, %26
  %98 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %99 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %100 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %98, %struct.drm_atomic_state* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %93, %19
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @drm_atomic_helper_prepare_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local %struct.atmel_hlcdc_dc_commit* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wait_event_interruptible_locked(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @drm_atomic_helper_swap_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_state_get(%struct.drm_atomic_state*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @atmel_hlcdc_dc_atomic_complete(%struct.atmel_hlcdc_dc_commit*) #1

declare dso_local i32 @kfree(%struct.atmel_hlcdc_dc_commit*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
