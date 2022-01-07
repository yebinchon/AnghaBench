; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.common_firmware_header = type { i32 }

@amdgpu_ih_clientid_uvds = common dso_local global i32* null, align 8
@UVD_7_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT = common dso_local global i64 0, align 8
@UVD_7_0__SRCID__UVD_ENC_GEN_PURP = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_UVD = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@UVD7_MAX_HW_INSTANCES_VEGA20 = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_UVD1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"PSP loading UVD firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"uvd_%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"uvd_enc_%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v7_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_sw_init(i8* %0) #0 {
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

12:                                               ; preds = %87, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %87

29:                                               ; preds = %19
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = load i32*, i32** @amdgpu_ih_clientid_uvds, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @UVD_7_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %30, i32 %35, i64 %36, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %343

50:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %60 = load i32*, i32** @amdgpu_ih_clientid_uvds, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @UVD_7_0__SRCID__UVD_ENC_GEN_PURP, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %59, i32 %64, i64 %68, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %58
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %343

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %51

86:                                               ; preds = %51
  br label %87

87:                                               ; preds = %86, %28
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %12

90:                                               ; preds = %12
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %92 = call i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %343

97:                                               ; preds = %90
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %185

104:                                              ; preds = %97
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %111, %struct.common_firmware_header** %9, align 8
  %112 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 %112, i64* %119, align 8
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %130, align 8
  %131 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %132 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = call i64 @ALIGN(i32 %134, i32 %135)
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %136
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 8
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @UVD7_MAX_HW_INSTANCES_VEGA20, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %183

150:                                              ; preds = %104
  %151 = load i64, i64* @AMDGPU_UCODE_ID_UVD1, align 8
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = load i64, i64* @AMDGPU_UCODE_ID_UVD1, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i64 %151, i64* %158, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = load i64, i64* @AMDGPU_UCODE_ID_UVD1, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %169, align 8
  %170 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %171 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le32_to_cpu(i32 %172)
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = call i64 @ALIGN(i32 %173, i32 %174)
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %177 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %175
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 8
  br label %183

183:                                              ; preds = %150, %104
  %184 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %97
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %317, %185
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %193, label %320

193:                                              ; preds = %186
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %6, align 4
  %199 = shl i32 1, %198
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  br label %317

203:                                              ; preds = %193
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %205 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %239, label %207

207:                                              ; preds = %203
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  store %struct.amdgpu_ring* %215, %struct.amdgpu_ring** %4, align 8
  %216 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %217 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %220 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %221)
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %224 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %226 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %223, %struct.amdgpu_ring* %224, i32 512, i32* %232, i32 0)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %207
  %237 = load i32, i32* %7, align 4
  store i32 %237, i32* %2, align 4
  br label %343

238:                                              ; preds = %207
  br label %239

239:                                              ; preds = %238, %203
  store i32 0, i32* %5, align 4
  br label %240

240:                                              ; preds = %313, %239
  %241 = load i32, i32* %5, align 4
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %241, %245
  br i1 %246, label %247, label %316

247:                                              ; preds = %240
  %248 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %249 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %256, i64 %258
  store %struct.amdgpu_ring* %259, %struct.amdgpu_ring** %4, align 8
  %260 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %261 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %264 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %5, align 4
  %267 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %262, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %265, i32 %266)
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %269 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %296

271:                                              ; preds = %247
  %272 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %273 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %272, i32 0, i32 1
  store i32 1, i32* %273, align 4
  %274 = load i32, i32* %5, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %271
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %278 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = mul nsw i32 %281, 2
  %283 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %284 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 4
  br label %295

285:                                              ; preds = %271
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %287 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %290, 2
  %292 = add nsw i32 %291, 1
  %293 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %294 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 4
  br label %295

295:                                              ; preds = %285, %276
  br label %296

296:                                              ; preds = %295, %247
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %298 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %297, %struct.amdgpu_ring* %298, i32 512, i32* %306, i32 0)
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %296
  %311 = load i32, i32* %7, align 4
  store i32 %311, i32* %2, align 4
  br label %343

312:                                              ; preds = %296
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %5, align 4
  br label %240

316:                                              ; preds = %240
  br label %317

317:                                              ; preds = %316, %202
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %6, align 4
  br label %186

320:                                              ; preds = %186
  %321 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %322 = call i32 @amdgpu_uvd_resume(%struct.amdgpu_device* %321)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = load i32, i32* %7, align 4
  store i32 %326, i32* %2, align 4
  br label %343

327:                                              ; preds = %320
  %328 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %329 = call i32 @amdgpu_uvd_entity_init(%struct.amdgpu_device* %328)
  store i32 %329, i32* %7, align 4
  %330 = load i32, i32* %7, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = load i32, i32* %7, align 4
  store i32 %333, i32* %2, align 4
  br label %343

334:                                              ; preds = %327
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %336 = call i32 @amdgpu_virt_alloc_mm_table(%struct.amdgpu_device* %335)
  store i32 %336, i32* %7, align 4
  %337 = load i32, i32* %7, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = load i32, i32* %7, align 4
  store i32 %340, i32* %2, align 4
  br label %343

341:                                              ; preds = %334
  %342 = load i32, i32* %7, align 4
  store i32 %342, i32* %2, align 4
  br label %343

343:                                              ; preds = %341, %339, %332, %325, %310, %236, %95, %80, %48
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i64, i32*) #1

declare dso_local i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_uvd_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_uvd_entity_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_alloc_mm_table(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
