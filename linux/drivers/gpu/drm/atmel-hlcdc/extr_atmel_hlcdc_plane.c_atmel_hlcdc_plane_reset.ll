; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.atmel_hlcdc_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate initial plane state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @atmel_hlcdc_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(i32* %11)
  store %struct.atmel_hlcdc_plane_state* %12, %struct.atmel_hlcdc_plane_state** %3, align 8
  %13 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @drm_framebuffer_put(i64 %22)
  br label %24

24:                                               ; preds = %18, %8
  %25 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %26 = call i32 @kfree(%struct.atmel_hlcdc_plane_state* %25)
  %27 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.atmel_hlcdc_plane_state* @kzalloc(i32 8, i32 %30)
  store %struct.atmel_hlcdc_plane_state* %31, %struct.atmel_hlcdc_plane_state** %3, align 8
  %32 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %33 = icmp ne %struct.atmel_hlcdc_plane_state* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %36 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %37 = call i64 @atmel_hlcdc_plane_alloc_dscrs(%struct.drm_plane* %35, %struct.atmel_hlcdc_plane_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %41 = call i32 @kfree(%struct.atmel_hlcdc_plane_state* %40)
  %42 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %43 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %53

48:                                               ; preds = %34
  %49 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %50 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %3, align 8
  %51 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %50, i32 0, i32 0
  %52 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %49, %struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %39, %48, %29
  ret void
}

declare dso_local %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(i32*) #1

declare dso_local i32 @drm_framebuffer_put(i64) #1

declare dso_local i32 @kfree(%struct.atmel_hlcdc_plane_state*) #1

declare dso_local %struct.atmel_hlcdc_plane_state* @kzalloc(i32, i32) #1

declare dso_local i64 @atmel_hlcdc_plane_alloc_dscrs(%struct.drm_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
