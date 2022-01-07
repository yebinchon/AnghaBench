; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_init_data_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_init_data_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.amd_sriov_msg_pf2vf_info_header*, %struct.amd_sriov_msg_pf2vf_info_header* }
%struct.amd_sriov_msg_pf2vf_info_header = type { i32 }
%struct.TYPE_6__ = type { i32* }

@AMDGIM_DATAEXCHANGE_OFFSET = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@feature_flags = common dso_local global i32 0, align 4
@AMDGPU_FW_VRAM_VF2PF_VER = common dso_local global i32 0, align 4
@driver_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@driver_cert = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_virt_init_data_exchange(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.amd_sriov_msg_pf2vf_info_header* null, %struct.amd_sriov_msg_pf2vf_info_header** %10, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store %struct.amd_sriov_msg_pf2vf_info_header* null, %struct.amd_sriov_msg_pf2vf_info_header** %14, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %121

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @AMDGIM_DATAEXCHANGE_OFFSET, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to %struct.amd_sriov_msg_pf2vf_info_header*
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store %struct.amd_sriov_msg_pf2vf_info_header* %28, %struct.amd_sriov_msg_pf2vf_info_header** %32, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 4
  %35 = call i32 @AMDGPU_FW_VRAM_PF2VF_READ(%struct.amdgpu_device* %33, i32 %34, i32* %3)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @AMDGPU_FW_VRAM_PF2VF_READ(%struct.amdgpu_device* %36, i32 %37, i32* %4)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = load i32, i32* @feature_flags, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @AMDGPU_FW_VRAM_PF2VF_READ(%struct.amdgpu_device* %39, i32 %40, i32* %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %20
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 4096
  br i1 %49, label %50, label %120

50:                                               ; preds = %47
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load %struct.amd_sriov_msg_pf2vf_info_header*, %struct.amd_sriov_msg_pf2vf_info_header** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @amdgpu_virt_fw_reserve_get_checksum(%struct.amd_sriov_msg_pf2vf_info_header* %55, i32 %56, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %50
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.amd_sriov_msg_pf2vf_info_header*, %struct.amd_sriov_msg_pf2vf_info_header** %71, align 8
  %73 = bitcast %struct.amd_sriov_msg_pf2vf_info_header* %72 to i8*
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, i8* %73, i64 %75
  %77 = bitcast i8* %76 to %struct.amd_sriov_msg_pf2vf_info_header*
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store %struct.amd_sriov_msg_pf2vf_info_header* %77, %struct.amd_sriov_msg_pf2vf_info_header** %81, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.amd_sriov_msg_pf2vf_info_header*, %struct.amd_sriov_msg_pf2vf_info_header** %85, align 8
  %87 = bitcast %struct.amd_sriov_msg_pf2vf_info_header* %86 to i8*
  %88 = call i32 @memset(i8* %87, i32 0, i32 4)
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 4
  %91 = load i32, i32* @AMDGPU_FW_VRAM_VF2PF_VER, align 4
  %92 = call i32 @AMDGPU_FW_VRAM_VF2PF_WRITE(%struct.amdgpu_device* %89, i32 %90, i32 %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 4
  %95 = call i32 @AMDGPU_FW_VRAM_VF2PF_WRITE(%struct.amdgpu_device* %93, i32 %94, i32 4)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %97 = load i32, i32* @driver_version, align 4
  %98 = call i32 @AMDGPU_FW_VRAM_VF2PF_READ(%struct.amdgpu_device* %96, i32 %97, i8** %6)
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @strcpy(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %102 = load i32, i32* @driver_cert, align 4
  %103 = call i32 @AMDGPU_FW_VRAM_VF2PF_WRITE(%struct.amdgpu_device* %101, i32 %102, i32 0)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.amd_sriov_msg_pf2vf_info_header*, %struct.amd_sriov_msg_pf2vf_info_header** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @amdgpu_virt_fw_reserve_get_checksum(%struct.amd_sriov_msg_pf2vf_info_header* %110, i32 %111, i32 %116, i32 0)
  %118 = call i32 @AMDGPU_FW_VRAM_VF2PF_WRITE(%struct.amdgpu_device* %104, i32 %105, i32 %117)
  br label %119

119:                                              ; preds = %67, %50
  br label %120

120:                                              ; preds = %119, %47, %20
  br label %121

121:                                              ; preds = %120, %1
  ret void
}

declare dso_local i32 @AMDGPU_FW_VRAM_PF2VF_READ(%struct.amdgpu_device*, i32, i32*) #1

declare dso_local i32 @amdgpu_virt_fw_reserve_get_checksum(%struct.amd_sriov_msg_pf2vf_info_header*, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @AMDGPU_FW_VRAM_VF2PF_WRITE(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @AMDGPU_FW_VRAM_VF2PF_READ(%struct.amdgpu_device*, i32, i8**) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
