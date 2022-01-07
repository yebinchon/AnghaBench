; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_outp_atomic_check_view.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_outp_atomic_check_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, i32 }
%struct.drm_crtc_state = type { i32, %struct.drm_display_mode, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32 }
%struct.nouveau_conn_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s atomic_check\0A\00", align 1
@DRM_MODE_SCALE_NONE = common dso_local global i64 0, align 8
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*, %struct.drm_display_mode*)* @nv50_outp_atomic_check_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_outp_atomic_check_view(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_connector*, align 8
  %13 = alloca %struct.nouveau_conn_atom*, align 8
  %14 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %7, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %8, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %9, align 8
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %16 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %15, i32 0, i32 2
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %10, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %17, i32 0, i32 1
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %11, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load %struct.drm_connector*, %struct.drm_connector** %20, align 8
  store %struct.drm_connector* %21, %struct.drm_connector** %12, align 8
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %23 = call %struct.nouveau_conn_atom* @nouveau_conn_atom(%struct.drm_connector_state* %22)
  store %struct.nouveau_conn_atom* %23, %struct.nouveau_conn_atom** %13, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.nouveau_drm* @nouveau_drm(i32 %26)
  store %struct.nouveau_drm* %27, %struct.nouveau_drm** %14, align 8
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %30 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NV_ATOMIC(%struct.nouveau_drm* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %13, align 8
  %34 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %37 = icmp ne %struct.drm_display_mode* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

39:                                               ; preds = %4
  %40 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %13, align 8
  %41 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DRM_MODE_SCALE_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %39
  %47 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %79 [
    i32 129, label %50
    i32 128, label %50
  ]

50:                                               ; preds = %46, %46
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %80

74:                                               ; preds = %66, %58, %50
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %75, %struct.drm_display_mode** %11, align 8
  %76 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %13, align 8
  %77 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %80

79:                                               ; preds = %46
  br label %80

80:                                               ; preds = %79, %74, %73
  br label %83

81:                                               ; preds = %39
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %82, %struct.drm_display_mode** %11, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %86 = call i32 @drm_mode_equal(%struct.drm_display_mode* %84, %struct.drm_display_mode* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %91 = call i32 @drm_mode_copy(%struct.drm_display_mode* %89, %struct.drm_display_mode* %90)
  %92 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %93 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %83
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %38
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.nouveau_conn_atom* @nouveau_conn_atom(%struct.drm_connector_state*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_mode_equal(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
