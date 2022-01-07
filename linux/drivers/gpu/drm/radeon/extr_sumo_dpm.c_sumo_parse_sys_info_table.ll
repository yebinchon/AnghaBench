; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_parse_sys_info_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_parse_sys_info_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sumo_power_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8*, i8*, i8*, i8* }
%union.igp_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported IGP table: %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", align 1
@NUMBER_OF_M3ARB_PARAM_SETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @sumo_parse_sys_info_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sumo_parse_sys_info_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.sumo_power_info*, align 8
  %5 = alloca %struct.radeon_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.igp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %12)
  store %struct.sumo_power_info* %13, %struct.sumo_power_info** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  store %struct.radeon_mode_info* %15, %struct.radeon_mode_info** %5, align 8
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @IntegratedSystemInfo, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @atom_parse_data_header(%struct.TYPE_6__* %21, i32 %22, i32* null, i32* %8, i32* %9, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %276

25:                                               ; preds = %1
  %26 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %union.igp_info*
  store %union.igp_info* %33, %union.igp_info** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 6
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %277

42:                                               ; preds = %25
  %43 = load %union.igp_info*, %union.igp_info** %7, align 8
  %44 = bitcast %union.igp_info* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 18
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 19
  store i8* %47, i8** %50, align 8
  %51 = load %union.igp_info*, %union.igp_info** %7, align 8
  %52 = bitcast %union.igp_info* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 18
  store i8* %55, i8** %58, align 8
  %59 = load %union.igp_info*, %union.igp_info** %7, align 8
  %60 = bitcast %union.igp_info* %59 to %struct.TYPE_5__*
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 16
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 17
  store i8* %63, i8** %66, align 8
  %67 = load %union.igp_info*, %union.igp_info** %7, align 8
  %68 = bitcast %union.igp_info* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 15
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @le16_to_cpu(i32 %70)
  %72 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %73 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 16
  store i8* %71, i8** %74, align 8
  %75 = load %union.igp_info*, %union.igp_info** %7, align 8
  %76 = bitcast %union.igp_info* %75 to %struct.TYPE_5__*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %42
  %81 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 203, i32* %83, align 8
  br label %92

84:                                               ; preds = %42
  %85 = load %union.igp_info*, %union.igp_info** %7, align 8
  %86 = bitcast %union.igp_info* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %84, %80
  %93 = load %union.igp_info*, %union.igp_info** %7, align 8
  %94 = bitcast %union.igp_info* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %100 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 5, i32* %101, align 4
  br label %110

102:                                              ; preds = %92
  %103 = load %union.igp_info*, %union.igp_info** %7, align 8
  %104 = bitcast %union.igp_info* %103 to %struct.TYPE_5__*
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %102, %98
  %111 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %112 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %116 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %114, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %110
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %176, %122
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @NUMBER_OF_M3ARB_PARAM_SETS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %179

127:                                              ; preds = %123
  %128 = load %union.igp_info*, %union.igp_info** %7, align 8
  %129 = bitcast %union.igp_info* %128 to %struct.TYPE_5__*
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 14
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %138 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 15
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* %136, i8** %143, align 8
  %144 = load %union.igp_info*, %union.igp_info** %7, align 8
  %145 = bitcast %union.igp_info* %144 to %struct.TYPE_5__*
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 13
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @le32_to_cpu(i32 %151)
  %153 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 14
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %152, i8** %159, align 8
  %160 = load %union.igp_info*, %union.igp_info** %7, align 8
  %161 = bitcast %union.igp_info* %160 to %struct.TYPE_5__*
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 12
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @le32_to_cpu(i32 %167)
  %169 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %170 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 13
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %168, i8** %175, align 8
  br label %176

176:                                              ; preds = %127
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %123

179:                                              ; preds = %123
  %180 = load %union.igp_info*, %union.igp_info** %7, align 8
  %181 = bitcast %union.igp_info* %180 to %struct.TYPE_5__*
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @le32_to_cpu(i32 %183)
  %185 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %186 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 12
  store i8* %184, i8** %187, align 8
  %188 = load %union.igp_info*, %union.igp_info** %7, align 8
  %189 = bitcast %union.igp_info* %188 to %struct.TYPE_5__*
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 10
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @le32_to_cpu(i32 %191)
  %193 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %194 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 11
  store i8* %192, i8** %195, align 8
  %196 = load %union.igp_info*, %union.igp_info** %7, align 8
  %197 = bitcast %union.igp_info* %196 to %struct.TYPE_5__*
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @le16_to_cpu(i32 %199)
  %201 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %202 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 10
  store i8* %200, i8** %203, align 8
  %204 = load %union.igp_info*, %union.igp_info** %7, align 8
  %205 = bitcast %union.igp_info* %204 to %struct.TYPE_5__*
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @le16_to_cpu(i32 %207)
  %209 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %210 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 9
  store i8* %208, i8** %211, align 8
  %212 = load %union.igp_info*, %union.igp_info** %7, align 8
  %213 = bitcast %union.igp_info* %212 to %struct.TYPE_5__*
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @le16_to_cpu(i32 %215)
  %217 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %218 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 8
  store i8* %216, i8** %219, align 8
  %220 = load %union.igp_info*, %union.igp_info** %7, align 8
  %221 = bitcast %union.igp_info* %220 to %struct.TYPE_5__*
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @le32_to_cpu(i32 %223)
  %225 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %226 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 7
  store i8* %224, i8** %227, align 8
  %228 = load %union.igp_info*, %union.igp_info** %7, align 8
  %229 = bitcast %union.igp_info* %228 to %struct.TYPE_5__*
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %233 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 6
  store i32 %231, i32* %234, align 8
  %235 = load %union.igp_info*, %union.igp_info** %7, align 8
  %236 = bitcast %union.igp_info* %235 to %struct.TYPE_5__*
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %179
  %241 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %242 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  store i32 1, i32* %243, align 8
  br label %248

244:                                              ; preds = %179
  %245 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %246 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  store i32 0, i32* %247, align 8
  br label %248

248:                                              ; preds = %244, %240
  %249 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %250 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %251 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 5
  %253 = load %union.igp_info*, %union.igp_info** %7, align 8
  %254 = bitcast %union.igp_info* %253 to %struct.TYPE_5__*
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @sumo_construct_display_voltage_mapping_table(%struct.radeon_device* %249, i32* %252, i32 %256)
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %260 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 4
  %262 = load %union.igp_info*, %union.igp_info** %7, align 8
  %263 = bitcast %union.igp_info* %262 to %struct.TYPE_5__*
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @sumo_construct_sclk_voltage_mapping_table(%struct.radeon_device* %258, i32* %261, i32 %265)
  %267 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %268 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %269 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 3
  %271 = load %union.igp_info*, %union.igp_info** %7, align 8
  %272 = bitcast %union.igp_info* %271 to %struct.TYPE_5__*
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @sumo_construct_vid_mapping_table(%struct.radeon_device* %267, i32* %270, i32 %274)
  br label %276

276:                                              ; preds = %248, %1
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %276, %36
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_6__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @sumo_construct_display_voltage_mapping_table(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @sumo_construct_sclk_voltage_mapping_table(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @sumo_construct_vid_mapping_table(%struct.radeon_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
