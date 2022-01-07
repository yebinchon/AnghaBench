; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.radeon_ps = type { i32, i32 }
%union.pplib_clock_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i64, i64, i64 }
%struct.evergreen_power_info = type { i8* }
%struct.si_power_info = type { i8*, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.rv7xx_pl }
%struct.rv7xx_pl = type { i32, i32, i64, i8*, i32, i32 }
%struct.ni_ps = type { i32, %struct.rv7xx_pl* }

@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@SISLANDS_ULVVOLTAGECHANGEDELAY_DFLT = common dso_local global i32 0, align 4
@SISLANDS_CGULVPARAMETER_DFLT = common dso_local global i32 0, align 4
@SISLANDS_CGULVCONTROL_DFLT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32, %union.pplib_clock_info*)* @si_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %struct.rv7xx_power_info*, align 8
  %10 = alloca %struct.evergreen_power_info*, align 8
  %11 = alloca %struct.si_power_info*, align 8
  %12 = alloca %struct.ni_ps*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.rv7xx_pl*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %8, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %19)
  store %struct.rv7xx_power_info* %20, %struct.rv7xx_power_info** %9, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %22 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %21)
  store %struct.evergreen_power_info* %22, %struct.evergreen_power_info** %10, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %23)
  store %struct.si_power_info* %24, %struct.si_power_info** %11, align 8
  %25 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %26 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %25)
  store %struct.ni_ps* %26, %struct.ni_ps** %12, align 8
  %27 = load %struct.ni_ps*, %struct.ni_ps** %12, align 8
  %28 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %27, i32 0, i32 1
  %29 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %29, i64 %31
  store %struct.rv7xx_pl* %32, %struct.rv7xx_pl** %14, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.ni_ps*, %struct.ni_ps** %12, align 8
  %36 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %38 = bitcast %union.pplib_clock_info* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %44 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %46 = bitcast %union.pplib_clock_info* %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %51 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %55 = bitcast %union.pplib_clock_info* %54 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %61 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %63 = bitcast %union.pplib_clock_info* %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 16
  %67 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %68 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %72 = bitcast %union.pplib_clock_info* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le16_to_cpu(i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %78 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %80 = bitcast %union.pplib_clock_info* %79 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %85 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %87 = bitcast %union.pplib_clock_info* %86 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %92 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %94 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %95 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %98 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %101 = bitcast %union.pplib_clock_info* %100 to %struct.TYPE_8__*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @r600_get_pcie_gen_support(%struct.radeon_device* %93, i32 %96, i32 %99, i32 %103)
  %105 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %106 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %108 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %109 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @si_get_leakage_voltage_from_leakage_index(%struct.radeon_device* %107, i64 %110, i8** %13)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %4
  %115 = load i8*, i8** %13, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %118 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %114, %4
  %120 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %121 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %128 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %131 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %133 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %136 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %138 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %141 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %126, %119
  %143 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %144 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %177

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %149
  %153 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %154 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %157 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 5
  %159 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %160 = bitcast %struct.rv7xx_pl* %158 to i8*
  %161 = bitcast %struct.rv7xx_pl* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 32, i1 false)
  %162 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %163 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 0, i32* %164, align 4
  %165 = load i32, i32* @SISLANDS_ULVVOLTAGECHANGEDELAY_DFLT, align 4
  %166 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %167 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  store i32 %165, i32* %168, align 8
  %169 = load i32, i32* @SISLANDS_CGULVPARAMETER_DFLT, align 4
  %170 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %171 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* @SISLANDS_CGULVCONTROL_DFLT, align 4
  %174 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %175 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  store i32 %173, i32* %176, align 8
  br label %177

177:                                              ; preds = %152, %149, %142
  %178 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %179 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %182 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %187 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %190 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %177
  %192 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %193 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %196 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp slt i64 %194, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %201 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %204 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %199, %191
  %206 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %207 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %205
  %213 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %214 = call i32 @radeon_atombios_get_default_voltages(%struct.radeon_device* %213, i8** %16, i8** %17, i8** %18)
  %215 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %220 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %222 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %226 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = ptrtoint i8* %227 to i64
  %229 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %230 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %229, i32 0, i32 2
  store i64 %228, i64* %230, align 8
  %231 = load i8*, i8** %17, align 8
  %232 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %233 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load i8*, i8** %18, align 8
  %235 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %236 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  br label %237

237:                                              ; preds = %212, %205
  %238 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %239 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %242 = and i32 %240, %241
  %243 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %282

245:                                              ; preds = %237
  %246 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %247 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store i32 %248, i32* %254, align 8
  %255 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %256 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  store i32 %257, i32* %263, align 4
  %264 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %265 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  store i64 %266, i64* %272, align 8
  %273 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %274 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %273, i32 0, i32 3
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 3
  store i8* %275, i8** %281, align 8
  br label %282

282:                                              ; preds = %245, %237
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @r600_get_pcie_gen_support(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @si_get_leakage_voltage_from_leakage_index(%struct.radeon_device*, i64, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @radeon_atombios_get_default_voltages(%struct.radeon_device*, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
