; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_plane_state = type { i32 }
%struct.sun8i_ui_layer = type { i32, i32, %struct.sun8i_mixer* }
%struct.sun8i_mixer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @sun8i_ui_layer_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_ui_layer_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.sun8i_ui_layer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun8i_mixer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = call %struct.sun8i_ui_layer* @plane_to_sun8i_ui_layer(%struct.drm_plane* %9)
  store %struct.sun8i_ui_layer* %10, %struct.sun8i_ui_layer** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %20 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %19, i32 0, i32 2
  %21 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %20, align 8
  store %struct.sun8i_mixer* %21, %struct.sun8i_mixer** %8, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %2
  %29 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %8, align 8
  %30 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %31 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %34 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @sun8i_ui_layer_enable(%struct.sun8i_mixer* %29, i32 %32, i32 %35, i32 0, i32 0, i32 %36)
  br label %77

38:                                               ; preds = %2
  %39 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %8, align 8
  %40 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %41 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %44 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sun8i_ui_layer_update_coord(%struct.sun8i_mixer* %39, i32 %42, i32 %45, %struct.drm_plane* %46, i32 %47)
  %49 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %8, align 8
  %50 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %51 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %54 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %57 = call i32 @sun8i_ui_layer_update_formats(%struct.sun8i_mixer* %49, i32 %52, i32 %55, %struct.drm_plane* %56)
  %58 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %8, align 8
  %59 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %60 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %63 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %66 = call i32 @sun8i_ui_layer_update_buffer(%struct.sun8i_mixer* %58, i32 %61, i32 %64, %struct.drm_plane* %65)
  %67 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %8, align 8
  %68 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %69 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %5, align 8
  %72 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @sun8i_ui_layer_enable(%struct.sun8i_mixer* %67, i32 %70, i32 %73, i32 1, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %38, %28
  ret void
}

declare dso_local %struct.sun8i_ui_layer* @plane_to_sun8i_ui_layer(%struct.drm_plane*) #1

declare dso_local i32 @sun8i_ui_layer_enable(%struct.sun8i_mixer*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sun8i_ui_layer_update_coord(%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*, i32) #1

declare dso_local i32 @sun8i_ui_layer_update_formats(%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*) #1

declare dso_local i32 @sun8i_ui_layer_update_buffer(%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
