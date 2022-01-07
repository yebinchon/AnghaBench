; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.atmel_hlcdc_crtc_state = type { %struct.TYPE_3__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @atmel_hlcdc_crtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_crtc_reset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.atmel_hlcdc_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @__drm_atomic_helper_crtc_destroy_state(%struct.TYPE_3__* %11)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call %struct.atmel_hlcdc_crtc_state* @drm_crtc_state_to_atmel_hlcdc_crtc_state(%struct.TYPE_3__* %15)
  store %struct.atmel_hlcdc_crtc_state* %16, %struct.atmel_hlcdc_crtc_state** %3, align 8
  %17 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %3, align 8
  %18 = call i32 @kfree(%struct.atmel_hlcdc_crtc_state* %17)
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %20, align 8
  br label %21

21:                                               ; preds = %8, %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.atmel_hlcdc_crtc_state* @kzalloc(i32 8, i32 %22)
  store %struct.atmel_hlcdc_crtc_state* %23, %struct.atmel_hlcdc_crtc_state** %3, align 8
  %24 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %3, align 8
  %25 = icmp ne %struct.atmel_hlcdc_crtc_state* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %3, align 8
  %28 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, %struct.atmel_hlcdc_crtc_state* %27, i32 0, i32 0
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.drm_crtc* %31, %struct.drm_crtc** %35, align 8
  br label %36

36:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @__drm_atomic_helper_crtc_destroy_state(%struct.TYPE_3__*) #1

declare dso_local %struct.atmel_hlcdc_crtc_state* @drm_crtc_state_to_atmel_hlcdc_crtc_state(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.atmel_hlcdc_crtc_state*) #1

declare dso_local %struct.atmel_hlcdc_crtc_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
