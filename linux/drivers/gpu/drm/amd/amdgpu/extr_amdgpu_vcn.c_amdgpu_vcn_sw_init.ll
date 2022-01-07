; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.common_firmware_header = type { i32, i32 }

@amdgpu_vcn_idle_work_handler = common dso_local global i32 0, align 4
@FIRMWARE_RAVEN2 = common dso_local global i8* null, align 8
@FIRMWARE_PICASSO = common dso_local global i8* null, align 8
@FIRMWARE_RAVEN = common dso_local global i8* null, align 8
@FIRMWARE_ARCTURUS = common dso_local global i8* null, align 8
@FIRMWARE_RENOIR = common dso_local global i8* null, align 8
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@FIRMWARE_NAVI10 = common dso_local global i8* null, align 8
@FIRMWARE_NAVI14 = common dso_local global i8* null, align 8
@FIRMWARE_NAVI12 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu_vcn: Can't load firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"amdgpu_vcn: Can't validate firmware \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Found VCN firmware Version ENC: %hu.%hu DEC: %hu VEP: %hu Revision: %hu\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Found VCN firmware Version: %hu.%hu Family ID: %hu\0A\00", align 1
@AMDGPU_VCN_STACK_SIZE = common dso_local global i64 0, align 8
@AMDGPU_VCN_CONTEXT_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"(%d) failed to allocate vcn bo\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"(%d) failed to allocate DPG bo\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vcn_sw_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.common_firmware_header*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 9
  %21 = load i32, i32* @amdgpu_vcn_idle_work_handler, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %128 [
    i32 129, label %26
    i32 133, label %46
    i32 128, label %48
    i32 132, label %68
    i32 130, label %88
    i32 131, label %108
  ]

26:                                               ; preds = %1
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @FIRMWARE_RAVEN2, align 8
  store i8* %32, i8** %5, align 8
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 6
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5592
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** @FIRMWARE_PICASSO, align 8
  store i8* %41, i8** %5, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i8*, i8** @FIRMWARE_RAVEN, align 8
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %31
  br label %131

46:                                               ; preds = %1
  %47 = load i8*, i8** @FIRMWARE_ARCTURUS, align 8
  store i8* %47, i8** %5, align 8
  br label %131

48:                                               ; preds = %1
  %49 = load i8*, i8** @FIRMWARE_RENOIR, align 8
  store i8* %49, i8** %5, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %56, %48
  br label %131

68:                                               ; preds = %1
  %69 = load i8*, i8** @FIRMWARE_NAVI10, align 8
  store i8* %69, i8** %5, align 8
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %76, %68
  br label %131

88:                                               ; preds = %1
  %89 = load i8*, i8** @FIRMWARE_NAVI14, align 8
  store i8* %89, i8** %5, align 8
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %96, %88
  br label %131

108:                                              ; preds = %1
  %109 = load i8*, i8** @FIRMWARE_NAVI12, align 8
  store i8* %109, i8** %5, align 8
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %108
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %116, %108
  br label %131

128:                                              ; preds = %1
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %362

131:                                              ; preds = %127, %107, %87, %67, %46, %45
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 8
  %135 = load i8*, i8** %5, align 8
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @request_firmware(%struct.TYPE_12__** %134, i8* %135, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %131
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %362

149:                                              ; preds = %131
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = call i32 @amdgpu_ucode_validate(%struct.TYPE_12__* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %149
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %161)
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = call i32 @release_firmware(%struct.TYPE_12__* %166)
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %170, align 8
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %362

172:                                              ; preds = %149
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %179, %struct.common_firmware_header** %6, align 8
  %180 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %181 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @le32_to_cpu(i32 %182)
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %188 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le32_to_cpu(i32 %189)
  %191 = ashr i32 %190, 20
  %192 = and i32 %191, 15
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %7, align 1
  %194 = load i8, i8* %7, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %228

196:                                              ; preds = %172
  %197 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %198 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @le32_to_cpu(i32 %199)
  %201 = and i32 %200, 4095
  store i32 %201, i32* %14, align 4
  %202 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %203 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @le32_to_cpu(i32 %204)
  %206 = ashr i32 %205, 12
  %207 = and i32 %206, 255
  store i32 %207, i32* %12, align 4
  %208 = load i8, i8* %7, align 1
  %209 = zext i8 %208 to i32
  store i32 %209, i32* %11, align 4
  %210 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %211 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le32_to_cpu(i32 %212)
  %214 = ashr i32 %213, 24
  %215 = and i32 %214, 15
  store i32 %215, i32* %10, align 4
  %216 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %217 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @le32_to_cpu(i32 %218)
  %220 = ashr i32 %219, 28
  %221 = and i32 %220, 15
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 (i8*, i32, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %223, i32 %224, i32 %225, i32 %226)
  br label %250

228:                                              ; preds = %172
  %229 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %230 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @le32_to_cpu(i32 %231)
  %233 = and i32 %232, 255
  store i32 %233, i32* %17, align 4
  %234 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %235 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @le32_to_cpu(i32 %236)
  %238 = ashr i32 %237, 24
  %239 = and i32 %238, 255
  store i32 %239, i32* %15, align 4
  %240 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %241 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le32_to_cpu(i32 %242)
  %244 = ashr i32 %243, 8
  %245 = and i32 %244, 255
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %17, align 4
  %249 = call i32 (i8*, i32, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %228, %196
  %251 = load i64, i64* @AMDGPU_VCN_STACK_SIZE, align 8
  %252 = load i64, i64* @AMDGPU_VCN_CONTEXT_SIZE, align 8
  %253 = add i64 %251, %252
  store i64 %253, i64* %4, align 8
  %254 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %255 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %269

260:                                              ; preds = %250
  %261 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %262 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @le32_to_cpu(i32 %263)
  %265 = add nsw i32 %264, 8
  %266 = call i64 @AMDGPU_GPU_PAGE_ALIGN(i32 %265)
  %267 = load i64, i64* %4, align 8
  %268 = add i64 %267, %266
  store i64 %268, i64* %4, align 8
  br label %269

269:                                              ; preds = %260, %250
  store i32 0, i32* %8, align 4
  br label %270

270:                                              ; preds = %328, %269
  %271 = load i32, i32* %8, align 4
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %273 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %271, %275
  br i1 %276, label %277, label %331

277:                                              ; preds = %270
  %278 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %279 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %8, align 4
  %283 = shl i32 1, %282
  %284 = and i32 %281, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %328

287:                                              ; preds = %277
  %288 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %289 = load i64, i64* %4, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* @PAGE_SIZE, align 4
  %292 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %293 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %294 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 7
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 2
  %301 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %302 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 7
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  %309 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %310 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 7
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = load i32, i32* %8, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %288, i32 %290, i32 %291, i32 %292, i32* %300, i32* %308, i32* %316)
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %287
  %321 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %322 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %9, align 4
  %325 = call i32 (i32, i8*, ...) @dev_err(i32 %323, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* %9, align 4
  store i32 %326, i32* %2, align 4
  br label %362

327:                                              ; preds = %287
  br label %328

328:                                              ; preds = %327, %286
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %8, align 4
  br label %270

331:                                              ; preds = %270
  %332 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %333 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %361

337:                                              ; preds = %331
  %338 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %339 = load i32, i32* @PAGE_SIZE, align 4
  %340 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %341 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %342 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 6
  %344 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %345 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 5
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %348 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 4
  %350 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %338, i32 512, i32 %339, i32 %340, i32* %343, i32* %346, i32* %349)
  store i32 %350, i32* %9, align 4
  %351 = load i32, i32* %9, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %337
  %354 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %355 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %9, align 4
  %358 = call i32 (i32, i8*, ...) @dev_err(i32 %356, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %357)
  %359 = load i32, i32* %9, align 4
  store i32 %359, i32* %2, align 4
  br label %362

360:                                              ; preds = %337
  br label %361

361:                                              ; preds = %360, %331
  store i32 0, i32* %2, align 4
  br label %362

362:                                              ; preds = %361, %353, %320, %157, %142, %128
  %363 = load i32, i32* %2, align 4
  ret i32 %363
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_12__**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_12__*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_12__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @AMDGPU_GPU_PAGE_ALIGN(i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
