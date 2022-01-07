; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_calculate_nbps_level_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_calculate_nbps_level_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.amdgpu_clock_and_voltage_limits }
%struct.amdgpu_clock_and_voltage_limits = type { i64 }
%struct.kv_power_info = type { i64, i64, %struct.TYPE_10__*, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_calculate_nbps_level_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_calculate_nbps_level_settings(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_clock_and_voltage_limits*, align 8
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %9)
  store %struct.kv_power_info* %10, %struct.kv_power_info** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.amdgpu_clock_and_voltage_limits* %15, %struct.amdgpu_clock_and_voltage_limits** %7, align 8
  %16 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %20 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %23 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %239

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHIP_KABINI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHIP_MULLINS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %160

41:                                               ; preds = %35, %29
  %42 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %43 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %70, %41
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %48 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ule i64 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %59 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %51
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %75 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %239

80:                                               ; preds = %73
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %83 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp uge i64 %81, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %80
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %94, 3
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %98 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %96, %89, %80
  %102 = phi i1 [ true, %89 ], [ true, %80 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %123, %106
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %113 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ule i64 %111, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %118 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %117, i32 0, i32 2
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %116
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %5, align 8
  br label %110

126:                                              ; preds = %110
  br label %159

127:                                              ; preds = %101
  %128 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %129 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %134 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %127
  %139 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %140 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 4
  %144 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %145 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  %149 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %150 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 3
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 4
  %154 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %155 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %154, i32 0, i32 2
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 4
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 4
  br label %159

159:                                              ; preds = %138, %126
  br label %238

160:                                              ; preds = %35
  %161 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %162 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %189, %160
  %165 = load i64, i64* %5, align 8
  %166 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %167 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ule i64 %165, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %164
  %171 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %172 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %171, i32 0, i32 2
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 4
  %177 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %178 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %177, i32 0, i32 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load i64, i64* %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %184 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %183, i32 0, i32 2
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i64, i64* %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %170
  %190 = load i64, i64* %5, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %5, align 8
  br label %164

192:                                              ; preds = %164
  %193 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %194 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %237

198:                                              ; preds = %192
  %199 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %200 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %237

203:                                              ; preds = %198
  %204 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %205 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %204, i32 0, i32 2
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %208 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  store i32 40, i32* %211, align 4
  %212 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %213 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %212, i32 0, i32 2
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %216 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  store i32 0, i32* %219, align 4
  %220 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %221 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %224 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %222, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %203
  %228 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %229 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %228, i32 0, i32 2
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %232 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  store i32 1, i32* %235, align 4
  br label %236

236:                                              ; preds = %227, %203
  br label %237

237:                                              ; preds = %236, %198, %192
  br label %238

238:                                              ; preds = %237, %159
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %79, %26
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
