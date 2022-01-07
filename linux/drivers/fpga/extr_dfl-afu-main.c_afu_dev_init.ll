; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_afu_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_afu_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dfl_feature_platform_data = type { i32 }
%struct.dfl_afu = type { %struct.dfl_feature_platform_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @afu_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_dev_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dfl_feature_platform_data*, align 8
  %5 = alloca %struct.dfl_afu*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.dfl_feature_platform_data* @dev_get_platdata(i32* %7)
  store %struct.dfl_feature_platform_data* %8, %struct.dfl_feature_platform_data** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dfl_afu* @devm_kzalloc(i32* %10, i32 8, i32 %11)
  store %struct.dfl_afu* %12, %struct.dfl_afu** %5, align 8
  %13 = load %struct.dfl_afu*, %struct.dfl_afu** %5, align 8
  %14 = icmp ne %struct.dfl_afu* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %20 = load %struct.dfl_afu*, %struct.dfl_afu** %5, align 8
  %21 = getelementptr inbounds %struct.dfl_afu, %struct.dfl_afu* %20, i32 0, i32 0
  store %struct.dfl_feature_platform_data* %19, %struct.dfl_feature_platform_data** %21, align 8
  %22 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %26 = load %struct.dfl_afu*, %struct.dfl_afu** %5, align 8
  %27 = call i32 @dfl_fpga_pdata_set_private(%struct.dfl_feature_platform_data* %25, %struct.dfl_afu* %26)
  %28 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %29 = call i32 @afu_mmio_region_init(%struct.dfl_feature_platform_data* %28)
  %30 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %31 = call i32 @afu_dma_region_init(%struct.dfl_feature_platform_data* %30)
  %32 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %18, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.dfl_afu* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dfl_fpga_pdata_set_private(%struct.dfl_feature_platform_data*, %struct.dfl_afu*) #1

declare dso_local i32 @afu_mmio_region_init(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @afu_dma_region_init(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
