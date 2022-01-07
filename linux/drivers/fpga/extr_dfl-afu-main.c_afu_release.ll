; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_afu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_afu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.dfl_feature_platform_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Device File Release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @afu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dfl_feature_platform_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.dfl_feature_platform_data* @dev_get_platdata(i32* %14)
  store %struct.dfl_feature_platform_data* %15, %struct.dfl_feature_platform_data** %6, align 8
  %16 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %17 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = call i32 @__port_reset(%struct.platform_device* %19)
  %21 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %22 = call i32 @afu_dma_region_destroy(%struct.dfl_feature_platform_data* %21)
  %23 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %24 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %27 = call i32 @dfl_feature_dev_use_end(%struct.dfl_feature_platform_data* %26)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__port_reset(%struct.platform_device*) #1

declare dso_local i32 @afu_dma_region_destroy(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dfl_feature_dev_use_end(%struct.dfl_feature_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
