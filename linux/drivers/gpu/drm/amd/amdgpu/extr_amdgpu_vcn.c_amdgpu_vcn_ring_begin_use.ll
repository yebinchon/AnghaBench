; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_ring_begin_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_ring_begin_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, %struct.TYPE_7__*, %struct.amdgpu_device* }
%struct.TYPE_7__ = type { i64 }
%struct.amdgpu_device = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 (%struct.amdgpu_device*, %struct.dpg_pause_state*)*, %struct.TYPE_6__*, i32 }
%struct.dpg_pause_state = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }

@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_VCN = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@VCN_DPG_STATE__PAUSE = common dso_local global i8* null, align 8
@VCN_DPG_STATE__UNPAUSE = common dso_local global i8* null, align 8
@AMDGPU_RING_TYPE_VCN_ENC = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_VCN_JPEG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vcn_ring_begin_use(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpg_pause_state, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = call i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device* %21, i32 0)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_ARCTURUS, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 @amdgpu_dpm_enable_uvd(%struct.amdgpu_device* %35, i32 1)
  br label %42

37:                                               ; preds = %28, %20
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCN, align 4
  %40 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %41 = call i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %137

50:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %52, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i64 @amdgpu_fence_count_emitted(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %58
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %51

80:                                               ; preds = %51
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8*, i8** @VCN_DPG_STATE__PAUSE, align 8
  %85 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %5, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  br label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** @VCN_DPG_STATE__UNPAUSE, align 8
  %88 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %5, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i64 @amdgpu_fence_count_emitted(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i8*, i8** @VCN_DPG_STATE__PAUSE, align 8
  %103 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %5, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  br label %107

104:                                              ; preds = %89
  %105 = load i8*, i8** @VCN_DPG_STATE__UNPAUSE, align 8
  %106 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %5, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %109 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AMDGPU_RING_TYPE_VCN_ENC, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** @VCN_DPG_STATE__PAUSE, align 8
  %117 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %5, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  br label %130

118:                                              ; preds = %107
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AMDGPU_RING_TYPE_VCN_JPEG, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i8*, i8** @VCN_DPG_STATE__PAUSE, align 8
  %128 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %5, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  br label %129

129:                                              ; preds = %126, %118
  br label %130

130:                                              ; preds = %129, %115
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32 (%struct.amdgpu_device*, %struct.dpg_pause_state*)*, i32 (%struct.amdgpu_device*, %struct.dpg_pause_state*)** %133, align 8
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = call i32 %134(%struct.amdgpu_device* %135, %struct.dpg_pause_state* %5)
  br label %137

137:                                              ; preds = %130, %43
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_dpm_enable_uvd(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i64 @amdgpu_fence_count_emitted(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
