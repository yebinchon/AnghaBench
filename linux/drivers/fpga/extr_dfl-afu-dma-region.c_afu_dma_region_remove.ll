; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_region_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_region_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_feature_platform_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dfl_afu_dma_region = type { i32, i64 }
%struct.dfl_afu = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"del region (iova = %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfl_feature_platform_data*, %struct.dfl_afu_dma_region*)* @afu_dma_region_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afu_dma_region_remove(%struct.dfl_feature_platform_data* %0, %struct.dfl_afu_dma_region* %1) #0 {
  %3 = alloca %struct.dfl_feature_platform_data*, align 8
  %4 = alloca %struct.dfl_afu_dma_region*, align 8
  %5 = alloca %struct.dfl_afu*, align 8
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %3, align 8
  store %struct.dfl_afu_dma_region* %1, %struct.dfl_afu_dma_region** %4, align 8
  %6 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %3, align 8
  %7 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %4, align 8
  %11 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %3, align 8
  %15 = call %struct.dfl_afu* @dfl_fpga_pdata_get_private(%struct.dfl_feature_platform_data* %14)
  store %struct.dfl_afu* %15, %struct.dfl_afu** %5, align 8
  %16 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %4, align 8
  %17 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %16, i32 0, i32 0
  %18 = load %struct.dfl_afu*, %struct.dfl_afu** %5, align 8
  %19 = getelementptr inbounds %struct.dfl_afu, %struct.dfl_afu* %18, i32 0, i32 0
  %20 = call i32 @rb_erase(i32* %17, i32* %19)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local %struct.dfl_afu* @dfl_fpga_pdata_get_private(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
