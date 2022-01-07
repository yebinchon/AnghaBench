; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_disp_outp_atomic_check_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_disp_outp_atomic_check_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_atom = type { i32, i32, i32 }
%struct.drm_connector_state = type { %struct.drm_crtc*, %struct.drm_encoder* }
%struct.drm_crtc = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i64 }
%struct.nv50_outp_atom = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@DRM_MODE_ENCODER_DPMST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_atom*, %struct.drm_connector_state*)* @nv50_disp_outp_atomic_check_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_outp_atomic_check_clr(%struct.nv50_atom* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv50_atom*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.nv50_outp_atom*, align 8
  store %struct.nv50_atom* %0, %struct.nv50_atom** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 1
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  store %struct.drm_encoder* %13, %struct.drm_encoder** %6, align 8
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %14, i32 0, i32 0
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %9, align 8
  %17 = icmp ne %struct.drm_crtc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %20, i32 0, i32 2
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %23 = call %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(i32* %21, %struct.drm_crtc* %22)
  store %struct.drm_crtc_state* %23, %struct.drm_crtc_state** %7, align 8
  %24 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %25 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %24, i32 0, i32 2
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %27 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32* %25, %struct.drm_crtc* %26)
  store %struct.drm_crtc_state* %27, %struct.drm_crtc_state** %8, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %29 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %19
  %33 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %34 = call i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %39 = call %struct.nv50_outp_atom* @nv50_disp_outp_atomic_add(%struct.nv50_atom* %37, %struct.drm_encoder* %38)
  store %struct.nv50_outp_atom* %39, %struct.nv50_outp_atom** %10, align 8
  %40 = load %struct.nv50_outp_atom*, %struct.nv50_outp_atom** %10, align 8
  %41 = call i64 @IS_ERR(%struct.nv50_outp_atom* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.nv50_outp_atom*, %struct.nv50_outp_atom** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.nv50_outp_atom* %44)
  store i32 %45, i32* %3, align 4
  br label %66

46:                                               ; preds = %36
  %47 = load %struct.nv50_outp_atom*, %struct.nv50_outp_atom** %10, align 8
  %48 = getelementptr inbounds %struct.nv50_outp_atom, %struct.nv50_outp_atom* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DRM_MODE_ENCODER_DPMST, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.nv50_outp_atom*, %struct.nv50_outp_atom** %10, align 8
  %56 = getelementptr inbounds %struct.nv50_outp_atom, %struct.nv50_outp_atom* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %58 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %46
  %60 = load %struct.nv50_outp_atom*, %struct.nv50_outp_atom** %10, align 8
  %61 = getelementptr inbounds %struct.nv50_outp_atom, %struct.nv50_outp_atom* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %64 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %32, %19
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %43, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(i32*, %struct.drm_crtc*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32*, %struct.drm_crtc*) #1

declare dso_local i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local %struct.nv50_outp_atom* @nv50_disp_outp_atomic_add(%struct.nv50_atom*, %struct.drm_encoder*) #1

declare dso_local i64 @IS_ERR(%struct.nv50_outp_atom*) #1

declare dso_local i32 @PTR_ERR(%struct.nv50_outp_atom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
