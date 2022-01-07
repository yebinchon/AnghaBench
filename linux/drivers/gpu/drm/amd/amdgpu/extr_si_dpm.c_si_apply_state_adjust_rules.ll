; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.amdgpu_clock_and_voltage_limits, i32, i32, i32, i32, %struct.amdgpu_clock_and_voltage_limits }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.amdgpu_ps = type { i64, i64, i64, i64, i64 }
%struct.si_ps = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }

@CHIP_HAINAN = common dso_local global i64 0, align 8
@CHIP_OLAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*)* @si_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_apply_state_adjust_rules(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ps*, align 8
  %5 = alloca %struct.si_ps*, align 8
  %6 = alloca %struct.amdgpu_clock_and_voltage_limits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %4, align 8
  %20 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %21 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %20)
  store %struct.si_ps* %21, %struct.si_ps** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_HAINAN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %2
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %69, label %34

34:                                               ; preds = %27
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %69, label %41

41:                                               ; preds = %34
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 195
  br i1 %47, label %69, label %48

48:                                               ; preds = %41
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 26212
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 3
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 26213
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 26215
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %55, %48, %41, %34, %27
  store i32 75000, i32* %17, align 4
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 195
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 26213
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %70
  store i32 60000, i32* %17, align 4
  store i32 80000, i32* %18, align 4
  br label %85

85:                                               ; preds = %84, %77
  br label %144

86:                                               ; preds = %2
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CHIP_OLAND, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %86
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 199
  br i1 %98, label %141, label %99

99:                                               ; preds = %92
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 3
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %141, label %106

106:                                              ; preds = %99
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 129
  br i1 %112, label %141, label %113

113:                                              ; preds = %106
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 131
  br i1 %119, label %141, label %120

120:                                              ; preds = %113
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 135
  br i1 %126, label %141, label %127

127:                                              ; preds = %120
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 26116
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 26117
  br i1 %140, label %141, label %142

141:                                              ; preds = %134, %127, %120, %113, %106, %99, %92
  store i32 75000, i32* %17, align 4
  br label %142

142:                                              ; preds = %141, %134
  br label %143

143:                                              ; preds = %142, %86
  br label %144

144:                                              ; preds = %143, %85
  %145 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %188

149:                                              ; preds = %144
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %164 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %163, i32 0, i32 4
  store i64 %162, i64* %164, align 8
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %179 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %181 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %182 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %185 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @si_get_vce_clock_voltage(%struct.amdgpu_device* %180, i64 %183, i64 %186, i64* %13)
  br label %193

188:                                              ; preds = %144
  %189 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %190 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %192 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %188, %149
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 1
  br i1 %199, label %204, label %200

200:                                              ; preds = %193
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %202 = call i64 @si_dpm_vblank_too_short(%struct.amdgpu_device* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200, %193
  store i32 1, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %200
  %206 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %207 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %212 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210, %205
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %216

216:                                              ; preds = %215, %210
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 5
  store %struct.amdgpu_clock_and_voltage_limits* %227, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  br label %234

228:                                              ; preds = %216
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  store %struct.amdgpu_clock_and_voltage_limits* %233, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  br label %234

234:                                              ; preds = %228, %222
  %235 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %236 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sub nsw i32 %237, 2
  store i32 %238, i32* %19, align 4
  br label %239

239:                                              ; preds = %279, %234
  %240 = load i32, i32* %19, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %282

242:                                              ; preds = %239
  %243 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %244 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %243, i32 0, i32 2
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = load i32, i32* %19, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %252 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp sgt i64 %250, %259
  br i1 %260, label %261, label %278

261:                                              ; preds = %242
  %262 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %263 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %262, i32 0, i32 2
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = load i32, i32* %19, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %272 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %271, i32 0, i32 2
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  store i64 %270, i64* %277, align 8
  br label %278

278:                                              ; preds = %261, %242
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %19, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %19, align 4
  br label %239

282:                                              ; preds = %239
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %396

288:                                              ; preds = %282
  store i32 0, i32* %19, align 4
  br label %289

289:                                              ; preds = %392, %288
  %290 = load i32, i32* %19, align 4
  %291 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %292 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %395

295:                                              ; preds = %289
  %296 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %297 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %296, i32 0, i32 2
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = load i32, i32* %19, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %305 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp sgt i32 %303, %306
  br i1 %307, label %308, label %319

308:                                              ; preds = %295
  %309 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %310 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %313 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %312, i32 0, i32 2
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %313, align 8
  %315 = load i32, i32* %19, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  store i32 %311, i32* %318, align 8
  br label %319

319:                                              ; preds = %308, %295
  %320 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %321 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %320, i32 0, i32 2
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %321, align 8
  %323 = load i32, i32* %19, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %329 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp sgt i32 %327, %330
  br i1 %331, label %332, label %343

332:                                              ; preds = %319
  %333 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %334 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %337 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %336, i32 0, i32 2
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %337, align 8
  %339 = load i32, i32* %19, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 2
  store i32 %335, i32* %342, align 4
  br label %343

343:                                              ; preds = %332, %319
  %344 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %345 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %344, i32 0, i32 2
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %345, align 8
  %347 = load i32, i32* %19, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %353 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = icmp sgt i64 %351, %354
  br i1 %355, label %356, label %367

356:                                              ; preds = %343
  %357 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %358 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %361 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %360, i32 0, i32 2
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %361, align 8
  %363 = load i32, i32* %19, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 0
  store i64 %359, i64* %366, align 8
  br label %367

367:                                              ; preds = %356, %343
  %368 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %369 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %368, i32 0, i32 2
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %369, align 8
  %371 = load i32, i32* %19, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %377 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = icmp sgt i64 %375, %378
  br i1 %379, label %380, label %391

380:                                              ; preds = %367
  %381 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %382 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %381, i32 0, i32 3
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %385 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %384, i32 0, i32 2
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %385, align 8
  %387 = load i32, i32* %19, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 3
  store i64 %383, i64* %390, align 8
  br label %391

391:                                              ; preds = %380, %367
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %19, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %19, align 4
  br label %289

395:                                              ; preds = %289
  br label %396

396:                                              ; preds = %395, %282
  %397 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %398 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 4
  %402 = call i32 @btc_get_max_clock_from_voltage_dependency_table(i32* %401, i32* %14)
  %403 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %404 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 3
  %408 = call i32 @btc_get_max_clock_from_voltage_dependency_table(i32* %407, i32* %15)
  %409 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %410 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 2
  %414 = call i32 @btc_get_max_clock_from_voltage_dependency_table(i32* %413, i32* %16)
  store i32 0, i32* %19, align 4
  br label %415

415:                                              ; preds = %542, %396
  %416 = load i32, i32* %19, align 4
  %417 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %418 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %545

421:                                              ; preds = %415
  %422 = load i32, i32* %14, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %445

424:                                              ; preds = %421
  %425 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %426 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %425, i32 0, i32 2
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %426, align 8
  %428 = load i32, i32* %19, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* %14, align 4
  %434 = icmp sgt i32 %432, %433
  br i1 %434, label %435, label %444

435:                                              ; preds = %424
  %436 = load i32, i32* %14, align 4
  %437 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %438 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %437, i32 0, i32 2
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %438, align 8
  %440 = load i32, i32* %19, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 2
  store i32 %436, i32* %443, align 4
  br label %444

444:                                              ; preds = %435, %424
  br label %445

445:                                              ; preds = %444, %421
  %446 = load i32, i32* %15, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %469

448:                                              ; preds = %445
  %449 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %450 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %449, i32 0, i32 2
  %451 = load %struct.TYPE_14__*, %struct.TYPE_14__** %450, align 8
  %452 = load i32, i32* %19, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %15, align 4
  %458 = icmp sgt i32 %456, %457
  br i1 %458, label %459, label %468

459:                                              ; preds = %448
  %460 = load i32, i32* %15, align 4
  %461 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %462 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %461, i32 0, i32 2
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %462, align 8
  %464 = load i32, i32* %19, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 1
  store i32 %460, i32* %467, align 8
  br label %468

468:                                              ; preds = %459, %448
  br label %469

469:                                              ; preds = %468, %445
  %470 = load i32, i32* %16, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %493

472:                                              ; preds = %469
  %473 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %474 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %473, i32 0, i32 2
  %475 = load %struct.TYPE_14__*, %struct.TYPE_14__** %474, align 8
  %476 = load i32, i32* %19, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %16, align 4
  %482 = icmp sgt i32 %480, %481
  br i1 %482, label %483, label %492

483:                                              ; preds = %472
  %484 = load i32, i32* %16, align 4
  %485 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %486 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %485, i32 0, i32 2
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %486, align 8
  %488 = load i32, i32* %19, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 1
  store i32 %484, i32* %491, align 8
  br label %492

492:                                              ; preds = %483, %472
  br label %493

493:                                              ; preds = %492, %469
  %494 = load i32, i32* %18, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %517

496:                                              ; preds = %493
  %497 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %498 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %497, i32 0, i32 2
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %498, align 8
  %500 = load i32, i32* %19, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* %18, align 4
  %506 = icmp sgt i32 %504, %505
  br i1 %506, label %507, label %516

507:                                              ; preds = %496
  %508 = load i32, i32* %18, align 4
  %509 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %510 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %509, i32 0, i32 2
  %511 = load %struct.TYPE_14__*, %struct.TYPE_14__** %510, align 8
  %512 = load i32, i32* %19, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i64 %513
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %514, i32 0, i32 1
  store i32 %508, i32* %515, align 8
  br label %516

516:                                              ; preds = %507, %496
  br label %517

517:                                              ; preds = %516, %493
  %518 = load i32, i32* %17, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %541

520:                                              ; preds = %517
  %521 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %522 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %521, i32 0, i32 2
  %523 = load %struct.TYPE_14__*, %struct.TYPE_14__** %522, align 8
  %524 = load i32, i32* %19, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %17, align 4
  %530 = icmp sgt i32 %528, %529
  br i1 %530, label %531, label %540

531:                                              ; preds = %520
  %532 = load i32, i32* %17, align 4
  %533 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %534 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %533, i32 0, i32 2
  %535 = load %struct.TYPE_14__*, %struct.TYPE_14__** %534, align 8
  %536 = load i32, i32* %19, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %535, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 2
  store i32 %532, i32* %539, align 4
  br label %540

540:                                              ; preds = %531, %520
  br label %541

541:                                              ; preds = %540, %517
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %19, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %19, align 4
  br label %415

545:                                              ; preds = %415
  %546 = load i32, i32* %7, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %571

548:                                              ; preds = %545
  %549 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %550 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %549, i32 0, i32 2
  %551 = load %struct.TYPE_14__*, %struct.TYPE_14__** %550, align 8
  %552 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %553 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = sub nsw i32 %554, 1
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %551, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 8
  store i32 %559, i32* %9, align 4
  %560 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %561 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %560, i32 0, i32 2
  %562 = load %struct.TYPE_14__*, %struct.TYPE_14__** %561, align 8
  %563 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %564 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = sub nsw i32 %565, 1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %562, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %568, i32 0, i32 3
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %12, align 8
  br label %584

571:                                              ; preds = %545
  %572 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %573 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %572, i32 0, i32 2
  %574 = load %struct.TYPE_14__*, %struct.TYPE_14__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %574, i64 0
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 8
  store i32 %577, i32* %9, align 4
  %578 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %579 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %578, i32 0, i32 2
  %580 = load %struct.TYPE_14__*, %struct.TYPE_14__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %580, i64 0
  %582 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %581, i32 0, i32 3
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %12, align 8
  br label %584

584:                                              ; preds = %571, %548
  %585 = load i32, i32* %8, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %610

587:                                              ; preds = %584
  %588 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %589 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %588, i32 0, i32 2
  %590 = load %struct.TYPE_14__*, %struct.TYPE_14__** %589, align 8
  %591 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %592 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = sub nsw i32 %593, 1
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %590, i64 %595
  %597 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 4
  store i32 %598, i32* %10, align 4
  %599 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %600 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %599, i32 0, i32 2
  %601 = load %struct.TYPE_14__*, %struct.TYPE_14__** %600, align 8
  %602 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %603 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = sub nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %601, i64 %606
  %608 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %607, i32 0, i32 0
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %11, align 8
  br label %623

610:                                              ; preds = %584
  %611 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %612 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %611, i32 0, i32 2
  %613 = load %struct.TYPE_14__*, %struct.TYPE_14__** %612, align 8
  %614 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %613, i64 0
  %615 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %614, i32 0, i32 2
  %616 = load i32, i32* %615, align 4
  store i32 %616, i32* %10, align 4
  %617 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %618 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %617, i32 0, i32 2
  %619 = load %struct.TYPE_14__*, %struct.TYPE_14__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %619, i64 0
  %621 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %11, align 8
  br label %623

623:                                              ; preds = %610, %587
  %624 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %625 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %624, i32 0, i32 0
  %626 = load i64, i64* %625, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %689

628:                                              ; preds = %623
  %629 = load i32, i32* %10, align 4
  %630 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %631 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 3
  %634 = load %struct.TYPE_9__*, %struct.TYPE_9__** %633, align 8
  %635 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %636 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %637, i32 0, i32 0
  %639 = load i64, i64* %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = icmp slt i32 %629, %642
  br i1 %643, label %644, label %658

644:                                              ; preds = %628
  %645 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %646 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %646, i32 0, i32 1
  %648 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %647, i32 0, i32 3
  %649 = load %struct.TYPE_9__*, %struct.TYPE_9__** %648, align 8
  %650 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %651 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %649, i64 %654
  %656 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  store i32 %657, i32* %10, align 4
  br label %658

658:                                              ; preds = %644, %628
  %659 = load i32, i32* %9, align 4
  %660 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %661 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %662, i32 0, i32 3
  %664 = load %struct.TYPE_9__*, %struct.TYPE_9__** %663, align 8
  %665 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %666 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %667, i32 0, i32 0
  %669 = load i64, i64* %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %664, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = icmp slt i32 %659, %672
  br i1 %673, label %674, label %688

674:                                              ; preds = %658
  %675 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %676 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %676, i32 0, i32 1
  %678 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %677, i32 0, i32 3
  %679 = load %struct.TYPE_9__*, %struct.TYPE_9__** %678, align 8
  %680 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %681 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %682, i32 0, i32 0
  %684 = load i64, i64* %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %679, i64 %684
  %686 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %685, i32 0, i32 1
  %687 = load i32, i32* %686, align 4
  store i32 %687, i32* %9, align 4
  br label %688

688:                                              ; preds = %674, %658
  br label %689

689:                                              ; preds = %688, %623
  %690 = load i32, i32* %10, align 4
  %691 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %692 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %691, i32 0, i32 2
  %693 = load %struct.TYPE_14__*, %struct.TYPE_14__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %693, i64 0
  %695 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %694, i32 0, i32 2
  store i32 %690, i32* %695, align 4
  %696 = load i32, i32* %9, align 4
  %697 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %698 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %697, i32 0, i32 2
  %699 = load %struct.TYPE_14__*, %struct.TYPE_14__** %698, align 8
  %700 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %699, i64 0
  %701 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %700, i32 0, i32 1
  store i32 %696, i32* %701, align 8
  %702 = load i64, i64* %11, align 8
  %703 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %704 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %703, i32 0, i32 2
  %705 = load %struct.TYPE_14__*, %struct.TYPE_14__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %705, i64 0
  %707 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %706, i32 0, i32 0
  store i64 %702, i64* %707, align 8
  %708 = load i64, i64* %12, align 8
  %709 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %710 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %709, i32 0, i32 2
  %711 = load %struct.TYPE_14__*, %struct.TYPE_14__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %711, i64 0
  %713 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %712, i32 0, i32 3
  store i64 %708, i64* %713, align 8
  %714 = load i32, i32* %8, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %781

716:                                              ; preds = %689
  %717 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %718 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %717, i32 0, i32 2
  %719 = load %struct.TYPE_14__*, %struct.TYPE_14__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %719, i64 0
  %721 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %720, i32 0, i32 2
  %722 = load i32, i32* %721, align 4
  store i32 %722, i32* %10, align 4
  store i32 1, i32* %19, align 4
  br label %723

723:                                              ; preds = %750, %716
  %724 = load i32, i32* %19, align 4
  %725 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %726 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 8
  %728 = icmp slt i32 %724, %727
  br i1 %728, label %729, label %753

729:                                              ; preds = %723
  %730 = load i32, i32* %10, align 4
  %731 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %732 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %731, i32 0, i32 2
  %733 = load %struct.TYPE_14__*, %struct.TYPE_14__** %732, align 8
  %734 = load i32, i32* %19, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %733, i64 %735
  %737 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %736, i32 0, i32 2
  %738 = load i32, i32* %737, align 4
  %739 = icmp slt i32 %730, %738
  br i1 %739, label %740, label %749

740:                                              ; preds = %729
  %741 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %742 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %741, i32 0, i32 2
  %743 = load %struct.TYPE_14__*, %struct.TYPE_14__** %742, align 8
  %744 = load i32, i32* %19, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %743, i64 %745
  %747 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 4
  store i32 %748, i32* %10, align 4
  br label %749

749:                                              ; preds = %740, %729
  br label %750

750:                                              ; preds = %749
  %751 = load i32, i32* %19, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %19, align 4
  br label %723

753:                                              ; preds = %723
  store i32 0, i32* %19, align 4
  br label %754

754:                                              ; preds = %777, %753
  %755 = load i32, i32* %19, align 4
  %756 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %757 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %756, i32 0, i32 0
  %758 = load i32, i32* %757, align 8
  %759 = icmp slt i32 %755, %758
  br i1 %759, label %760, label %780

760:                                              ; preds = %754
  %761 = load i32, i32* %10, align 4
  %762 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %763 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %762, i32 0, i32 2
  %764 = load %struct.TYPE_14__*, %struct.TYPE_14__** %763, align 8
  %765 = load i32, i32* %19, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %764, i64 %766
  %768 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %767, i32 0, i32 2
  store i32 %761, i32* %768, align 4
  %769 = load i64, i64* %11, align 8
  %770 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %771 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %770, i32 0, i32 2
  %772 = load %struct.TYPE_14__*, %struct.TYPE_14__** %771, align 8
  %773 = load i32, i32* %19, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %772, i64 %774
  %776 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %775, i32 0, i32 0
  store i64 %769, i64* %776, align 8
  br label %777

777:                                              ; preds = %760
  %778 = load i32, i32* %19, align 4
  %779 = add nsw i32 %778, 1
  store i32 %779, i32* %19, align 4
  br label %754

780:                                              ; preds = %754
  br label %865

781:                                              ; preds = %689
  store i32 1, i32* %19, align 4
  br label %782

782:                                              ; preds = %861, %781
  %783 = load i32, i32* %19, align 4
  %784 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %785 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 8
  %787 = icmp slt i32 %783, %786
  br i1 %787, label %788, label %864

788:                                              ; preds = %782
  %789 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %790 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %789, i32 0, i32 2
  %791 = load %struct.TYPE_14__*, %struct.TYPE_14__** %790, align 8
  %792 = load i32, i32* %19, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %791, i64 %793
  %795 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %794, i32 0, i32 2
  %796 = load i32, i32* %795, align 4
  %797 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %798 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %797, i32 0, i32 2
  %799 = load %struct.TYPE_14__*, %struct.TYPE_14__** %798, align 8
  %800 = load i32, i32* %19, align 4
  %801 = sub nsw i32 %800, 1
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %799, i64 %802
  %804 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %803, i32 0, i32 2
  %805 = load i32, i32* %804, align 4
  %806 = icmp slt i32 %796, %805
  br i1 %806, label %807, label %824

807:                                              ; preds = %788
  %808 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %809 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %808, i32 0, i32 2
  %810 = load %struct.TYPE_14__*, %struct.TYPE_14__** %809, align 8
  %811 = load i32, i32* %19, align 4
  %812 = sub nsw i32 %811, 1
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %810, i64 %813
  %815 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 4
  %817 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %818 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %817, i32 0, i32 2
  %819 = load %struct.TYPE_14__*, %struct.TYPE_14__** %818, align 8
  %820 = load i32, i32* %19, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %819, i64 %821
  %823 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %822, i32 0, i32 2
  store i32 %816, i32* %823, align 4
  br label %824

824:                                              ; preds = %807, %788
  %825 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %826 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %825, i32 0, i32 2
  %827 = load %struct.TYPE_14__*, %struct.TYPE_14__** %826, align 8
  %828 = load i32, i32* %19, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %827, i64 %829
  %831 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %830, i32 0, i32 0
  %832 = load i64, i64* %831, align 8
  %833 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %834 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %833, i32 0, i32 2
  %835 = load %struct.TYPE_14__*, %struct.TYPE_14__** %834, align 8
  %836 = load i32, i32* %19, align 4
  %837 = sub nsw i32 %836, 1
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %835, i64 %838
  %840 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %839, i32 0, i32 0
  %841 = load i64, i64* %840, align 8
  %842 = icmp slt i64 %832, %841
  br i1 %842, label %843, label %860

843:                                              ; preds = %824
  %844 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %845 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %844, i32 0, i32 2
  %846 = load %struct.TYPE_14__*, %struct.TYPE_14__** %845, align 8
  %847 = load i32, i32* %19, align 4
  %848 = sub nsw i32 %847, 1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %846, i64 %849
  %851 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %850, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %854 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %853, i32 0, i32 2
  %855 = load %struct.TYPE_14__*, %struct.TYPE_14__** %854, align 8
  %856 = load i32, i32* %19, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %855, i64 %857
  %859 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %858, i32 0, i32 0
  store i64 %852, i64* %859, align 8
  br label %860

860:                                              ; preds = %843, %824
  br label %861

861:                                              ; preds = %860
  %862 = load i32, i32* %19, align 4
  %863 = add nsw i32 %862, 1
  store i32 %863, i32* %19, align 4
  br label %782

864:                                              ; preds = %782
  br label %865

865:                                              ; preds = %864, %780
  %866 = load i32, i32* %7, align 4
  %867 = icmp ne i32 %866, 0
  br i1 %867, label %868, label %933

868:                                              ; preds = %865
  %869 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %870 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %869, i32 0, i32 2
  %871 = load %struct.TYPE_14__*, %struct.TYPE_14__** %870, align 8
  %872 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %871, i64 0
  %873 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %872, i32 0, i32 1
  %874 = load i32, i32* %873, align 8
  store i32 %874, i32* %9, align 4
  store i32 1, i32* %19, align 4
  br label %875

875:                                              ; preds = %902, %868
  %876 = load i32, i32* %19, align 4
  %877 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %878 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 8
  %880 = icmp slt i32 %876, %879
  br i1 %880, label %881, label %905

881:                                              ; preds = %875
  %882 = load i32, i32* %9, align 4
  %883 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %884 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %883, i32 0, i32 2
  %885 = load %struct.TYPE_14__*, %struct.TYPE_14__** %884, align 8
  %886 = load i32, i32* %19, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %885, i64 %887
  %889 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %888, i32 0, i32 1
  %890 = load i32, i32* %889, align 8
  %891 = icmp slt i32 %882, %890
  br i1 %891, label %892, label %901

892:                                              ; preds = %881
  %893 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %894 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %893, i32 0, i32 2
  %895 = load %struct.TYPE_14__*, %struct.TYPE_14__** %894, align 8
  %896 = load i32, i32* %19, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %895, i64 %897
  %899 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %898, i32 0, i32 1
  %900 = load i32, i32* %899, align 8
  store i32 %900, i32* %9, align 4
  br label %901

901:                                              ; preds = %892, %881
  br label %902

902:                                              ; preds = %901
  %903 = load i32, i32* %19, align 4
  %904 = add nsw i32 %903, 1
  store i32 %904, i32* %19, align 4
  br label %875

905:                                              ; preds = %875
  store i32 0, i32* %19, align 4
  br label %906

906:                                              ; preds = %929, %905
  %907 = load i32, i32* %19, align 4
  %908 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %909 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %908, i32 0, i32 0
  %910 = load i32, i32* %909, align 8
  %911 = icmp slt i32 %907, %910
  br i1 %911, label %912, label %932

912:                                              ; preds = %906
  %913 = load i32, i32* %9, align 4
  %914 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %915 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %914, i32 0, i32 2
  %916 = load %struct.TYPE_14__*, %struct.TYPE_14__** %915, align 8
  %917 = load i32, i32* %19, align 4
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %916, i64 %918
  %920 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %919, i32 0, i32 1
  store i32 %913, i32* %920, align 8
  %921 = load i64, i64* %12, align 8
  %922 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %923 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %922, i32 0, i32 2
  %924 = load %struct.TYPE_14__*, %struct.TYPE_14__** %923, align 8
  %925 = load i32, i32* %19, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %924, i64 %926
  %928 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %927, i32 0, i32 3
  store i64 %921, i64* %928, align 8
  br label %929

929:                                              ; preds = %912
  %930 = load i32, i32* %19, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %19, align 4
  br label %906

932:                                              ; preds = %906
  br label %1017

933:                                              ; preds = %865
  store i32 1, i32* %19, align 4
  br label %934

934:                                              ; preds = %1013, %933
  %935 = load i32, i32* %19, align 4
  %936 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %937 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %936, i32 0, i32 0
  %938 = load i32, i32* %937, align 8
  %939 = icmp slt i32 %935, %938
  br i1 %939, label %940, label %1016

940:                                              ; preds = %934
  %941 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %942 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %941, i32 0, i32 2
  %943 = load %struct.TYPE_14__*, %struct.TYPE_14__** %942, align 8
  %944 = load i32, i32* %19, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %943, i64 %945
  %947 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %946, i32 0, i32 1
  %948 = load i32, i32* %947, align 8
  %949 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %950 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %949, i32 0, i32 2
  %951 = load %struct.TYPE_14__*, %struct.TYPE_14__** %950, align 8
  %952 = load i32, i32* %19, align 4
  %953 = sub nsw i32 %952, 1
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %951, i64 %954
  %956 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %955, i32 0, i32 1
  %957 = load i32, i32* %956, align 8
  %958 = icmp slt i32 %948, %957
  br i1 %958, label %959, label %976

959:                                              ; preds = %940
  %960 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %961 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %960, i32 0, i32 2
  %962 = load %struct.TYPE_14__*, %struct.TYPE_14__** %961, align 8
  %963 = load i32, i32* %19, align 4
  %964 = sub nsw i32 %963, 1
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %962, i64 %965
  %967 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %966, i32 0, i32 1
  %968 = load i32, i32* %967, align 8
  %969 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %970 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %969, i32 0, i32 2
  %971 = load %struct.TYPE_14__*, %struct.TYPE_14__** %970, align 8
  %972 = load i32, i32* %19, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %971, i64 %973
  %975 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %974, i32 0, i32 1
  store i32 %968, i32* %975, align 8
  br label %976

976:                                              ; preds = %959, %940
  %977 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %978 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %977, i32 0, i32 2
  %979 = load %struct.TYPE_14__*, %struct.TYPE_14__** %978, align 8
  %980 = load i32, i32* %19, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %979, i64 %981
  %983 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %982, i32 0, i32 3
  %984 = load i64, i64* %983, align 8
  %985 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %986 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %985, i32 0, i32 2
  %987 = load %struct.TYPE_14__*, %struct.TYPE_14__** %986, align 8
  %988 = load i32, i32* %19, align 4
  %989 = sub nsw i32 %988, 1
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %987, i64 %990
  %992 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %991, i32 0, i32 3
  %993 = load i64, i64* %992, align 8
  %994 = icmp slt i64 %984, %993
  br i1 %994, label %995, label %1012

995:                                              ; preds = %976
  %996 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %997 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %996, i32 0, i32 2
  %998 = load %struct.TYPE_14__*, %struct.TYPE_14__** %997, align 8
  %999 = load i32, i32* %19, align 4
  %1000 = sub nsw i32 %999, 1
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %998, i64 %1001
  %1003 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1002, i32 0, i32 3
  %1004 = load i64, i64* %1003, align 8
  %1005 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1006 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1005, i32 0, i32 2
  %1007 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1006, align 8
  %1008 = load i32, i32* %19, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1007, i64 %1009
  %1011 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1010, i32 0, i32 3
  store i64 %1004, i64* %1011, align 8
  br label %1012

1012:                                             ; preds = %995, %976
  br label %1013

1013:                                             ; preds = %1012
  %1014 = load i32, i32* %19, align 4
  %1015 = add nsw i32 %1014, 1
  store i32 %1015, i32* %19, align 4
  br label %934

1016:                                             ; preds = %934
  br label %1017

1017:                                             ; preds = %1016, %932
  store i32 0, i32* %19, align 4
  br label %1018

1018:                                             ; preds = %1034, %1017
  %1019 = load i32, i32* %19, align 4
  %1020 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1021 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1020, i32 0, i32 0
  %1022 = load i32, i32* %1021, align 8
  %1023 = icmp slt i32 %1019, %1022
  br i1 %1023, label %1024, label %1037

1024:                                             ; preds = %1018
  %1025 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1026 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1027 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1028 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1027, i32 0, i32 2
  %1029 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1028, align 8
  %1030 = load i32, i32* %19, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1029, i64 %1031
  %1033 = call i32 @btc_adjust_clock_combinations(%struct.amdgpu_device* %1025, %struct.amdgpu_clock_and_voltage_limits* %1026, %struct.TYPE_14__* %1032)
  br label %1034

1034:                                             ; preds = %1024
  %1035 = load i32, i32* %19, align 4
  %1036 = add nsw i32 %1035, 1
  store i32 %1036, i32* %19, align 4
  br label %1018

1037:                                             ; preds = %1018
  store i32 0, i32* %19, align 4
  br label %1038

1038:                                             ; preds = %1157, %1037
  %1039 = load i32, i32* %19, align 4
  %1040 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1041 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1040, i32 0, i32 0
  %1042 = load i32, i32* %1041, align 8
  %1043 = icmp slt i32 %1039, %1042
  br i1 %1043, label %1044, label %1160

1044:                                             ; preds = %1038
  %1045 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1046 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1045, i32 0, i32 2
  %1047 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1046, align 8
  %1048 = load i32, i32* %19, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1047, i64 %1049
  %1051 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1050, i32 0, i32 0
  %1052 = load i64, i64* %1051, align 8
  %1053 = load i64, i64* %13, align 8
  %1054 = icmp slt i64 %1052, %1053
  br i1 %1054, label %1055, label %1064

1055:                                             ; preds = %1044
  %1056 = load i64, i64* %13, align 8
  %1057 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1058 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1057, i32 0, i32 2
  %1059 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1058, align 8
  %1060 = load i32, i32* %19, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1059, i64 %1061
  %1063 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1062, i32 0, i32 0
  store i64 %1056, i64* %1063, align 8
  br label %1064

1064:                                             ; preds = %1055, %1044
  %1065 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1066 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1065, i32 0, i32 1
  %1067 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1067, i32 0, i32 2
  %1069 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1068, i32 0, i32 4
  %1070 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1071 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1070, i32 0, i32 2
  %1072 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1071, align 8
  %1073 = load i32, i32* %19, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1072, i64 %1074
  %1076 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1075, i32 0, i32 2
  %1077 = load i32, i32* %1076, align 4
  %1078 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1079 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1078, i32 0, i32 2
  %1080 = load i64, i64* %1079, align 8
  %1081 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1082 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1081, i32 0, i32 2
  %1083 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1082, align 8
  %1084 = load i32, i32* %19, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1083, i64 %1085
  %1087 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1086, i32 0, i32 0
  %1088 = call i32 @btc_apply_voltage_dependency_rules(i32* %1069, i32 %1077, i64 %1080, i64* %1087)
  %1089 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1090 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1089, i32 0, i32 1
  %1091 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1091, i32 0, i32 2
  %1093 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1092, i32 0, i32 3
  %1094 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1095 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1094, i32 0, i32 2
  %1096 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1095, align 8
  %1097 = load i32, i32* %19, align 4
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1096, i64 %1098
  %1100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1099, i32 0, i32 1
  %1101 = load i32, i32* %1100, align 8
  %1102 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1103 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1102, i32 0, i32 3
  %1104 = load i64, i64* %1103, align 8
  %1105 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1106 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1105, i32 0, i32 2
  %1107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1106, align 8
  %1108 = load i32, i32* %19, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1107, i64 %1109
  %1111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1110, i32 0, i32 3
  %1112 = call i32 @btc_apply_voltage_dependency_rules(i32* %1093, i32 %1101, i64 %1104, i64* %1111)
  %1113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1114, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1115, i32 0, i32 2
  %1117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1116, i32 0, i32 2
  %1118 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1119 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1118, i32 0, i32 2
  %1120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1119, align 8
  %1121 = load i32, i32* %19, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1120, i64 %1122
  %1124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1123, i32 0, i32 1
  %1125 = load i32, i32* %1124, align 8
  %1126 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1127 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1126, i32 0, i32 2
  %1128 = load i64, i64* %1127, align 8
  %1129 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1130 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1129, i32 0, i32 2
  %1131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1130, align 8
  %1132 = load i32, i32* %19, align 4
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1131, i64 %1133
  %1135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1134, i32 0, i32 0
  %1136 = call i32 @btc_apply_voltage_dependency_rules(i32* %1117, i32 %1125, i64 %1128, i64* %1135)
  %1137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1137, i32 0, i32 1
  %1139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1138, i32 0, i32 1
  %1140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1139, i32 0, i32 2
  %1141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1140, i32 0, i32 1
  %1142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1142, i32 0, i32 2
  %1144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1143, i32 0, i32 0
  %1145 = load i32, i32* %1144, align 8
  %1146 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1147 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1146, i32 0, i32 2
  %1148 = load i64, i64* %1147, align 8
  %1149 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1150 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1149, i32 0, i32 2
  %1151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1150, align 8
  %1152 = load i32, i32* %19, align 4
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1151, i64 %1153
  %1155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1154, i32 0, i32 0
  %1156 = call i32 @btc_apply_voltage_dependency_rules(i32* %1141, i32 %1145, i64 %1148, i64* %1155)
  br label %1157

1157:                                             ; preds = %1064
  %1158 = load i32, i32* %19, align 4
  %1159 = add nsw i32 %1158, 1
  store i32 %1159, i32* %19, align 4
  br label %1038

1160:                                             ; preds = %1038
  store i32 0, i32* %19, align 4
  br label %1161

1161:                                             ; preds = %1190, %1160
  %1162 = load i32, i32* %19, align 4
  %1163 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1164 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1163, i32 0, i32 0
  %1165 = load i32, i32* %1164, align 8
  %1166 = icmp slt i32 %1162, %1165
  br i1 %1166, label %1167, label %1193

1167:                                             ; preds = %1161
  %1168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1169 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1170 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1169, i32 0, i32 2
  %1171 = load i64, i64* %1170, align 8
  %1172 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %6, align 8
  %1173 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1172, i32 0, i32 3
  %1174 = load i64, i64* %1173, align 8
  %1175 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1176 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1175, i32 0, i32 2
  %1177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1176, align 8
  %1178 = load i32, i32* %19, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1177, i64 %1179
  %1181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1180, i32 0, i32 0
  %1182 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1183 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1182, i32 0, i32 2
  %1184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1183, align 8
  %1185 = load i32, i32* %19, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1184, i64 %1186
  %1188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1187, i32 0, i32 3
  %1189 = call i32 @btc_apply_voltage_delta_rules(%struct.amdgpu_device* %1168, i64 %1171, i64 %1174, i64* %1181, i64* %1188)
  br label %1190

1190:                                             ; preds = %1167
  %1191 = load i32, i32* %19, align 4
  %1192 = add nsw i32 %1191, 1
  store i32 %1192, i32* %19, align 4
  br label %1161

1193:                                             ; preds = %1161
  %1194 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1195 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1194, i32 0, i32 1
  store i32 1, i32* %1195, align 4
  store i32 0, i32* %19, align 4
  br label %1196

1196:                                             ; preds = %1223, %1193
  %1197 = load i32, i32* %19, align 4
  %1198 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1199 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1198, i32 0, i32 0
  %1200 = load i32, i32* %1199, align 8
  %1201 = icmp slt i32 %1197, %1200
  br i1 %1201, label %1202, label %1226

1202:                                             ; preds = %1196
  %1203 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1204 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1203, i32 0, i32 2
  %1205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1204, align 8
  %1206 = load i32, i32* %19, align 4
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1205, i64 %1207
  %1209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1208, i32 0, i32 0
  %1210 = load i64, i64* %1209, align 8
  %1211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1211, i32 0, i32 1
  %1213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1213, i32 0, i32 2
  %1215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1214, i32 0, i32 0
  %1216 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %1215, i32 0, i32 2
  %1217 = load i64, i64* %1216, align 8
  %1218 = icmp sgt i64 %1210, %1217
  br i1 %1218, label %1219, label %1222

1219:                                             ; preds = %1202
  %1220 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %1221 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %1220, i32 0, i32 1
  store i32 0, i32* %1221, align 4
  br label %1222

1222:                                             ; preds = %1219, %1202
  br label %1223

1223:                                             ; preds = %1222
  %1224 = load i32, i32* %19, align 4
  %1225 = add nsw i32 %1224, 1
  store i32 %1225, i32* %19, align 4
  br label %1196

1226:                                             ; preds = %1196
  ret void
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @si_get_vce_clock_voltage(%struct.amdgpu_device*, i64, i64, i64*) #1

declare dso_local i64 @si_dpm_vblank_too_short(%struct.amdgpu_device*) #1

declare dso_local i32 @btc_get_max_clock_from_voltage_dependency_table(i32*, i32*) #1

declare dso_local i32 @btc_adjust_clock_combinations(%struct.amdgpu_device*, %struct.amdgpu_clock_and_voltage_limits*, %struct.TYPE_14__*) #1

declare dso_local i32 @btc_apply_voltage_dependency_rules(i32*, i32, i64, i64*) #1

declare dso_local i32 @btc_apply_voltage_delta_rules(%struct.amdgpu_device*, i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
