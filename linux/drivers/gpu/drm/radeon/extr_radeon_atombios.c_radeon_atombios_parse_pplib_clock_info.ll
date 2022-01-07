; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i8*, i8* }
%union.pplib_clock_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CHIP_PALM = common dso_local global i64 0, align 8
@CHIP_BONAIRE = common dso_local global i64 0, align 8
@VOLTAGE_NONE = common dso_local global i8* null, align 8
@CHIP_TAHITI = common dso_local global i64 0, align 8
@VOLTAGE_SW = common dso_local global i8* null, align 8
@CHIP_CEDAR = common dso_local global i64 0, align 8
@VOLTAGE_TYPE_VDDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %union.pplib_clock_info*)* @radeon_atombios_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device* %0, i32 %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.pplib_clock_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %9, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_IS_IGP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_PALM, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %27 = bitcast %union.pplib_clock_info* %26 to %struct.TYPE_14__*
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le16_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %33 = bitcast %union.pplib_clock_info* %32 to %struct.TYPE_14__*
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %39, i32* %52, align 8
  br label %81

53:                                               ; preds = %19
  %54 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %55 = bitcast %union.pplib_clock_info* %54 to %struct.TYPE_15__*
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %61 = bitcast %union.pplib_clock_info* %60 to %struct.TYPE_15__*
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %67, i32* %80, align 8
  br label %81

81:                                               ; preds = %53, %25
  br label %481

82:                                               ; preds = %4
  %83 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CHIP_BONAIRE, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %158

88:                                               ; preds = %82
  %89 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %90 = bitcast %union.pplib_clock_info* %89 to %struct.TYPE_16__*
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le16_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %96 = bitcast %union.pplib_clock_info* %95 to %struct.TYPE_16__*
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 16
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %103 = bitcast %union.pplib_clock_info* %102 to %struct.TYPE_16__*
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %11, align 4
  %108 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %109 = bitcast %union.pplib_clock_info* %108 to %struct.TYPE_16__*
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 16
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32 %115, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %129, i32* %142, align 8
  %143 = load i8*, i8** @VOLTAGE_NONE, align 8
  %144 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  store i8* %143, i8** %157, align 8
  br label %480

158:                                              ; preds = %82
  %159 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CHIP_TAHITI, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %273

164:                                              ; preds = %158
  %165 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %166 = bitcast %union.pplib_clock_info* %165 to %struct.TYPE_18__*
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @le16_to_cpu(i32 %168)
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* %10, align 4
  %171 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %172 = bitcast %union.pplib_clock_info* %171 to %struct.TYPE_18__*
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 16
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  %178 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %179 = bitcast %union.pplib_clock_info* %178 to %struct.TYPE_18__*
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @le16_to_cpu(i32 %181)
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %11, align 4
  %184 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %185 = bitcast %union.pplib_clock_info* %184 to %struct.TYPE_18__*
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 16
  %189 = load i32, i32* %11, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  store i32 %191, i32* %204, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  store i32 %205, i32* %218, align 8
  %219 = load i8*, i8** @VOLTAGE_SW, align 8
  %220 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  store i8* %219, i8** %233, align 8
  %234 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %235 = bitcast %union.pplib_clock_info* %234 to %struct.TYPE_18__*
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @le16_to_cpu(i32 %237)
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  store i32 %239, i32* %253, align 8
  %254 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %255 = bitcast %union.pplib_clock_info* %254 to %struct.TYPE_18__*
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @le16_to_cpu(i32 %257)
  %259 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 2
  store i8* %258, i8** %272, align 8
  br label %479

273:                                              ; preds = %158
  %274 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @CHIP_CEDAR, align 8
  %278 = icmp sge i64 %276, %277
  br i1 %278, label %279, label %388

279:                                              ; preds = %273
  %280 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %281 = bitcast %union.pplib_clock_info* %280 to %struct.TYPE_12__*
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @le16_to_cpu(i32 %283)
  %285 = ptrtoint i8* %284 to i32
  store i32 %285, i32* %10, align 4
  %286 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %287 = bitcast %union.pplib_clock_info* %286 to %struct.TYPE_12__*
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = shl i32 %289, 16
  %291 = load i32, i32* %10, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %10, align 4
  %293 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %294 = bitcast %union.pplib_clock_info* %293 to %struct.TYPE_12__*
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = call i8* @le16_to_cpu(i32 %296)
  %298 = ptrtoint i8* %297 to i32
  store i32 %298, i32* %11, align 4
  %299 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %300 = bitcast %union.pplib_clock_info* %299 to %struct.TYPE_12__*
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 16
  %304 = load i32, i32* %11, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %11, align 4
  %306 = load i32, i32* %11, align 4
  %307 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %309, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  store i32 %306, i32* %319, align 4
  %320 = load i32, i32* %10, align 4
  %321 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %322 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  store i32 %320, i32* %333, align 8
  %334 = load i8*, i8** @VOLTAGE_SW, align 8
  %335 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %336 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %337, align 8
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 1
  store i8* %334, i8** %348, align 8
  %349 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %350 = bitcast %union.pplib_clock_info* %349 to %struct.TYPE_12__*
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = call i8* @le16_to_cpu(i32 %352)
  %354 = ptrtoint i8* %353 to i32
  %355 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %356 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %357, align 8
  %359 = load i32, i32* %7, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 0
  store i32 %354, i32* %368, align 8
  %369 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %370 = bitcast %union.pplib_clock_info* %369 to %struct.TYPE_12__*
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = call i8* @le16_to_cpu(i32 %372)
  %374 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %375 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %376, align 8
  %378 = load i32, i32* %7, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 2
  store i8* %373, i8** %387, align 8
  br label %478

388:                                              ; preds = %273
  %389 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %390 = bitcast %union.pplib_clock_info* %389 to %struct.TYPE_13__*
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = call i8* @le16_to_cpu(i32 %392)
  %394 = ptrtoint i8* %393 to i32
  store i32 %394, i32* %10, align 4
  %395 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %396 = bitcast %union.pplib_clock_info* %395 to %struct.TYPE_13__*
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = shl i32 %398, 16
  %400 = load i32, i32* %10, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %10, align 4
  %402 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %403 = bitcast %union.pplib_clock_info* %402 to %struct.TYPE_13__*
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = call i8* @le16_to_cpu(i32 %405)
  %407 = ptrtoint i8* %406 to i32
  store i32 %407, i32* %11, align 4
  %408 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %409 = bitcast %union.pplib_clock_info* %408 to %struct.TYPE_13__*
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = shl i32 %411, 16
  %413 = load i32, i32* %11, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %11, align 4
  %415 = load i32, i32* %11, align 4
  %416 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %417 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %418, align 8
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %423, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 1
  store i32 %415, i32* %428, align 4
  %429 = load i32, i32* %10, align 4
  %430 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %431 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %432, align 8
  %434 = load i32, i32* %7, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 0
  store i32 %429, i32* %442, align 8
  %443 = load i8*, i8** @VOLTAGE_SW, align 8
  %444 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %445 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %446, align 8
  %448 = load i32, i32* %7, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %451, align 8
  %453 = load i32, i32* %8, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 1
  store i8* %443, i8** %457, align 8
  %458 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %459 = bitcast %union.pplib_clock_info* %458 to %struct.TYPE_13__*
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = call i8* @le16_to_cpu(i32 %461)
  %463 = ptrtoint i8* %462 to i32
  %464 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %465 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %466, align 8
  %468 = load i32, i32* %7, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %471, align 8
  %473 = load i32, i32* %8, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %476, i32 0, i32 0
  store i32 %463, i32* %477, align 8
  br label %478

478:                                              ; preds = %388, %279
  br label %479

479:                                              ; preds = %478, %164
  br label %480

480:                                              ; preds = %479, %88
  br label %481

481:                                              ; preds = %480, %81
  %482 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %483 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_19__*, %struct.TYPE_19__** %484, align 8
  %486 = load i32, i32* %7, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_11__*, %struct.TYPE_11__** %489, align 8
  %491 = load i32, i32* %8, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  switch i32 %496, label %534 [
    i32 135, label %497
    i32 134, label %497
    i32 133, label %497
    i32 132, label %497
    i32 131, label %497
    i32 130, label %497
    i32 129, label %497
    i32 128, label %497
  ]

497:                                              ; preds = %481, %481, %481, %481, %481, %481, %481, %481
  %498 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %499 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %500 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %501 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i32 0, i32 0
  %503 = load %struct.TYPE_19__*, %struct.TYPE_19__** %502, align 8
  %504 = load i32, i32* %7, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i32 0, i32 0
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %507, align 8
  %509 = load i32, i32* %8, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = call i32 @radeon_atom_get_max_vddc(%struct.radeon_device* %498, i32 %499, i32 %514, i32* %12)
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %533

517:                                              ; preds = %497
  %518 = load i32, i32* %12, align 4
  %519 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %520 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_19__*, %struct.TYPE_19__** %521, align 8
  %523 = load i32, i32* %7, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %525, i32 0, i32 0
  %527 = load %struct.TYPE_11__*, %struct.TYPE_11__** %526, align 8
  %528 = load i32, i32* %8, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %527, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %531, i32 0, i32 0
  store i32 %518, i32* %532, align 8
  br label %533

533:                                              ; preds = %517, %497
  br label %535

534:                                              ; preds = %481
  br label %535

535:                                              ; preds = %534, %533
  %536 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %537 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @RADEON_IS_IGP, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %560

542:                                              ; preds = %535
  %543 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %544 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %544, i32 0, i32 0
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %545, align 8
  %547 = load i32, i32* %7, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %549, i32 0, i32 0
  %551 = load %struct.TYPE_11__*, %struct.TYPE_11__** %550, align 8
  %552 = load i32, i32* %8, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %559

558:                                              ; preds = %542
  store i32 0, i32* %5, align 4
  br label %595

559:                                              ; preds = %542
  br label %594

560:                                              ; preds = %535
  %561 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %562 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %561, i32 0, i32 2
  %563 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** %563, align 8
  %565 = load i32, i32* %7, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %567, i32 0, i32 0
  %569 = load %struct.TYPE_11__*, %struct.TYPE_11__** %568, align 8
  %570 = load i32, i32* %8, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %592, label %576

576:                                              ; preds = %560
  %577 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %578 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %577, i32 0, i32 2
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 0
  %580 = load %struct.TYPE_19__*, %struct.TYPE_19__** %579, align 8
  %581 = load i32, i32* %7, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %580, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %583, i32 0, i32 0
  %585 = load %struct.TYPE_11__*, %struct.TYPE_11__** %584, align 8
  %586 = load i32, i32* %8, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %593

592:                                              ; preds = %576, %560
  store i32 0, i32* %5, align 4
  br label %595

593:                                              ; preds = %576
  br label %594

594:                                              ; preds = %593, %559
  store i32 1, i32* %5, align 4
  br label %595

595:                                              ; preds = %594, %592, %558
  %596 = load i32, i32* %5, align 4
  ret i32 %596
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atom_get_max_vddc(%struct.radeon_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
