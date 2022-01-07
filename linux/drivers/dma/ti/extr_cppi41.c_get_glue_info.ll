; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_get_glue_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_get_glue_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi_glue_infos = type { i32 }
%struct.device = type { i32 }
%struct.of_device_id = type { %struct.cppi_glue_infos* }

@cppi41_dma_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cppi_glue_infos* (%struct.device*)* @get_glue_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cppi_glue_infos* @get_glue_info(%struct.device* %0) #0 {
  %2 = alloca %struct.cppi_glue_infos*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @cppi41_dma_ids, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.of_device_id* @of_match_node(i32 %5, i32 %8)
  store %struct.of_device_id* %9, %struct.of_device_id** %4, align 8
  %10 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %11 = icmp ne %struct.of_device_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.cppi_glue_infos* null, %struct.cppi_glue_infos** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %14, i32 0, i32 0
  %16 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %15, align 8
  store %struct.cppi_glue_infos* %16, %struct.cppi_glue_infos** %2, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %2, align 8
  ret %struct.cppi_glue_infos* %18
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
