; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_5__, i64, i64, %struct.drm_atomic_state* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nv50_mstc = type { i32, i32, %struct.nv50_mstm* }
%struct.nv50_mstm = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @nv50_msto_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_msto_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_atomic_state*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.nv50_mstc*, align 8
  %11 = alloca %struct.nv50_mstm*, align 8
  %12 = alloca %struct.nv50_head_atom*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %16 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %17 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %16, i32 0, i32 3
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %17, align 8
  store %struct.drm_atomic_state* %18, %struct.drm_atomic_state** %8, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load %struct.drm_connector*, %struct.drm_connector** %20, align 8
  store %struct.drm_connector* %21, %struct.drm_connector** %9, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %23 = call %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector* %22)
  store %struct.nv50_mstc* %23, %struct.nv50_mstc** %10, align 8
  %24 = load %struct.nv50_mstc*, %struct.nv50_mstc** %10, align 8
  %25 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %24, i32 0, i32 2
  %26 = load %struct.nv50_mstm*, %struct.nv50_mstm** %25, align 8
  store %struct.nv50_mstm* %26, %struct.nv50_mstm** %11, align 8
  %27 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %28 = call %struct.nv50_head_atom* @nv50_head_atom(%struct.drm_crtc_state* %27)
  store %struct.nv50_head_atom* %28, %struct.nv50_head_atom** %12, align 8
  %29 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %30 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %35 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %33, %3
  %39 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %40 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 3
  store i32 %48, i32* %14, align 4
  %49 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %50 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @drm_dp_calc_pbn_mode(i32 %53, i32 %54)
  %56 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %12, align 8
  %57 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %43, %38
  %60 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %61 = load %struct.nv50_mstm*, %struct.nv50_mstm** %11, align 8
  %62 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %61, i32 0, i32 0
  %63 = load %struct.nv50_mstc*, %struct.nv50_mstc** %10, align 8
  %64 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %12, align 8
  %67 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @drm_dp_atomic_find_vcpi_slots(%struct.drm_atomic_state* %60, i32* %62, i32 %65, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %4, align 4
  br label %88

75:                                               ; preds = %59
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %12, align 8
  %78 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %33
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %82 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %83 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %84 = load %struct.nv50_mstc*, %struct.nv50_mstc** %10, align 8
  %85 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @nv50_outp_atomic_check_view(%struct.drm_encoder* %81, %struct.drm_crtc_state* %82, %struct.drm_connector_state* %83, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %73
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector*) #1

declare dso_local %struct.nv50_head_atom* @nv50_head_atom(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_dp_calc_pbn_mode(i32, i32) #1

declare dso_local i32 @drm_dp_atomic_find_vcpi_slots(%struct.drm_atomic_state*, i32*, i32, i32) #1

declare dso_local i32 @nv50_outp_atomic_check_view(%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
