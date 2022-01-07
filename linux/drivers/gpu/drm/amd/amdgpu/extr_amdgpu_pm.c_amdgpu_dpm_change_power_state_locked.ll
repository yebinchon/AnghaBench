; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_dpm_change_power_state_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_dpm_change_power_state_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i64, i32, i32, i32, i32, %struct.amdgpu_ps*, %struct.amdgpu_ps*, i32, i32 }
%struct.amdgpu_ps = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@amdgpu_dpm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"switching from power state:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"switching to power state:\0A\00", align 1
@AMD_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @amdgpu_dpm_change_power_state_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_dpm_change_power_state_locked(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %210

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %14
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %26
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %33, %26
  br label %51

51:                                               ; preds = %50, %14
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call %struct.amdgpu_ps* @amdgpu_dpm_pick_power_state(%struct.amdgpu_device* %58, i32 %59)
  store %struct.amdgpu_ps* %60, %struct.amdgpu_ps** %3, align 8
  %61 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %3, align 8
  %62 = icmp ne %struct.amdgpu_ps* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %3, align 8
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 8
  store %struct.amdgpu_ps* %64, %struct.amdgpu_ps** %68, align 8
  br label %70

69:                                               ; preds = %51
  br label %210

70:                                               ; preds = %63
  %71 = load i32, i32* @amdgpu_dpm, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %73
  %82 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 9
  %88 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %87, align 8
  %89 = call i32 @amdgpu_dpm_print_power_state(%struct.amdgpu_device* %83, %struct.amdgpu_ps* %88)
  %90 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 8
  %96 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %95, align 8
  %97 = call i32 @amdgpu_dpm_print_power_state(%struct.amdgpu_device* %91, %struct.amdgpu_ps* %96)
  br label %98

98:                                               ; preds = %81, %73, %70
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %3, align 8
  %105 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = call i32 @amdgpu_dpm_display_configuration_changed(%struct.amdgpu_device* %114)
  br label %116

116:                                              ; preds = %113, %98
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = call i32 @amdgpu_dpm_pre_set_power_state(%struct.amdgpu_device* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %210

122:                                              ; preds = %116
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %122
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 9
  %136 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %135, align 8
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 8
  %141 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %140, align 8
  %142 = call i64 @amdgpu_dpm_check_state_equal(%struct.amdgpu_device* %131, %struct.amdgpu_ps* %136, %struct.amdgpu_ps* %141, i32* %6)
  %143 = icmp ne i64 0, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %130
  br label %146

146:                                              ; preds = %145, %122
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %210

150:                                              ; preds = %146
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %152 = call i32 @amdgpu_dpm_set_power_state(%struct.amdgpu_device* %151)
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %154 = call i32 @amdgpu_dpm_post_set_power_state(%struct.amdgpu_device* %153)
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %161 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 7
  store i32 %159, i32* %163, align 4
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  store i32 %168, i32* %172, align 4
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %210

180:                                              ; preds = %150
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %180
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %7, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %194 = load i32, i32* @AMD_DPM_FORCED_LEVEL_LOW, align 4
  %195 = call i32 @amdgpu_dpm_force_performance_level(%struct.amdgpu_device* %193, i32 %194)
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  store i32 %196, i32* %200, align 8
  br label %209

201:                                              ; preds = %180
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @amdgpu_dpm_force_performance_level(%struct.amdgpu_device* %202, i32 %207)
  br label %209

209:                                              ; preds = %201, %187
  br label %210

210:                                              ; preds = %13, %69, %121, %149, %209, %150
  ret void
}

declare dso_local %struct.amdgpu_ps* @amdgpu_dpm_pick_power_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @amdgpu_dpm_print_power_state(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @amdgpu_dpm_display_configuration_changed(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_pre_set_power_state(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_dpm_check_state_equal(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*, i32*) #1

declare dso_local i32 @amdgpu_dpm_set_power_state(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_post_set_power_state(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_force_performance_level(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
