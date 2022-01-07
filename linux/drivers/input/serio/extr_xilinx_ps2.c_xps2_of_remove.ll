; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_xilinx_ps2.c_xps2_of_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_xilinx_ps2.c_xps2_of_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xps2data = type { i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xps2_of_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xps2_of_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xps2data*, align 8
  %4 = alloca %struct.resource, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.xps2data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.xps2data* %6, %struct.xps2data** %3, align 8
  %7 = load %struct.xps2data*, %struct.xps2data** %3, align 8
  %8 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @serio_unregister_port(i32 %9)
  %11 = load %struct.xps2data*, %struct.xps2data** %3, align 8
  %12 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iounmap(i32 %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @of_address_to_resource(i32 %18, i32 0, %struct.resource* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.xps2data*, %struct.xps2data** %3, align 8
  %23 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %31

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @resource_size(%struct.resource* %4)
  %30 = call i32 @release_mem_region(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.xps2data*, %struct.xps2data** %3, align 8
  %33 = call i32 @kfree(%struct.xps2data* %32)
  ret i32 0
}

declare dso_local %struct.xps2data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @serio_unregister_port(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i64 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.xps2data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
