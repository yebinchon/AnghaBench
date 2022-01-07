; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_12__, %struct.radeon_mode_info }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.radeon_mode_info = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%union.firmware_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Changing default dispclk from %dMhz to 600Mhz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_clock_info(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.firmware_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_pll*, align 8
  %11 = alloca %struct.radeon_pll*, align 8
  %12 = alloca %struct.radeon_pll*, align 8
  %13 = alloca %struct.radeon_pll*, align 8
  %14 = alloca %struct.radeon_pll*, align 8
  %15 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %4, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  store %struct.radeon_mode_info* %20, %struct.radeon_mode_info** %5, align 8
  %21 = load i32, i32* @DATA, align 4
  %22 = load i32, i32* @FirmwareInfo, align 4
  %23 = call i32 @GetIndexIntoMasterTable(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 11
  store %struct.radeon_pll* %26, %struct.radeon_pll** %10, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 10
  store %struct.radeon_pll* %29, %struct.radeon_pll** %11, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 9
  store %struct.radeon_pll* %32, %struct.radeon_pll** %12, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  store %struct.radeon_pll* %35, %struct.radeon_pll** %13, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  store %struct.radeon_pll* %38, %struct.radeon_pll** %14, align 8
  %39 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @atom_parse_data_header(%struct.TYPE_16__* %41, i32 %42, i32* null, i32* %8, i32* %9, i64* %15)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %498

45:                                               ; preds = %1
  %46 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = add nsw i64 %50, %51
  %53 = inttoptr i64 %52 to %union.firmware_info*
  store %union.firmware_info* %53, %union.firmware_info** %7, align 8
  %54 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %55 = bitcast %union.firmware_info* %54 to %struct.TYPE_14__*
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %60 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %62 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %76

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %70 = bitcast %union.firmware_info* %69 to %struct.TYPE_14__*
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %75 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %85

76:                                               ; preds = %65, %45
  %77 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %78 = bitcast %union.firmware_info* %77 to %struct.TYPE_13__*
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le32_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %84 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %68
  %86 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %87 = bitcast %union.firmware_info* %86 to %struct.TYPE_14__*
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %93 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 4
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %85
  %100 = load i32, i32* %8, align 4
  %101 = icmp sge i32 %100, 2
  br i1 %101, label %102, label %141

102:                                              ; preds = %99, %96
  %103 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %104 = bitcast %union.firmware_info* %103 to %struct.TYPE_15__*
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = mul nsw i32 %107, 100
  %109 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %110 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %112 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %117 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %120 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %102
  %122 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %123 = bitcast %union.firmware_info* %122 to %struct.TYPE_15__*
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le16_to_cpu(i32 %125)
  %127 = mul nsw i32 %126, 100
  %128 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %129 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %131 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %121
  %135 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %136 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %139 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %121
  br label %152

141:                                              ; preds = %99
  %142 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %143 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %146 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %148 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %151 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %141, %140
  %153 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %154 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %159 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %163 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %162, i32 0, i32 1
  store i32 64800, i32* %163, align 4
  br label %167

164:                                              ; preds = %157
  %165 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %166 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %165, i32 0, i32 1
  store i32 20000, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %152
  %169 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %170 = bitcast %union.firmware_info* %169 to %struct.TYPE_14__*
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %175 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %177 = bitcast %union.firmware_info* %176 to %struct.TYPE_14__*
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le16_to_cpu(i32 %179)
  %181 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %182 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load %struct.radeon_pll*, %struct.radeon_pll** %11, align 8
  %184 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %185 = bitcast %struct.radeon_pll* %183 to i8*
  %186 = bitcast %struct.radeon_pll* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 40, i1 false)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %188 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %168
  %191 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %192 = bitcast %union.firmware_info* %191 to %struct.TYPE_9__*
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @le16_to_cpu(i32 %194)
  %196 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %197 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %206

198:                                              ; preds = %168
  %199 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %200 = bitcast %union.firmware_info* %199 to %struct.TYPE_14__*
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le16_to_cpu(i32 %202)
  %204 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %205 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %198, %190
  %207 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %208 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %207, i32 0, i32 7
  store i64 0, i64* %208, align 8
  %209 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %210 = bitcast %union.firmware_info* %209 to %struct.TYPE_14__*
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 12
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le16_to_cpu(i32 %212)
  %214 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %215 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %217 = bitcast %union.firmware_info* %216 to %struct.TYPE_14__*
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 11
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @le32_to_cpu(i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %223 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %225 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %206
  %229 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %230 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %234 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %233, i32 0, i32 1
  store i32 64800, i32* %234, align 4
  br label %238

235:                                              ; preds = %228
  %236 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %237 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %236, i32 0, i32 1
  store i32 20000, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %232
  br label %239

239:                                              ; preds = %238, %206
  %240 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %241 = bitcast %union.firmware_info* %240 to %struct.TYPE_14__*
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @le16_to_cpu(i32 %243)
  %245 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %246 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 4
  %247 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %248 = bitcast %union.firmware_info* %247 to %struct.TYPE_14__*
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @le16_to_cpu(i32 %250)
  %252 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %253 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 8
  %254 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %255 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %239
  %258 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %259 = bitcast %union.firmware_info* %258 to %struct.TYPE_9__*
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @le16_to_cpu(i32 %261)
  %263 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %264 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  br label %273

265:                                              ; preds = %239
  %266 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %267 = bitcast %union.firmware_info* %266 to %struct.TYPE_14__*
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le16_to_cpu(i32 %269)
  %271 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %272 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %265, %257
  %274 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %275 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %274, i32 0, i32 7
  store i64 0, i64* %275, align 8
  %276 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %277 = bitcast %union.firmware_info* %276 to %struct.TYPE_14__*
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @le16_to_cpu(i32 %279)
  %281 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %282 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %284 = bitcast %union.firmware_info* %283 to %struct.TYPE_14__*
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = call i8* @le32_to_cpu(i32 %286)
  %288 = ptrtoint i8* %287 to i32
  %289 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %290 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %292 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %273
  %296 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %297 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %301 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %300, i32 0, i32 1
  store i32 64800, i32* %301, align 4
  br label %305

302:                                              ; preds = %295
  %303 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %304 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %303, i32 0, i32 1
  store i32 20000, i32* %304, align 4
  br label %305

305:                                              ; preds = %302, %299
  br label %306

306:                                              ; preds = %305, %273
  %307 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %308 = bitcast %union.firmware_info* %307 to %struct.TYPE_14__*
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @le16_to_cpu(i32 %310)
  %312 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %313 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %312, i32 0, i32 5
  store i32 %311, i32* %313, align 4
  %314 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %315 = bitcast %union.firmware_info* %314 to %struct.TYPE_14__*
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @le16_to_cpu(i32 %317)
  %319 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %320 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %319, i32 0, i32 6
  store i32 %318, i32* %320, align 8
  %321 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %322 = bitcast %union.firmware_info* %321 to %struct.TYPE_14__*
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = call i8* @le32_to_cpu(i32 %324)
  %326 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 6
  store i8* %325, i8** %328, align 8
  %329 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %330 = bitcast %union.firmware_info* %329 to %struct.TYPE_14__*
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i8* @le32_to_cpu(i32 %332)
  %334 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 5
  store i8* %333, i8** %336, align 8
  %337 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %338 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %413

340:                                              ; preds = %306
  %341 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %342 = bitcast %union.firmware_info* %341 to %struct.TYPE_9__*
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @le32_to_cpu(i32 %344)
  %346 = ptrtoint i8* %345 to i32
  %347 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %348 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  store i32 %346, i32* %349, align 8
  %350 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %351 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %340
  %356 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %357 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %361 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 0
  store i32 60000, i32* %362, align 8
  br label %376

363:                                              ; preds = %355
  %364 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %365 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 0
  store i32 54000, i32* %370, align 8
  br label %375

371:                                              ; preds = %363
  %372 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %373 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  store i32 60000, i32* %374, align 8
  br label %375

375:                                              ; preds = %371, %367
  br label %376

376:                                              ; preds = %375, %359
  br label %377

377:                                              ; preds = %376, %340
  %378 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %379 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %397

381:                                              ; preds = %377
  %382 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %383 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp slt i32 %385, 53900
  br i1 %386, label %387, label %397

387:                                              ; preds = %381
  %388 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %389 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = sdiv i32 %391, 100
  %393 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %392)
  %394 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %395 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 0
  store i32 60000, i32* %396, align 8
  br label %397

397:                                              ; preds = %387, %381, %377
  %398 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %399 = bitcast %union.firmware_info* %398 to %struct.TYPE_9__*
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @le16_to_cpu(i32 %401)
  %403 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %404 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 1
  store i32 %402, i32* %405, align 4
  %406 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %407 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %411 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 2
  store i32 %409, i32* %412, align 8
  br label %413

413:                                              ; preds = %397, %306
  %414 = load %struct.radeon_pll*, %struct.radeon_pll** %12, align 8
  %415 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %416 = bitcast %struct.radeon_pll* %414 to i8*
  %417 = bitcast %struct.radeon_pll* %415 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %416, i8* align 8 %417, i64 40, i1 false)
  %418 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %419 = bitcast %union.firmware_info* %418 to %struct.TYPE_14__*
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @le16_to_cpu(i32 %421)
  %423 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %424 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 3
  store i32 %422, i32* %425, align 4
  %426 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %427 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %413
  %432 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %433 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 3
  store i32 40000, i32* %434, align 4
  br label %435

435:                                              ; preds = %431, %413
  %436 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %437 = bitcast %union.firmware_info* %436 to %struct.TYPE_14__*
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @le16_to_cpu(i32 %440)
  %442 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %443 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %443, i32 0, i32 0
  store i32 %441, i32* %444, align 8
  %445 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %446 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %458

448:                                              ; preds = %435
  %449 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %450 = bitcast %union.firmware_info* %449 to %struct.TYPE_11__*
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = call i8* @le32_to_cpu(i32 %452)
  %454 = ptrtoint i8* %453 to i32
  %455 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %456 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 4
  store i32 %454, i32* %457, align 8
  br label %487

458:                                              ; preds = %435
  %459 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %460 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %458
  %463 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %464 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %468 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 4
  store i32 %466, i32* %469, align 8
  br label %486

470:                                              ; preds = %458
  %471 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %472 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %470
  %475 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %476 = call i32 @radeon_atombios_get_dentist_vco_freq(%struct.radeon_device* %475)
  br label %485

477:                                              ; preds = %470
  %478 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %479 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %483 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %483, i32 0, i32 4
  store i32 %481, i32* %484, align 8
  br label %485

485:                                              ; preds = %477, %474
  br label %486

486:                                              ; preds = %485, %462
  br label %487

487:                                              ; preds = %486, %448
  %488 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %489 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 8
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %497

493:                                              ; preds = %487
  %494 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %495 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %495, i32 0, i32 4
  store i32 360000, i32* %496, align 8
  br label %497

497:                                              ; preds = %493, %487
  store i32 1, i32* %2, align 4
  br label %499

498:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %499

499:                                              ; preds = %498, %497
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_16__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_get_dentist_vco_freq(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
