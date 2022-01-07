; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.amdgpu_mode_info }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i8*, i8*, %struct.amdgpu_pll*, %struct.amdgpu_pll, %struct.amdgpu_pll }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.amdgpu_mode_info = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%union.firmware_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_MAX_PPLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Changing default dispclk from %dMhz to 600Mhz\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Changing default dispclk from %dMhz to 625Mhz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_get_clock_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_mode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_pll*, align 8
  %11 = alloca %struct.amdgpu_pll*, align 8
  %12 = alloca %struct.amdgpu_pll*, align 8
  %13 = alloca %union.firmware_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 2
  store %struct.amdgpu_mode_info* %15, %struct.amdgpu_mode_info** %3, align 8
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @FirmwareInfo, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_16__* %23, i32 %24, i32* null, i32* %5, i32* %6, i64* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %389

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 6
  %31 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %30, align 8
  %32 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %31, i64 0
  store %struct.amdgpu_pll* %32, %struct.amdgpu_pll** %10, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  store %struct.amdgpu_pll* %35, %struct.amdgpu_pll** %11, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  store %struct.amdgpu_pll* %38, %struct.amdgpu_pll** %12, align 8
  %39 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = inttoptr i64 %45 to %union.firmware_info*
  store %union.firmware_info* %46, %union.firmware_info** %13, align 8
  %47 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %48 = bitcast %union.firmware_info* %47 to %struct.TYPE_15__*
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %53 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %55 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %54, i32 0, i32 15
  store i64 0, i64* %55, align 8
  %56 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %57 = bitcast %union.firmware_info* %56 to %struct.TYPE_13__*
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %63 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %65 = bitcast %union.firmware_info* %64 to %struct.TYPE_15__*
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %71 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %73 = bitcast %union.firmware_info* %72 to %struct.TYPE_14__*
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = mul nsw i32 %76, 100
  %78 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %79 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %81 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %27
  %85 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %86 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %89 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %27
  %91 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %92 = bitcast %union.firmware_info* %91 to %struct.TYPE_14__*
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = mul nsw i32 %95, 100
  %97 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %98 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %100 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %105 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %108 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %90
  %110 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %111 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %116 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %115, i32 0, i32 1
  store i32 64800, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %119 = bitcast %union.firmware_info* %118 to %struct.TYPE_15__*
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 13
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %124 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %126 = bitcast %union.firmware_info* %125 to %struct.TYPE_15__*
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16_to_cpu(i32 %128)
  %130 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %131 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %133 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %132, i32 0, i32 7
  store i32 2, i32* %133, align 4
  %134 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %135 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %134, i32 0, i32 8
  store i32 127, i32* %135, align 8
  %136 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %137 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %136, i32 0, i32 16
  store i64 0, i64* %137, align 8
  %138 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %139 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %138, i32 0, i32 9
  store i32 9, i32* %139, align 4
  %140 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %141 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %140, i32 0, i32 10
  store i32 2, i32* %141, align 8
  %142 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %143 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %142, i32 0, i32 11
  store i32 1023, i32* %143, align 4
  %144 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %145 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %144, i32 0, i32 12
  store i32 4, i32* %145, align 8
  %146 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %147 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %146, i32 0, i32 13
  store i32 4095, i32* %147, align 4
  %148 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %149 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %148, i32 0, i32 14
  store i64 0, i64* %149, align 8
  store i32 1, i32* %9, align 4
  br label %150

150:                                              ; preds = %165, %117
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @AMDGPU_MAX_PPLL, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 6
  %158 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %158, i64 %160
  %162 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %10, align 8
  %163 = bitcast %struct.amdgpu_pll* %161 to i8*
  %164 = bitcast %struct.amdgpu_pll* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 80, i1 false)
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %150

168:                                              ; preds = %150
  %169 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %170 = bitcast %union.firmware_info* %169 to %struct.TYPE_9__*
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %175 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %177 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %176, i32 0, i32 15
  store i64 0, i64* %177, align 8
  %178 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %179 = bitcast %union.firmware_info* %178 to %struct.TYPE_15__*
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %184 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %186 = bitcast %union.firmware_info* %185 to %struct.TYPE_15__*
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le32_to_cpu(i32 %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %192 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %194 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %168
  %198 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %199 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %198, i32 0, i32 1
  store i32 64800, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %168
  %201 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %202 = bitcast %union.firmware_info* %201 to %struct.TYPE_15__*
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @le16_to_cpu(i32 %204)
  %206 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %207 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  %208 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %209 = bitcast %union.firmware_info* %208 to %struct.TYPE_15__*
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @le16_to_cpu(i32 %211)
  %213 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %214 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %213, i32 0, i32 6
  store i32 %212, i32* %214, align 8
  %215 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %216 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %215, i32 0, i32 7
  store i32 1, i32* %216, align 4
  %217 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %218 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %217, i32 0, i32 8
  store i32 1, i32* %218, align 8
  %219 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %220 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %219, i32 0, i32 10
  store i32 2, i32* %220, align 8
  %221 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %222 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %221, i32 0, i32 11
  store i32 255, i32* %222, align 4
  %223 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %224 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %223, i32 0, i32 12
  store i32 4, i32* %224, align 8
  %225 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %226 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %225, i32 0, i32 13
  store i32 255, i32* %226, align 4
  %227 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %11, align 8
  %228 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %227, i32 0, i32 14
  store i64 0, i64* %228, align 8
  %229 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %230 = bitcast %union.firmware_info* %229 to %struct.TYPE_9__*
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16_to_cpu(i32 %232)
  %234 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %235 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %237 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %236, i32 0, i32 15
  store i64 0, i64* %237, align 8
  %238 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %239 = bitcast %union.firmware_info* %238 to %struct.TYPE_15__*
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @le16_to_cpu(i32 %241)
  %243 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %244 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %246 = bitcast %union.firmware_info* %245 to %struct.TYPE_15__*
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @le32_to_cpu(i32 %248)
  %250 = ptrtoint i8* %249 to i32
  %251 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %252 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %254 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %200
  %258 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %259 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %258, i32 0, i32 1
  store i32 64800, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %200
  %261 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %262 = bitcast %union.firmware_info* %261 to %struct.TYPE_15__*
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le16_to_cpu(i32 %264)
  %266 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %267 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  %268 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %269 = bitcast %union.firmware_info* %268 to %struct.TYPE_15__*
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @le16_to_cpu(i32 %271)
  %273 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %274 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %273, i32 0, i32 6
  store i32 %272, i32* %274, align 8
  %275 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %276 = bitcast %union.firmware_info* %275 to %struct.TYPE_15__*
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @le32_to_cpu(i32 %278)
  %280 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %281 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 5
  store i8* %279, i8** %282, align 8
  %283 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %284 = bitcast %union.firmware_info* %283 to %struct.TYPE_15__*
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i8* @le32_to_cpu(i32 %286)
  %288 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %289 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 4
  store i8* %287, i8** %290, align 8
  %291 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %292 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %291, i32 0, i32 7
  store i32 1, i32* %292, align 4
  %293 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %294 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %293, i32 0, i32 8
  store i32 1, i32* %294, align 8
  %295 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %296 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %295, i32 0, i32 10
  store i32 2, i32* %296, align 8
  %297 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %298 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %297, i32 0, i32 11
  store i32 255, i32* %298, align 4
  %299 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %300 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %299, i32 0, i32 12
  store i32 4, i32* %300, align 8
  %301 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %302 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %301, i32 0, i32 13
  store i32 255, i32* %302, align 4
  %303 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %12, align 8
  %304 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %303, i32 0, i32 14
  store i64 0, i64* %304, align 8
  %305 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %306 = bitcast %union.firmware_info* %305 to %struct.TYPE_9__*
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i8* @le32_to_cpu(i32 %308)
  %310 = ptrtoint i8* %309 to i32
  %311 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %312 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  store i32 %310, i32* %313, align 8
  %314 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %315 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp slt i32 %317, 53900
  br i1 %318, label %319, label %329

319:                                              ; preds = %260
  %320 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %321 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sdiv i32 %323, 100
  %325 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %324)
  %326 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %327 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  store i32 60000, i32* %328, align 8
  br label %346

329:                                              ; preds = %260
  %330 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %331 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp sle i32 %333, 60000
  br i1 %334, label %335, label %345

335:                                              ; preds = %329
  %336 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %337 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sdiv i32 %339, 100
  %341 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %340)
  %342 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %343 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  store i32 62500, i32* %344, align 8
  br label %345

345:                                              ; preds = %335, %329
  br label %346

346:                                              ; preds = %345, %319
  %347 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %348 = bitcast %union.firmware_info* %347 to %struct.TYPE_9__*
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @le16_to_cpu(i32 %350)
  %352 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %353 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  store i32 %351, i32* %354, align 4
  %355 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %356 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %360 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 2
  store i32 %358, i32* %361, align 8
  %362 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %363 = bitcast %union.firmware_info* %362 to %struct.TYPE_15__*
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @le16_to_cpu(i32 %365)
  %367 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %368 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 3
  store i32 %366, i32* %369, align 4
  %370 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %371 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %346
  %376 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %377 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 3
  store i32 40000, i32* %378, align 4
  br label %379

379:                                              ; preds = %375, %346
  %380 = load %union.firmware_info*, %union.firmware_info** %13, align 8
  %381 = bitcast %union.firmware_info* %380 to %struct.TYPE_15__*
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @le16_to_cpu(i32 %384)
  %386 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %387 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %387, i32 0, i32 0
  store i32 %385, i32* %388, align 8
  store i32 0, i32* %8, align 4
  br label %389

389:                                              ; preds = %379, %1
  %390 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %391 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 5
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %395 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 1
  store i8* %393, i8** %396, align 8
  %397 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %398 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 4
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %402 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 0
  store i8* %400, i8** %403, align 8
  %404 = load i32, i32* %8, align 4
  ret i32 %404
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_16__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
