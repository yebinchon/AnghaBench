; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_15__, i32, %struct.TYPE_11__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, %struct.amdgpu_ring, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.common_firmware_header = type { i32 }

@SOC15_IH_CLIENTID_VCN = common dso_local global i32 0, align 4
@VCN_2_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT = common dso_local global i64 0, align 8
@VCN_2_0__SRCID__UVD_ENC_GENERAL_PURPOSE = common dso_local global i64 0, align 8
@VCN_2_0__SRCID__JPEG_DECODE = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_VCN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PSP loading VCN firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vcn_dec\00", align 1
@mmUVD_CONTEXT_ID_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_VMID_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_RBC_IB_SIZE_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH8_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_SCRATCH9_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_SCRATCH9 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@mmUVD_NO_OP_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_NO_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"vcn_enc%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vcn_jpeg\00", align 1
@vcn_v2_0_pause_dpg_mode = common dso_local global i32 0, align 4
@mmUVD_JPEG_PITCH_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JPEG_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vcn_v2_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %12 = load i32, i32* @SOC15_IH_CLIENTID_VCN, align 4
  %13 = load i64, i64* @VCN_2_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %11, i32 %12, i64 %13, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %365

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %34 = load i32, i32* @SOC15_IH_CLIENTID_VCN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @VCN_2_0__SRCID__UVD_ENC_GENERAL_PURPOSE, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %33, i32 %34, i64 %38, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %365

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %55 = load i32, i32* @SOC15_IH_CLIENTID_VCN, align 4
  %56 = load i64, i64* @VCN_2_0__SRCID__JPEG_DECODE, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %54, i32 %55, i64 %56, i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %365

67:                                               ; preds = %53
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %69 = call i32 @amdgpu_vcn_sw_init(%struct.amdgpu_device* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %365

74:                                               ; preds = %67
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %74
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %88, %struct.common_firmware_header** %8, align 8
  %89 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i64 %89, i64* %96, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %107, align 8
  %108 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %109 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = call i64 @ALIGN(i32 %111, i32 %112)
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %113
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 8
  %121 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %81, %74
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %124 = call i32 @amdgpu_vcn_resume(%struct.amdgpu_device* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %365

129:                                              ; preds = %122
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  store %struct.amdgpu_ring* %134, %struct.amdgpu_ring** %4, align 8
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %136 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %141, 1
  %143 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @sprintf(i32 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %150 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %149, %struct.amdgpu_ring* %150, i32 512, i32* %155, i32 0)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %129
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %365

161:                                              ; preds = %129
  %162 = load i32, i32* @mmUVD_CONTEXT_ID_INTERNAL_OFFSET, align 4
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 11
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* @mmUVD_LMI_RBC_IB_VMID_INTERNAL_OFFSET, align 4
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 10
  store i32 %167, i32* %171, align 8
  %172 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET, align 4
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 9
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET, align 4
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 8
  store i32 %177, i32* %181, align 8
  %182 = load i32, i32* @mmUVD_RBC_IB_SIZE_INTERNAL_OFFSET, align 4
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 7
  store i32 %182, i32* %186, align 4
  %187 = load i32, i32* @mmUVD_GP_SCRATCH8_INTERNAL_OFFSET, align 4
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 6
  store i32 %187, i32* %191, align 8
  %192 = load i32, i32* @mmUVD_SCRATCH9_INTERNAL_OFFSET, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 5
  store i32 %192, i32* %196, align 4
  %197 = load i32, i32* @UVD, align 4
  %198 = load i32, i32* @mmUVD_SCRATCH9, align 4
  %199 = call i8* @SOC15_REG_OFFSET(i32 %197, i32 0, i32 %198)
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 5
  store i8* %199, i8** %205, align 8
  %206 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0_INTERNAL_OFFSET, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  store i32 %206, i32* %210, align 8
  %211 = load i32, i32* @UVD, align 4
  %212 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %213 = call i8* @SOC15_REG_OFFSET(i32 %211, i32 0, i32 %212)
  %214 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %215 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 4
  store i8* %213, i8** %219, align 8
  %220 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1_INTERNAL_OFFSET, align 4
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %222 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 3
  store i32 %220, i32* %224, align 4
  %225 = load i32, i32* @UVD, align 4
  %226 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %227 = call i8* @SOC15_REG_OFFSET(i32 %225, i32 0, i32 %226)
  %228 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %229 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 3
  store i8* %227, i8** %233, align 8
  %234 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD_INTERNAL_OFFSET, align 4
  %235 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %236 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  store i32 %234, i32* %238, align 8
  %239 = load i32, i32* @UVD, align 4
  %240 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %241 = call i8* @SOC15_REG_OFFSET(i32 %239, i32 0, i32 %240)
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 2
  store i8* %241, i8** %247, align 8
  %248 = load i32, i32* @mmUVD_NO_OP_INTERNAL_OFFSET, align 4
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %250 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  store i32 %248, i32* %252, align 4
  %253 = load i32, i32* @UVD, align 4
  %254 = load i32, i32* @mmUVD_NO_OP, align 4
  %255 = call i8* @SOC15_REG_OFFSET(i32 %253, i32 0, i32 %254)
  %256 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %257 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  store i8* %255, i8** %261, align 8
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %310, %161
  %263 = load i32, i32* %5, align 4
  %264 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %265 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %263, %267
  br i1 %268, label %269, label %313

269:                                              ; preds = %262
  %270 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %271 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 3
  %275 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %275, i64 %277
  store %struct.amdgpu_ring* %278, %struct.amdgpu_ring** %4, align 8
  %279 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %280 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %279, i32 0, i32 0
  store i32 1, i32* %280, align 4
  %281 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %282 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = shl i32 %285, 1
  %287 = add nsw i32 %286, 2
  %288 = load i32, i32* %5, align 4
  %289 = add nsw i32 %287, %288
  %290 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %291 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %293 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %5, align 4
  %296 = call i32 (i32, i8*, ...) @sprintf(i32 %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %295)
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %298 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 1
  %304 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %297, %struct.amdgpu_ring* %298, i32 512, i32* %303, i32 0)
  store i32 %304, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %269
  %308 = load i32, i32* %6, align 4
  store i32 %308, i32* %2, align 4
  br label %365

309:                                              ; preds = %269
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %5, align 4
  br label %262

313:                                              ; preds = %262
  %314 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %315 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 2
  store %struct.amdgpu_ring* %318, %struct.amdgpu_ring** %4, align 8
  %319 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %320 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %319, i32 0, i32 0
  store i32 1, i32* %320, align 4
  %321 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %322 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = shl i32 %325, 1
  %327 = add nsw i32 %326, 1
  %328 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %329 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %331 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i32, i8*, ...) @sprintf(i32 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %334 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %335 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %336 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %337 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 1
  %341 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %334, %struct.amdgpu_ring* %335, i32 512, i32* %340, i32 0)
  store i32 %341, i32* %6, align 4
  %342 = load i32, i32* %6, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %313
  %345 = load i32, i32* %6, align 4
  store i32 %345, i32* %2, align 4
  br label %365

346:                                              ; preds = %313
  %347 = load i32, i32* @vcn_v2_0_pause_dpg_mode, align 4
  %348 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %349 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 3
  store i32 %347, i32* %350, align 8
  %351 = load i32, i32* @mmUVD_JPEG_PITCH_INTERNAL_OFFSET, align 4
  %352 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %353 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 0
  store i32 %351, i32* %355, align 8
  %356 = load i32, i32* @UVD, align 4
  %357 = load i32, i32* @mmUVD_JPEG_PITCH, align 4
  %358 = call i8* @SOC15_REG_OFFSET(i32 %356, i32 0, i32 %357)
  %359 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %360 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  store i8* %358, i8** %364, align 8
  store i32 0, i32* %2, align 4
  br label %365

365:                                              ; preds = %346, %344, %307, %159, %127, %72, %65, %47, %22
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i64, i32*) #1

declare dso_local i32 @amdgpu_vcn_sw_init(%struct.amdgpu_device*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_vcn_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i8* @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
