; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_single_memory_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_single_memory_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.ci_power_info = type { i64, i32, i64, i64, i64, i32, i64, i64, i64 }

@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i32 0, align 4
@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@STUTTER_ENABLE = common dso_local global i32 0, align 4
@MC_SEQ_MISC7 = common dso_local global i32 0, align 4
@MC_SEQ_MISC5 = common dso_local global i32 0, align 4
@MC_SEQ_MISC6 = common dso_local global i32 0, align 4
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64, %struct.TYPE_11__*)* @ci_populate_single_memory_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_single_memory_level(%struct.radeon_device* %0, i64 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.ci_power_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %11)
  store %struct.ci_power_info* %12, %struct.ci_power_info** %8, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = call i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device* %22, %struct.TYPE_12__* %27, i64 %28, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %388

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = call i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device* %47, %struct.TYPE_12__* %52, i64 %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %388

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = call i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device* %72, %struct.TYPE_12__* %77, i64 %78, i32* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %388

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %62
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  %90 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %91 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %96 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = call i32 @ci_populate_phase_value_based_on_mclk(%struct.radeon_device* %95, i32* %100, i64 %101, i32* %103)
  br label %105

105:                                              ; preds = %94, %87
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 4
  store i32 1, i32* %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 25
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  store i32 100, i32* %111, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 24
  store i64 0, i64* %113, align 8
  %114 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %115 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 22
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 6
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 7
  store i32 0, i32* %122, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 8
  store i32 0, i32* %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 9
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 10
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 23
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %133 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %105
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %139 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %137, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %136
  %143 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %144 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL, align 4
  %149 = call i32 @RREG32(i32 %148)
  %150 = load i32, i32* @STUTTER_ENABLE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sle i32 %158, 2
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 6
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %153, %147, %142, %136, %105
  %164 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %165 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i64, i64* %6, align 8
  %170 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %171 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp sle i64 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 7
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %168, %163
  %178 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %179 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %252

182:                                              ; preds = %177
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @si_get_mclk_frequency_ratio(i64 %183, i32 %186)
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %191 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %182
  %195 = load i64, i64* %6, align 8
  %196 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %197 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 8
  store i32 1, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %194, %182
  %204 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %205 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load i64, i64* %6, align 8
  %210 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %211 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %209, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 9
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %208, %203
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %217
  %223 = load i64, i64* %6, align 8
  %224 = call i32 @si_get_mclk_frequency_ratio(i64 %223, i32 1)
  %225 = load i32, i32* @MC_SEQ_MISC7, align 4
  %226 = call i32 @RREG32(i32 %225)
  %227 = ashr i32 %226, 16
  %228 = and i32 %227, 15
  %229 = icmp sge i32 %224, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %222
  %231 = load i32, i32* @MC_SEQ_MISC5, align 4
  %232 = call i32 @RREG32(i32 %231)
  %233 = ashr i32 %232, 1
  %234 = and i32 %233, 1
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 1, i32 0
  store i32 %237, i32* %10, align 4
  br label %246

238:                                              ; preds = %222
  %239 = load i32, i32* @MC_SEQ_MISC6, align 4
  %240 = call i32 @RREG32(i32 %239)
  %241 = ashr i32 %240, 1
  %242 = and i32 %241, 1
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 1, i32 0
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %238, %230
  br label %251

247:                                              ; preds = %217
  %248 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %249 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %247, %246
  br label %264

252:                                              ; preds = %177
  %253 = load i64, i64* %6, align 8
  %254 = call i32 @si_get_ddr3_mclk_frequency_ratio(i64 %253)
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 11
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* @MC_SEQ_MISC5, align 4
  %258 = call i32 @RREG32(i32 %257)
  %259 = ashr i32 %258, 1
  %260 = and i32 %259, 1
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 1, i32 0
  store i32 %263, i32* %10, align 4
  br label %264

264:                                              ; preds = %252, %251
  %265 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %266 = load i64, i64* %6, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %10, align 4
  %272 = call i32 @ci_calculate_mclk_params(%struct.radeon_device* %265, i64 %266, %struct.TYPE_11__* %267, i32 %270, i32 %271)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %264
  %276 = load i32, i32* %9, align 4
  store i32 %276, i32* %4, align 4
  br label %388

277:                                              ; preds = %264
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @VOLTAGE_SCALE, align 4
  %282 = mul nsw i32 %280, %281
  %283 = call i8* @cpu_to_be32(i32 %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @cpu_to_be32(i32 %289)
  %291 = ptrtoint i8* %290 to i32
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @VOLTAGE_SCALE, align 4
  %298 = mul nsw i32 %296, %297
  %299 = call i8* @cpu_to_be32(i32 %298)
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @VOLTAGE_SCALE, align 4
  %307 = mul nsw i32 %305, %306
  %308 = call i8* @cpu_to_be32(i32 %307)
  %309 = ptrtoint i8* %308 to i32
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 12
  %314 = load i32, i32* %313, align 8
  %315 = call i8* @cpu_to_be32(i32 %314)
  %316 = ptrtoint i8* %315 to i32
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 12
  store i32 %316, i32* %318, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 22
  %321 = load i64, i64* %320, align 8
  %322 = call i64 @cpu_to_be16(i64 %321)
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 22
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 13
  %327 = load i32, i32* %326, align 4
  %328 = call i8* @cpu_to_be32(i32 %327)
  %329 = ptrtoint i8* %328 to i32
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 13
  store i32 %329, i32* %331, align 4
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 14
  %334 = load i32, i32* %333, align 8
  %335 = call i8* @cpu_to_be32(i32 %334)
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 14
  store i32 %336, i32* %338, align 8
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 15
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @cpu_to_be32(i32 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 15
  store i32 %343, i32* %345, align 4
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 16
  %348 = load i32, i32* %347, align 8
  %349 = call i8* @cpu_to_be32(i32 %348)
  %350 = ptrtoint i8* %349 to i32
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 16
  store i32 %350, i32* %352, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 17
  %355 = load i32, i32* %354, align 4
  %356 = call i8* @cpu_to_be32(i32 %355)
  %357 = ptrtoint i8* %356 to i32
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 17
  store i32 %357, i32* %359, align 4
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 18
  %362 = load i32, i32* %361, align 8
  %363 = call i8* @cpu_to_be32(i32 %362)
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 18
  store i32 %364, i32* %366, align 8
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 19
  %369 = load i32, i32* %368, align 4
  %370 = call i8* @cpu_to_be32(i32 %369)
  %371 = ptrtoint i8* %370 to i32
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 19
  store i32 %371, i32* %373, align 4
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 20
  %376 = load i32, i32* %375, align 8
  %377 = call i8* @cpu_to_be32(i32 %376)
  %378 = ptrtoint i8* %377 to i32
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 20
  store i32 %378, i32* %380, align 8
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 21
  %383 = load i32, i32* %382, align 4
  %384 = call i8* @cpu_to_be32(i32 %383)
  %385 = ptrtoint i8* %384 to i32
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 21
  store i32 %385, i32* %387, align 4
  store i32 0, i32* %4, align 4
  br label %388

388:                                              ; preds = %277, %275, %84, %59, %34
  %389 = load i32, i32* %4, align 4
  ret i32 %389
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device*, %struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @ci_populate_phase_value_based_on_mclk(%struct.radeon_device*, i32*, i64, i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @si_get_mclk_frequency_ratio(i64, i32) #1

declare dso_local i32 @si_get_ddr3_mclk_frequency_ratio(i64) #1

declare dso_local i32 @ci_calculate_mclk_params(%struct.radeon_device*, i64, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
