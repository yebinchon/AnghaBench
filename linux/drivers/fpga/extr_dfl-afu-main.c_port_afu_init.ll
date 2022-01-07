; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_port_afu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_port_afu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.dfl_feature = type { i64 }

@DFL_PORT_REGION_INDEX_AFU = common dso_local global i32 0, align 4
@DFL_PORT_REGION_MMAP = common dso_local global i32 0, align 4
@DFL_PORT_REGION_READ = common dso_local global i32 0, align 4
@DFL_PORT_REGION_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.dfl_feature*)* @port_afu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_afu_init(%struct.platform_device* %0, %struct.dfl_feature* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dfl_feature*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.dfl_feature* %1, %struct.dfl_feature** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  %8 = load %struct.resource*, %struct.resource** %7, align 8
  %9 = load %struct.dfl_feature*, %struct.dfl_feature** %4, align 8
  %10 = getelementptr inbounds %struct.dfl_feature, %struct.dfl_feature* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %8, i64 %11
  store %struct.resource* %12, %struct.resource** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_get_platdata(i32* %14)
  %16 = load i32, i32* @DFL_PORT_REGION_INDEX_AFU, align 4
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = call i32 @resource_size(%struct.resource* %17)
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DFL_PORT_REGION_MMAP, align 4
  %23 = load i32, i32* @DFL_PORT_REGION_READ, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DFL_PORT_REGION_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @afu_mmio_region_add(i32 %15, i32 %16, i32 %18, i32 %21, i32 %26)
  ret i32 %27
}

declare dso_local i32 @afu_mmio_region_add(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
