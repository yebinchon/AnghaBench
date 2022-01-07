; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_backend_layer_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_backend_layer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sun4i_layer = type { i32 }
%struct.sun4i_layer_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @sun4i_backend_layer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_backend_layer_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.sun4i_layer*, align 8
  %4 = alloca %struct.sun4i_layer_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = call %struct.sun4i_layer* @plane_to_sun4i_layer(%struct.drm_plane* %5)
  store %struct.sun4i_layer* %6, %struct.sun4i_layer** %3, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.sun4i_layer_state* @state_to_sun4i_layer_state(%struct.TYPE_2__* %14)
  store %struct.sun4i_layer_state* %15, %struct.sun4i_layer_state** %4, align 8
  %16 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_layer_state, %struct.sun4i_layer_state* %16, i32 0, i32 0
  %18 = call i32 @__drm_atomic_helper_plane_destroy_state(i32* %17)
  %19 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %4, align 8
  %20 = call i32 @kfree(%struct.sun4i_layer_state* %19)
  %21 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %22, align 8
  br label %23

23:                                               ; preds = %11, %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sun4i_layer_state* @kzalloc(i32 4, i32 %24)
  store %struct.sun4i_layer_state* %25, %struct.sun4i_layer_state** %4, align 8
  %26 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %4, align 8
  %27 = icmp ne %struct.sun4i_layer_state* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %30 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %4, align 8
  %31 = getelementptr inbounds %struct.sun4i_layer_state, %struct.sun4i_layer_state* %30, i32 0, i32 0
  %32 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %29, i32* %31)
  %33 = load %struct.sun4i_layer*, %struct.sun4i_layer** %3, align 8
  %34 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %37 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %28, %23
  ret void
}

declare dso_local %struct.sun4i_layer* @plane_to_sun4i_layer(%struct.drm_plane*) #1

declare dso_local %struct.sun4i_layer_state* @state_to_sun4i_layer_state(%struct.TYPE_2__*) #1

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(i32*) #1

declare dso_local i32 @kfree(%struct.sun4i_layer_state*) #1

declare dso_local %struct.sun4i_layer_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
