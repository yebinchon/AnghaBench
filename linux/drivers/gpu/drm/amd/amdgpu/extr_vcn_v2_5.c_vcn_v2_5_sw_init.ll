; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_18__, %struct.TYPE_13__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_10__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, %struct.amdgpu_ring, %struct.amdgpu_ring*, %struct.amdgpu_ring, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.common_firmware_header = type { i32 }

@amdgpu_ih_clientid_vcns = common dso_local global i32* null, align 8
@VCN_2_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT = common dso_local global i64 0, align 8
@VCN_2_0__SRCID__UVD_ENC_GENERAL_PURPOSE = common dso_local global i64 0, align 8
@VCN_2_0__SRCID__JPEG_DECODE = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_VCN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VCN25_MAX_HW_INSTANCES_ARCTURUS = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_VCN1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"PSP loading VCN firmware\0A\00", align 1
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
@mmUVD_JPEG_PITCH_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JPEG_PITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"vcn_dec_%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"vcn_enc_%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vcn_jpeg_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vcn_v2_5_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_5_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.common_firmware_header*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %8, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %108, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %111

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %108

29:                                               ; preds = %19
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = load i32*, i32** @amdgpu_ih_clientid_vcns, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @VCN_2_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %30, i32 %35, i64 %36, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %521

50:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %60 = load i32*, i32** @amdgpu_ih_clientid_vcns, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @VCN_2_0__SRCID__UVD_ENC_GENERAL_PURPOSE, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %59, i32 %64, i64 %68, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %58
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %521

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %51

86:                                               ; preds = %51
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %88 = load i32*, i32** @amdgpu_ih_clientid_vcns, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @VCN_2_0__SRCID__JPEG_DECODE, align 8
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %87, i32 %92, i64 %93, i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %521

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %28
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %12

111:                                              ; preds = %12
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %113 = call i32 @amdgpu_vcn_sw_init(%struct.amdgpu_device* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %521

118:                                              ; preds = %111
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %206

125:                                              ; preds = %118
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %132, %struct.common_firmware_header** %9, align 8
  %133 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i64 %133, i64* %140, align 8
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %151, align 8
  %152 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %153 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load i32, i32* @PAGE_SIZE, align 4
  %157 = call i64 @ALIGN(i32 %155, i32 %156)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %157
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 8
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @VCN25_MAX_HW_INSTANCES_ARCTURUS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %125
  %172 = load i64, i64* @AMDGPU_UCODE_ID_VCN1, align 8
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = load i64, i64* @AMDGPU_UCODE_ID_VCN1, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  store i64 %172, i64* %179, align 8
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load i64, i64* @AMDGPU_UCODE_ID_VCN1, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store %struct.TYPE_16__* %183, %struct.TYPE_16__** %190, align 8
  %191 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %192 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le32_to_cpu(i32 %193)
  %195 = load i32, i32* @PAGE_SIZE, align 4
  %196 = call i64 @ALIGN(i32 %194, i32 %195)
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %196
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %199, align 8
  br label %204

204:                                              ; preds = %171, %125
  %205 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %118
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %208 = call i32 @amdgpu_vcn_resume(%struct.amdgpu_device* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %2, align 4
  br label %521

213:                                              ; preds = %206
  store i32 0, i32* %6, align 4
  br label %214

214:                                              ; preds = %517, %213
  %215 = load i32, i32* %6, align 4
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %217 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %215, %219
  br i1 %220, label %221, label %520

221:                                              ; preds = %214
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %6, align 4
  %227 = shl i32 1, %226
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %517

231:                                              ; preds = %221
  %232 = load i32, i32* @mmUVD_CONTEXT_ID_INTERNAL_OFFSET, align 4
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 11
  store i32 %232, i32* %236, align 4
  %237 = load i32, i32* @mmUVD_LMI_RBC_IB_VMID_INTERNAL_OFFSET, align 4
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %239 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 10
  store i32 %237, i32* %241, align 8
  %242 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET, align 4
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %244 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 9
  store i32 %242, i32* %246, align 4
  %247 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET, align 4
  %248 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %249 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 8
  store i32 %247, i32* %251, align 8
  %252 = load i32, i32* @mmUVD_RBC_IB_SIZE_INTERNAL_OFFSET, align 4
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %254 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 7
  store i32 %252, i32* %256, align 4
  %257 = load i32, i32* @mmUVD_GP_SCRATCH8_INTERNAL_OFFSET, align 4
  %258 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %259 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 6
  store i32 %257, i32* %261, align 8
  %262 = load i32, i32* @mmUVD_SCRATCH9_INTERNAL_OFFSET, align 4
  %263 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %264 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 5
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* @UVD, align 4
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @mmUVD_SCRATCH9, align 4
  %270 = call i8* @SOC15_REG_OFFSET(i32 %267, i32 %268, i32 %269)
  %271 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %272 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 5
  store i8* %270, i8** %279, align 8
  %280 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0_INTERNAL_OFFSET, align 4
  %281 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %282 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 4
  store i32 %280, i32* %284, align 8
  %285 = load i32, i32* @UVD, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %288 = call i8* @SOC15_REG_OFFSET(i32 %285, i32 %286, i32 %287)
  %289 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %290 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 3
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 4
  store i8* %288, i8** %297, align 8
  %298 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1_INTERNAL_OFFSET, align 4
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  store i32 %298, i32* %302, align 4
  %303 = load i32, i32* @UVD, align 4
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %306 = call i8* @SOC15_REG_OFFSET(i32 %303, i32 %304, i32 %305)
  %307 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %308 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 3
  store i8* %306, i8** %315, align 8
  %316 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD_INTERNAL_OFFSET, align 4
  %317 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %318 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 2
  store i32 %316, i32* %320, align 8
  %321 = load i32, i32* @UVD, align 4
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %324 = call i8* @SOC15_REG_OFFSET(i32 %321, i32 %322, i32 %323)
  %325 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %326 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 3
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 2
  store i8* %324, i8** %333, align 8
  %334 = load i32, i32* @mmUVD_NO_OP_INTERNAL_OFFSET, align 4
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %336 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  store i32 %334, i32* %338, align 4
  %339 = load i32, i32* @UVD, align 4
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @mmUVD_NO_OP, align 4
  %342 = call i8* @SOC15_REG_OFFSET(i32 %339, i32 %340, i32 %341)
  %343 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %344 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 3
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %345, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  store i8* %342, i8** %351, align 8
  %352 = load i32, i32* @mmUVD_JPEG_PITCH_INTERNAL_OFFSET, align 4
  %353 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %354 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  store i32 %352, i32* %356, align 8
  %357 = load i32, i32* @UVD, align 4
  %358 = load i32, i32* %6, align 4
  %359 = load i32, i32* @mmUVD_JPEG_PITCH, align 4
  %360 = call i8* @SOC15_REG_OFFSET(i32 %357, i32 %358, i32 %359)
  %361 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %362 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 3
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  store i8* %360, i8** %369, align 8
  %370 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %371 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 3
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %372, align 8
  %374 = load i32, i32* %6, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 3
  store %struct.amdgpu_ring* %377, %struct.amdgpu_ring** %4, align 8
  %378 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %379 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %378, i32 0, i32 0
  store i32 1, i32* %379, align 4
  %380 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %381 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = shl i32 %384, 1
  %386 = load i32, i32* %6, align 4
  %387 = mul nsw i32 8, %386
  %388 = add nsw i32 %385, %387
  %389 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %390 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %389, i32 0, i32 1
  store i32 %388, i32* %390, align 4
  %391 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %392 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %6, align 4
  %395 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %393, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %394)
  %396 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %397 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %398 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %399 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 3
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 0
  %406 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %396, %struct.amdgpu_ring* %397, i32 512, i32* %405, i32 0)
  store i32 %406, i32* %7, align 4
  %407 = load i32, i32* %7, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %231
  %410 = load i32, i32* %7, align 4
  store i32 %410, i32* %2, align 4
  br label %521

411:                                              ; preds = %231
  store i32 0, i32* %5, align 4
  br label %412

412:                                              ; preds = %470, %411
  %413 = load i32, i32* %5, align 4
  %414 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %415 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = icmp slt i32 %413, %417
  br i1 %418, label %419, label %473

419:                                              ; preds = %412
  %420 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %421 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 3
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %422, align 8
  %424 = load i32, i32* %6, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 2
  %428 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %427, align 8
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %428, i64 %430
  store %struct.amdgpu_ring* %431, %struct.amdgpu_ring** %4, align 8
  %432 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %433 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %432, i32 0, i32 0
  store i32 1, i32* %433, align 4
  %434 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %435 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = shl i32 %438, 1
  %440 = add nsw i32 %439, 2
  %441 = load i32, i32* %5, align 4
  %442 = add nsw i32 %440, %441
  %443 = load i32, i32* %6, align 4
  %444 = mul nsw i32 8, %443
  %445 = add nsw i32 %442, %444
  %446 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %447 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %446, i32 0, i32 1
  store i32 %445, i32* %447, align 4
  %448 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %449 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %6, align 4
  %452 = load i32, i32* %5, align 4
  %453 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %450, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %451, i32 %452)
  %454 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %455 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %456 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %457 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 3
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %458, align 8
  %460 = load i32, i32* %6, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 0
  %464 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %454, %struct.amdgpu_ring* %455, i32 512, i32* %463, i32 0)
  store i32 %464, i32* %7, align 4
  %465 = load i32, i32* %7, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %419
  %468 = load i32, i32* %7, align 4
  store i32 %468, i32* %2, align 4
  br label %521

469:                                              ; preds = %419
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %5, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %5, align 4
  br label %412

473:                                              ; preds = %412
  %474 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %475 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %475, i32 0, i32 3
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %476, align 8
  %478 = load i32, i32* %6, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %480, i32 0, i32 1
  store %struct.amdgpu_ring* %481, %struct.amdgpu_ring** %4, align 8
  %482 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %483 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %482, i32 0, i32 0
  store i32 1, i32* %483, align 4
  %484 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %485 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = shl i32 %488, 1
  %490 = add nsw i32 %489, 1
  %491 = load i32, i32* %6, align 4
  %492 = mul nsw i32 8, %491
  %493 = add nsw i32 %490, %492
  %494 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %495 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %494, i32 0, i32 1
  store i32 %493, i32* %495, align 4
  %496 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %497 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* %6, align 4
  %500 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %498, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %499)
  %501 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %502 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %503 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %504 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 3
  %506 = load %struct.TYPE_14__*, %struct.TYPE_14__** %505, align 8
  %507 = load i32, i32* %6, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %509, i32 0, i32 0
  %511 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %501, %struct.amdgpu_ring* %502, i32 512, i32* %510, i32 0)
  store i32 %511, i32* %7, align 4
  %512 = load i32, i32* %7, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %473
  %515 = load i32, i32* %7, align 4
  store i32 %515, i32* %2, align 4
  br label %521

516:                                              ; preds = %473
  br label %517

517:                                              ; preds = %516, %230
  %518 = load i32, i32* %6, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %6, align 4
  br label %214

520:                                              ; preds = %214
  store i32 0, i32* %2, align 4
  br label %521

521:                                              ; preds = %520, %514, %467, %409, %211, %116, %105, %80, %48
  %522 = load i32, i32* %2, align 4
  ret i32 %522
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i64, i32*) #1

declare dso_local i32 @amdgpu_vcn_sw_init(%struct.amdgpu_device*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_vcn_resume(%struct.amdgpu_device*) #1

declare dso_local i8* @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
