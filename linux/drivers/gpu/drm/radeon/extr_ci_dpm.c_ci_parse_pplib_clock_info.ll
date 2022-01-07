; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%union.pplib_clock_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ci_power_info = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.ci_pl }
%struct.ci_pl = type { i32, i32, i32, i32 }
%struct.ci_ps = type { i32, %struct.ci_pl* }

@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@CISLANDS_CGULVPARAMETER_DFLT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32, %union.pplib_clock_info*)* @ci_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %struct.ci_power_info*, align 8
  %10 = alloca %struct.ci_ps*, align 8
  %11 = alloca %struct.ci_pl*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %8, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %12)
  store %struct.ci_power_info* %13, %struct.ci_power_info** %9, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %15 = call %struct.ci_ps* @ci_get_ps(%struct.radeon_ps* %14)
  store %struct.ci_ps* %15, %struct.ci_ps** %10, align 8
  %16 = load %struct.ci_ps*, %struct.ci_ps** %10, align 8
  %17 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %16, i32 0, i32 1
  %18 = load %struct.ci_pl*, %struct.ci_pl** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %18, i64 %20
  store %struct.ci_pl* %21, %struct.ci_pl** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.ci_ps*, %struct.ci_ps** %10, align 8
  %25 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %27 = bitcast %union.pplib_clock_info* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le16_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %33 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %35 = bitcast %union.pplib_clock_info* %34 to %struct.TYPE_8__*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %40 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %44 = bitcast %union.pplib_clock_info* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %50 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %52 = bitcast %union.pplib_clock_info* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %57 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %62 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %65 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %69 = bitcast %union.pplib_clock_info* %68 to %struct.TYPE_8__*
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @r600_get_pcie_gen_support(%struct.radeon_device* %60, i32 %63, i32 %67, i32 %71)
  %73 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %74 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %76 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %77 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %81 = bitcast %union.pplib_clock_info* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le16_to_cpu(i32 %83)
  %85 = call i32 @r600_get_pcie_lane_support(%struct.radeon_device* %75, i32 %79, i8* %84)
  %86 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %87 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %4
  %95 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %96 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %99 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %4
  %101 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %102 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %109 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %112 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %115 = bitcast %struct.ci_pl* %113 to i8*
  %116 = bitcast %struct.ci_pl* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 16, i1 false)
  %117 = load i32, i32* @CISLANDS_CGULVPARAMETER_DFLT, align 4
  %118 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %119 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %107, %100
  %122 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %123 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %121
  %129 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %130 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %134 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %136 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %140 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %142 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %146 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %148 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %152 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %128, %121
  %154 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %155 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %158 = and i32 %156, %157
  switch i32 %158, label %293 [
    i32 129, label %159
    i32 128, label %226
  ]

159:                                              ; preds = %153
  %160 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %161 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %163 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %167 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %159
  %171 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %172 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %175 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %177

177:                                              ; preds = %170, %159
  %178 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %179 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %183 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %177
  %187 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %188 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %191 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  br label %193

193:                                              ; preds = %186, %177
  %194 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %195 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %199 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %204 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %207 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %193
  %210 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %211 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %215 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = icmp sgt i32 %213, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %209
  %219 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %220 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %223 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  br label %225

225:                                              ; preds = %218, %209
  br label %294

226:                                              ; preds = %153
  %227 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %228 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %227, i32 0, i32 1
  store i32 1, i32* %228, align 4
  %229 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %230 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %234 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %226
  %238 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %239 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %242 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  store i32 %240, i32* %243, align 4
  br label %244

244:                                              ; preds = %237, %226
  %245 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %246 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %250 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %244
  %254 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %255 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %258 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 4
  br label %260

260:                                              ; preds = %253, %244
  %261 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %262 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %266 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %260
  %270 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %271 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %274 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  br label %276

276:                                              ; preds = %269, %260
  %277 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %278 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %282 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %280, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %276
  %286 = load %struct.ci_pl*, %struct.ci_pl** %11, align 8
  %287 = getelementptr inbounds %struct.ci_pl, %struct.ci_pl* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.ci_power_info*, %struct.ci_power_info** %9, align 8
  %290 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 4
  br label %292

292:                                              ; preds = %285, %276
  br label %294

293:                                              ; preds = %153
  br label %294

294:                                              ; preds = %293, %292, %225
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ci_ps* @ci_get_ps(%struct.radeon_ps*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @r600_get_pcie_gen_support(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @r600_get_pcie_lane_support(%struct.radeon_device*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
