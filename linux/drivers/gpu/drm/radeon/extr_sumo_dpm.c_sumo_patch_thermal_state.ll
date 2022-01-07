; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_patch_thermal_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_patch_thermal_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_ps = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.sumo_power_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@SUMO_MINIMUM_ENGINE_CLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.sumo_ps*, %struct.sumo_ps*)* @sumo_patch_thermal_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_patch_thermal_state(%struct.radeon_device* %0, %struct.sumo_ps* %1, %struct.sumo_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.sumo_ps*, align 8
  %6 = alloca %struct.sumo_ps*, align 8
  %7 = alloca %struct.sumo_power_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.sumo_ps* %1, %struct.sumo_ps** %5, align 8
  store %struct.sumo_ps* %2, %struct.sumo_ps** %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %12)
  store %struct.sumo_power_info* %13, %struct.sumo_power_info** %7, align 8
  %14 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %15 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %19 = icmp ne %struct.sumo_ps* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %22 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %29 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %37 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %41 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %35, %20
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %47 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %52 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %44
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %62 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %44
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %69 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i8* @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device* %67, i64 %73, i64 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %78 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i64 %76, i64* %81, align 8
  %82 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %83 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %84 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SUMO_MINIMUM_ENGINE_CLOCK, align 8
  %90 = call i8* @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device* %82, i64 %88, i64 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %93 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  store i64 %91, i64* %96, align 8
  %97 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %98 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %104 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  %110 = icmp sgt i64 %102, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %66
  %112 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %113 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %120 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  store i64 %118, i64* %123, align 8
  br label %124

124:                                              ; preds = %111, %66
  %125 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %126 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %132 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %130, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %124
  %139 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %140 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %144, 1
  br i1 %145, label %146, label %159

146:                                              ; preds = %138
  %147 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %148 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, 1
  %154 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %155 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i64 %153, i64* %158, align 8
  br label %159

159:                                              ; preds = %146, %138
  br label %160

160:                                              ; preds = %159, %124
  %161 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %162 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %160
  %169 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %170 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %168, %160
  %175 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %176 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load %struct.sumo_ps*, %struct.sumo_ps** %5, align 8
  %184 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %182, %174
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
