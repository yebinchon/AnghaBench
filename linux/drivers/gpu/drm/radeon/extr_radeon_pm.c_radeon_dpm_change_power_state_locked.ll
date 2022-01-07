; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_dpm_change_power_state_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_dpm_change_power_state_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__*, %struct.radeon_ring* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i64, i64, i32, i32, i32, i64, %struct.radeon_ps*, %struct.radeon_ps*, i32 }
%struct.radeon_ps = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.radeon_ring = type { i64 }

@CHIP_BARTS = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@radeon_dpm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"switching from power state:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"switching to power state:\0A\00", align 1
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_dpm_change_power_state_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_dpm_change_power_state_locked(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = call i32 @radeon_dpm_single_display(%struct.radeon_device* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %360

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %18
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %30
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %37, %30
  br label %55

55:                                               ; preds = %54, %18
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.radeon_ps* @radeon_dpm_pick_power_state(%struct.radeon_device* %62, i32 %63)
  store %struct.radeon_ps* %64, %struct.radeon_ps** %4, align 8
  %65 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %66 = icmp ne %struct.radeon_ps* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 10
  store %struct.radeon_ps* %68, %struct.radeon_ps** %72, align 8
  br label %74

73:                                               ; preds = %55
  br label %360

74:                                               ; preds = %67
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 11
  %79 = load %struct.radeon_ps*, %struct.radeon_ps** %78, align 8
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 10
  %84 = load %struct.radeon_ps*, %struct.radeon_ps** %83, align 8
  %85 = icmp eq %struct.radeon_ps* %79, %84
  br i1 %85, label %86, label %208

86:                                               ; preds = %74
  %87 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %209

97:                                               ; preds = %86
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %209

106:                                              ; preds = %97
  %107 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CHIP_BARTS, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @RADEON_IS_IGP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %112, %106
  %120 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %124, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %119
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %132)
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = call i32 @radeon_dpm_display_configuration_changed(%struct.radeon_device* %134)
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  store i64 %140, i64* %144, align 8
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 6
  store i32 %149, i32* %153, align 8
  br label %154

154:                                              ; preds = %131, %119
  br label %360

155:                                              ; preds = %112
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %160, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %360

168:                                              ; preds = %155
  %169 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %205

175:                                              ; preds = %168
  %176 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %177 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %205

182:                                              ; preds = %175
  %183 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %184 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %183)
  %185 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %186 = call i32 @radeon_dpm_display_configuration_changed(%struct.radeon_device* %185)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 5
  store i64 %191, i64* %195, align 8
  %196 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 6
  store i32 %200, i32* %204, align 8
  br label %360

205:                                              ; preds = %175, %168
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207, %74
  br label %209

209:                                              ; preds = %208, %105, %96
  %210 = load i32, i32* @radeon_dpm, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %229

212:                                              ; preds = %209
  %213 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %214 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %215 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 11
  %219 = load %struct.radeon_ps*, %struct.radeon_ps** %218, align 8
  %220 = call i32 @radeon_dpm_print_power_state(%struct.radeon_device* %214, %struct.radeon_ps* %219)
  %221 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %222 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %223 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 10
  %227 = load %struct.radeon_ps*, %struct.radeon_ps** %226, align 8
  %228 = call i32 @radeon_dpm_print_power_state(%struct.radeon_device* %222, %struct.radeon_ps* %227)
  br label %229

229:                                              ; preds = %212, %209
  %230 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = call i32 @down_write(i32* %232)
  %234 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %235 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %234, i32 0, i32 3
  %236 = call i32 @mutex_lock(i32* %235)
  %237 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %243 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %245 = call i32 @radeon_dpm_pre_set_power_state(%struct.radeon_device* %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %229
  br label %352

249:                                              ; preds = %229
  %250 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %251 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %250)
  %252 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %253 = call i32 @radeon_dpm_display_configuration_changed(%struct.radeon_device* %252)
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %274, %249
  %255 = load i32, i32* %3, align 4
  %256 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %277

258:                                              ; preds = %254
  %259 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 5
  %261 = load %struct.radeon_ring*, %struct.radeon_ring** %260, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %261, i64 %263
  store %struct.radeon_ring* %264, %struct.radeon_ring** %8, align 8
  %265 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %266 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %258
  %270 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %271 = load i32, i32* %3, align 4
  %272 = call i32 @radeon_fence_wait_empty(%struct.radeon_device* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %258
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %3, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %3, align 4
  br label %254

277:                                              ; preds = %254
  %278 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %279 = call i32 @radeon_dpm_set_power_state(%struct.radeon_device* %278)
  %280 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %281 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 10
  %284 = load %struct.radeon_ps*, %struct.radeon_ps** %283, align 8
  %285 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %286 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 11
  store %struct.radeon_ps* %284, %struct.radeon_ps** %288, align 8
  %289 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %290 = call i32 @radeon_dpm_post_set_power_state(%struct.radeon_device* %289)
  %291 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %292 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %297 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 5
  store i64 %295, i64* %299, align 8
  %300 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 6
  store i32 %304, i32* %308, align 8
  %309 = load i32, i32* %7, align 4
  %310 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 3
  store i32 %309, i32* %313, align 8
  %314 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %315 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %314, i32 0, i32 4
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %351

321:                                              ; preds = %277
  %322 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %323 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 9
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %342

328:                                              ; preds = %321
  %329 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %330 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %9, align 4
  %334 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %335 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %336 = call i32 @radeon_dpm_force_performance_level(%struct.radeon_device* %334, i32 %335)
  %337 = load i32, i32* %9, align 4
  %338 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %339 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 8
  store i32 %337, i32* %341, align 8
  br label %350

342:                                              ; preds = %321
  %343 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %344 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %345 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @radeon_dpm_force_performance_level(%struct.radeon_device* %343, i32 %348)
  br label %350

350:                                              ; preds = %342, %328
  br label %351

351:                                              ; preds = %350, %277
  br label %352

352:                                              ; preds = %351, %248
  %353 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %354 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %353, i32 0, i32 3
  %355 = call i32 @mutex_unlock(i32* %354)
  %356 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %357 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = call i32 @up_write(i32* %358)
  br label %360

360:                                              ; preds = %352, %182, %167, %154, %73, %17
  ret void
}

declare dso_local i32 @radeon_dpm_single_display(%struct.radeon_device*) #1

declare dso_local %struct.radeon_ps* @radeon_dpm_pick_power_state(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_bandwidth_update(%struct.radeon_device*) #1

declare dso_local i32 @radeon_dpm_display_configuration_changed(%struct.radeon_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @radeon_dpm_print_power_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_dpm_pre_set_power_state(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_wait_empty(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_dpm_set_power_state(%struct.radeon_device*) #1

declare dso_local i32 @radeon_dpm_post_set_power_state(%struct.radeon_device*) #1

declare dso_local i32 @radeon_dpm_force_performance_level(%struct.radeon_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
