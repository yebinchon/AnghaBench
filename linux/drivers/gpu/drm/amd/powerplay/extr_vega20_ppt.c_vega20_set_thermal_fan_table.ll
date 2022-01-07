; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_thermal_fan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_thermal_fan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SMU_MSG_SetFanTemperatureTarget = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_set_thermal_fan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_set_thermal_fan_table(%struct.smu_context* %0) #0 {
  %2 = alloca %struct.smu_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %2, align 8
  %6 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %7 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %6, i32 0, i32 0
  store %struct.smu_table_context* %7, %struct.smu_table_context** %4, align 8
  %8 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %12 = load i32, i32* @SMU_MSG_SetFanTemperatureTarget, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %11, i32 %12, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
