; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_backend_layer_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_backend_layer_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.sun4i_layer_state = type { i64 }
%struct.sun4i_layer = type { i32, %struct.sun4i_backend* }
%struct.sun4i_backend = type { %struct.sun4i_frontend* }
%struct.sun4i_frontend = type { i32 }

@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @sun4i_backend_layer_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_backend_layer_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.sun4i_layer_state*, align 8
  %6 = alloca %struct.sun4i_layer*, align 8
  %7 = alloca %struct.sun4i_backend*, align 8
  %8 = alloca %struct.sun4i_frontend*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sun4i_layer_state* @state_to_sun4i_layer_state(i32 %11)
  store %struct.sun4i_layer_state* %12, %struct.sun4i_layer_state** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = call %struct.sun4i_layer* @plane_to_sun4i_layer(%struct.drm_plane* %13)
  store %struct.sun4i_layer* %14, %struct.sun4i_layer** %6, align 8
  %15 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %16 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %15, i32 0, i32 1
  %17 = load %struct.sun4i_backend*, %struct.sun4i_backend** %16, align 8
  store %struct.sun4i_backend* %17, %struct.sun4i_backend** %7, align 8
  %18 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %19 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %18, i32 0, i32 0
  %20 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %19, align 8
  store %struct.sun4i_frontend* %20, %struct.sun4i_frontend** %8, align 8
  %21 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %22 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %23 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sun4i_backend_cleanup_layer(%struct.sun4i_backend* %21, i32 %24)
  %26 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %5, align 8
  %27 = getelementptr inbounds %struct.sun4i_layer_state, %struct.sun4i_layer_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %8, align 8
  %32 = call i32 @sun4i_frontend_init(%struct.sun4i_frontend* %31)
  %33 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %8, align 8
  %34 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %35 = call i32 @sun4i_frontend_update_coord(%struct.sun4i_frontend* %33, %struct.drm_plane* %34)
  %36 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %8, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %38 = call i32 @sun4i_frontend_update_buffer(%struct.sun4i_frontend* %36, %struct.drm_plane* %37)
  %39 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %8, align 8
  %40 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %41 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  %42 = call i32 @sun4i_frontend_update_formats(%struct.sun4i_frontend* %39, %struct.drm_plane* %40, i32 %41)
  %43 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %44 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %45 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  %48 = call i32 @sun4i_backend_update_layer_frontend(%struct.sun4i_backend* %43, i32 %46, i32 %47)
  %49 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %8, align 8
  %50 = call i32 @sun4i_frontend_enable(%struct.sun4i_frontend* %49)
  br label %64

51:                                               ; preds = %2
  %52 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %53 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %54 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %57 = call i32 @sun4i_backend_update_layer_formats(%struct.sun4i_backend* %52, i32 %55, %struct.drm_plane* %56)
  %58 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %59 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %60 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %63 = call i32 @sun4i_backend_update_layer_buffer(%struct.sun4i_backend* %58, i32 %61, %struct.drm_plane* %62)
  br label %64

64:                                               ; preds = %51, %30
  %65 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %66 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %67 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %70 = call i32 @sun4i_backend_update_layer_coord(%struct.sun4i_backend* %65, i32 %68, %struct.drm_plane* %69)
  %71 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %72 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %73 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %76 = call i32 @sun4i_backend_update_layer_zpos(%struct.sun4i_backend* %71, i32 %74, %struct.drm_plane* %75)
  %77 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %78 = load %struct.sun4i_layer*, %struct.sun4i_layer** %6, align 8
  %79 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sun4i_backend_layer_enable(%struct.sun4i_backend* %77, i32 %80, i32 1)
  ret void
}

declare dso_local %struct.sun4i_layer_state* @state_to_sun4i_layer_state(i32) #1

declare dso_local %struct.sun4i_layer* @plane_to_sun4i_layer(%struct.drm_plane*) #1

declare dso_local i32 @sun4i_backend_cleanup_layer(%struct.sun4i_backend*, i32) #1

declare dso_local i32 @sun4i_frontend_init(%struct.sun4i_frontend*) #1

declare dso_local i32 @sun4i_frontend_update_coord(%struct.sun4i_frontend*, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_frontend_update_buffer(%struct.sun4i_frontend*, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_frontend_update_formats(%struct.sun4i_frontend*, %struct.drm_plane*, i32) #1

declare dso_local i32 @sun4i_backend_update_layer_frontend(%struct.sun4i_backend*, i32, i32) #1

declare dso_local i32 @sun4i_frontend_enable(%struct.sun4i_frontend*) #1

declare dso_local i32 @sun4i_backend_update_layer_formats(%struct.sun4i_backend*, i32, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_backend_update_layer_buffer(%struct.sun4i_backend*, i32, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_backend_update_layer_coord(%struct.sun4i_backend*, i32, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_backend_update_layer_zpos(%struct.sun4i_backend*, i32, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_backend_layer_enable(%struct.sun4i_backend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
