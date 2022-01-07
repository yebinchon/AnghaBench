; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.radeon_ps = type { i32, i32 }
%union.pplib_clock_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32 }
%struct.evergreen_power_info = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, %struct.rv7xx_pl* }
%struct.rv7xx_pl = type { i32, i32, i32, i32, i8* }
%struct.ni_ps = type { i32, %struct.rv7xx_pl* }

@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32, %union.pplib_clock_info*)* @ni_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %struct.rv7xx_power_info*, align 8
  %10 = alloca %struct.evergreen_power_info*, align 8
  %11 = alloca %struct.ni_ps*, align 8
  %12 = alloca %struct.rv7xx_pl*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %17 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %16)
  store %struct.rv7xx_power_info* %17, %struct.rv7xx_power_info** %9, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %18)
  store %struct.evergreen_power_info* %19, %struct.evergreen_power_info** %10, align 8
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %21 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %20)
  store %struct.ni_ps* %21, %struct.ni_ps** %11, align 8
  %22 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %23 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %22, i32 0, i32 1
  %24 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %24, i64 %26
  store %struct.rv7xx_pl* %27, %struct.rv7xx_pl** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %31 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %33 = bitcast %union.pplib_clock_info* %32 to %struct.TYPE_8__*
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %39 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %41 = bitcast %union.pplib_clock_info* %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %46 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %50 = bitcast %union.pplib_clock_info* %49 to %struct.TYPE_8__*
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le16_to_cpu(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %56 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %58 = bitcast %union.pplib_clock_info* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %63 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %67 = bitcast %union.pplib_clock_info* %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %73 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %75 = bitcast %union.pplib_clock_info* %74 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le16_to_cpu(i32 %77)
  %79 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %80 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %82 = bitcast %union.pplib_clock_info* %81 to %struct.TYPE_8__*
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %87 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %89 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 65281
  br i1 %91, label %92, label %104

92:                                               ; preds = %4
  %93 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %94 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %99 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %102 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %4
  %105 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %104
  %112 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %113 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %116 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %118 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %121 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %123 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %122, i32 0, i32 1
  %124 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %123, align 8
  %125 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %124, i64 0
  %126 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %111
  %132 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %133 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  br label %137

134:                                              ; preds = %111
  %135 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %136 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %135, i32 0, i32 2
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %104
  %139 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %140 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %147 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %150 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %151 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store %struct.rv7xx_pl* %149, %struct.rv7xx_pl** %152, align 8
  br label %153

153:                                              ; preds = %145, %138
  %154 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %155 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %158 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %163 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %166 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %153
  %168 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %169 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %172 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %177 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %180 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %167
  %182 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %183 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %181
  %189 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %190 = call i32 @radeon_atombios_get_default_voltages(%struct.radeon_device* %189, i8** %13, i8** %14, i8** %15)
  %191 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %196 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %202 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %206 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load i8*, i8** %14, align 8
  %208 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %209 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %188, %181
  %211 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %212 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %255

218:                                              ; preds = %210
  %219 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %220 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %223 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  store i32 %221, i32* %227, align 8
  %228 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %229 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  store i32 %230, i32* %236, align 4
  %237 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %238 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 2
  store i32 %239, i32* %245, align 8
  %246 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %12, align 8
  %247 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 3
  store i8* %248, i8** %254, align 8
  br label %255

255:                                              ; preds = %218, %210
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_get_default_voltages(%struct.radeon_device*, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
