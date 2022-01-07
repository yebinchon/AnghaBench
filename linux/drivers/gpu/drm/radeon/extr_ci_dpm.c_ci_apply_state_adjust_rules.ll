; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits }
%struct.radeon_clock_and_voltage_limits = type { i64, i64 }
%struct.radeon_ps = type { i32, i64, i64, i64 }
%struct.ci_ps = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.ci_power_info = type { i32 }

@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @ci_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_apply_state_adjust_rules(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.ci_ps*, align 8
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca %struct.radeon_clock_and_voltage_limits*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %13 = call %struct.ci_ps* @ci_get_ps(%struct.radeon_ps* %12)
  store %struct.ci_ps* %13, %struct.ci_ps** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %14)
  store %struct.ci_power_info* %15, %struct.ci_power_info** %6, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %56

51:                                               ; preds = %2
  %52 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %20
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i64 @ci_dpm_vblank_too_short(%struct.radeon_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %56
  store i32 1, i32* %8, align 4
  br label %69

68:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %71 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %79 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %83

80:                                               ; preds = %69
  %81 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %82 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store %struct.radeon_clock_and_voltage_limits* %95, %struct.radeon_clock_and_voltage_limits** %7, align 8
  br label %102

96:                                               ; preds = %83
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.radeon_clock_and_voltage_limits* %101, %struct.radeon_clock_and_voltage_limits** %7, align 8
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %169

109:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %165, %109
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %113 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %168

116:                                              ; preds = %110
  %117 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %118 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %7, align 8
  %126 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %116
  %130 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %7, align 8
  %131 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %134 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i64 %132, i64* %139, align 8
  br label %140

140:                                              ; preds = %129, %116
  %141 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %142 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %7, align 8
  %150 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %148, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %140
  %154 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %7, align 8
  %155 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %158 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store i64 %156, i64* %163, align 8
  br label %164

164:                                              ; preds = %153, %140
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %110

168:                                              ; preds = %110
  br label %169

169:                                              ; preds = %168, %102
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %169
  %173 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %174 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %173, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %177 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %10, align 8
  %184 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %185 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %184, i32 0, i32 1
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %9, align 8
  br label %203

190:                                              ; preds = %169
  %191 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %192 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %10, align 8
  %197 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %198 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %9, align 8
  br label %203

203:                                              ; preds = %190, %172
  %204 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %205 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %269

208:                                              ; preds = %203
  %209 = load i64, i64* %9, align 8
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %209, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %208
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %9, align 8
  br label %238

238:                                              ; preds = %224, %208
  %239 = load i64, i64* %10, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp slt i64 %239, %252
  br i1 %253, label %254, label %268

254:                                              ; preds = %238
  %255 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %256 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %10, align 8
  br label %268

268:                                              ; preds = %254, %238
  br label %269

269:                                              ; preds = %268, %203
  %270 = load i64, i64* %9, align 8
  %271 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %272 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %271, i32 0, i32 1
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i64 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  store i64 %270, i64* %275, align 8
  %276 = load i64, i64* %10, align 8
  %277 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %278 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %277, i32 0, i32 1
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  store i64 %276, i64* %281, align 8
  %282 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %283 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %282, i32 0, i32 1
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i64 1
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %289 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %288, i32 0, i32 1
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp slt i64 %287, %293
  br i1 %294, label %295, label %307

295:                                              ; preds = %269
  %296 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %297 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %296, i32 0, i32 1
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %303 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %302, i32 0, i32 1
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 1
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  store i64 %301, i64* %306, align 8
  br label %307

307:                                              ; preds = %295, %269
  %308 = load i32, i32* %8, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %337

310:                                              ; preds = %307
  %311 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %312 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %311, i32 0, i32 1
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %318 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %317, i32 0, i32 1
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i64 1
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp slt i64 %316, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %310
  %325 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %326 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %325, i32 0, i32 1
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i64 1
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %332 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %331, i32 0, i32 1
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i64 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  store i64 %330, i64* %335, align 8
  br label %336

336:                                              ; preds = %324, %310
  br label %364

337:                                              ; preds = %307
  %338 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %339 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %338, i32 0, i32 1
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i64 1
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %345 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %344, i32 0, i32 1
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp slt i64 %343, %349
  br i1 %350, label %351, label %363

351:                                              ; preds = %337
  %352 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %353 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %352, i32 0, i32 1
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i64 0
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %359 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %358, i32 0, i32 1
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i64 1
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  store i64 %357, i64* %362, align 8
  br label %363

363:                                              ; preds = %351, %337
  br label %364

364:                                              ; preds = %363, %336
  ret void
}

declare dso_local %struct.ci_ps* @ci_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_dpm_vblank_too_short(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
