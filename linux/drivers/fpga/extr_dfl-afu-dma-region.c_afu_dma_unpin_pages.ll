; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_unpin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_unpin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dfl_feature_platform_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.dfl_afu_dma_region = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"%ld pages unpinned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfl_feature_platform_data*, %struct.dfl_afu_dma_region*)* @afu_dma_unpin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afu_dma_unpin_pages(%struct.dfl_feature_platform_data* %0, %struct.dfl_afu_dma_region* %1) #0 {
  %3 = alloca %struct.dfl_feature_platform_data*, align 8
  %4 = alloca %struct.dfl_afu_dma_region*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %3, align 8
  store %struct.dfl_afu_dma_region* %1, %struct.dfl_afu_dma_region** %4, align 8
  %7 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %4, align 8
  %8 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = ashr i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %3, align 8
  %13 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %4, align 8
  %17 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @put_all_pages(i32 %18, i64 %19)
  %21 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %4, align 8
  %22 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @account_locked_vm(i32 %27, i64 %28, i32 0)
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %31)
  ret void
}

declare dso_local i32 @put_all_pages(i32, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @account_locked_vm(i32, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
