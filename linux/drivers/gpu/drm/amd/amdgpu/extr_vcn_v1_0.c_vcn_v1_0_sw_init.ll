; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__, i32, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, %struct.amdgpu_ring, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.common_firmware_header = type { i32 }

@SOC15_IH_CLIENTID_VCN = common dso_local global i32 0, align 4
@VCN_1_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT = common dso_local global i32 0, align 4
@VCN_1_0__SRCID__UVD_ENC_GENERAL_PURPOSE = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_VCN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PSP loading VCN firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vcn_dec\00", align 1
@UVD = common dso_local global i32 0, align 4
@mmUVD_SCRATCH9 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@mmUVD_NO_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"vcn_enc%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vcn_jpeg\00", align 1
@vcn_v1_0_pause_dpg_mode = common dso_local global i32 0, align 4
@mmUVD_JPEG_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vcn_v1_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v1_0_sw_init(i8* %0) #0 {
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
  %13 = load i32, i32* @VCN_1_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %11, i32 %12, i32 %13, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %293

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %34 = load i32, i32* @SOC15_IH_CLIENTID_VCN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VCN_1_0__SRCID__UVD_ENC_GENERAL_PURPOSE, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %33, i32 %34, i32 %37, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %293

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %54 = load i32, i32* @SOC15_IH_CLIENTID_VCN, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %53, i32 %54, i32 126, i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %293

65:                                               ; preds = %52
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %67 = call i32 @amdgpu_vcn_sw_init(%struct.amdgpu_device* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %293

72:                                               ; preds = %65
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %120

79:                                               ; preds = %72
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %86, %struct.common_firmware_header** %8, align 8
  %87 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i64 %87, i64* %94, align 8
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %105, align 8
  %106 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %107 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = call i64 @ALIGN(i32 %109, i32 %110)
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %111
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  %119 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %79, %72
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %122 = call i32 @amdgpu_vcn_resume(%struct.amdgpu_device* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %293

127:                                              ; preds = %120
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  store %struct.amdgpu_ring* %132, %struct.amdgpu_ring** %4, align 8
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @sprintf(i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %138 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %137, %struct.amdgpu_ring* %138, i32 512, i32* %143, i32 0)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %127
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %293

149:                                              ; preds = %127
  %150 = load i32, i32* @UVD, align 4
  %151 = load i32, i32* @mmUVD_SCRATCH9, align 4
  %152 = call i8* @SOC15_REG_OFFSET(i32 %150, i32 0, i32 %151)
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 5
  store i8* %152, i8** %158, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 5
  store i8* %152, i8** %162, align 8
  %163 = load i32, i32* @UVD, align 4
  %164 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %165 = call i8* @SOC15_REG_OFFSET(i32 %163, i32 0, i32 %164)
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  store i8* %165, i8** %171, align 8
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 4
  store i8* %165, i8** %175, align 8
  %176 = load i32, i32* @UVD, align 4
  %177 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %178 = call i8* @SOC15_REG_OFFSET(i32 %176, i32 0, i32 %177)
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  store i8* %178, i8** %184, align 8
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  store i8* %178, i8** %188, align 8
  %189 = load i32, i32* @UVD, align 4
  %190 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %191 = call i8* @SOC15_REG_OFFSET(i32 %189, i32 0, i32 %190)
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  store i8* %191, i8** %197, align 8
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  store i8* %191, i8** %201, align 8
  %202 = load i32, i32* @UVD, align 4
  %203 = load i32, i32* @mmUVD_NO_OP, align 4
  %204 = call i8* @SOC15_REG_OFFSET(i32 %202, i32 0, i32 %203)
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store i8* %204, i8** %210, align 8
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store i8* %204, i8** %214, align 8
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %250, %149
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %216, %220
  br i1 %221, label %222, label %253

222:                                              ; preds = %215
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 3
  %228 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %228, i64 %230
  store %struct.amdgpu_ring* %231, %struct.amdgpu_ring** %4, align 8
  %232 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %233 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %5, align 4
  %236 = call i32 (i32, i8*, ...) @sprintf(i32 %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %235)
  %237 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %238 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %240 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %237, %struct.amdgpu_ring* %238, i32 512, i32* %243, i32 0)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %222
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %2, align 4
  br label %293

249:                                              ; preds = %222
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %215

253:                                              ; preds = %215
  %254 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %255 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  store %struct.amdgpu_ring* %258, %struct.amdgpu_ring** %4, align 8
  %259 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %260 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, ...) @sprintf(i32 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %263 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %264 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %266 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %263, %struct.amdgpu_ring* %264, i32 512, i32* %269, i32 0)
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %253
  %274 = load i32, i32* %6, align 4
  store i32 %274, i32* %2, align 4
  br label %293

275:                                              ; preds = %253
  %276 = load i32, i32* @vcn_v1_0_pause_dpg_mode, align 4
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %278 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 3
  store i32 %276, i32* %279, align 8
  %280 = load i32, i32* @UVD, align 4
  %281 = load i32, i32* @mmUVD_JPEG_PITCH, align 4
  %282 = call i8* @SOC15_REG_OFFSET(i32 %280, i32 0, i32 %281)
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  store i8* %282, i8** %288, align 8
  %289 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %290 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  store i8* %282, i8** %292, align 8
  store i32 0, i32* %2, align 4
  br label %293

293:                                              ; preds = %275, %273, %247, %147, %125, %70, %63, %46, %22
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

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
