; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.navpoint_platform_data = type { i32 }
%struct.navpoint = type { i32, %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @navpoint_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navpoint_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.navpoint_platform_data*, align 8
  %4 = alloca %struct.navpoint*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.navpoint_platform_data* @dev_get_platdata(i32* %7)
  store %struct.navpoint_platform_data* %8, %struct.navpoint_platform_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.navpoint* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.navpoint* %10, %struct.navpoint** %4, align 8
  %11 = load %struct.navpoint*, %struct.navpoint** %4, align 8
  %12 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %11, i32 0, i32 1
  %13 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  store %struct.ssp_device* %13, %struct.ssp_device** %5, align 8
  %14 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %15 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.navpoint*, %struct.navpoint** %4, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.navpoint* %17)
  %19 = load %struct.navpoint*, %struct.navpoint** %4, align 8
  %20 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @input_unregister_device(i32 %21)
  %23 = load %struct.navpoint*, %struct.navpoint** %4, align 8
  %24 = call i32 @kfree(%struct.navpoint* %23)
  %25 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %26 = call i32 @pxa_ssp_free(%struct.ssp_device* %25)
  %27 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %3, align 8
  %28 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @gpio_is_valid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %3, align 8
  %34 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gpio_free(i32 %35)
  br label %37

37:                                               ; preds = %32, %1
  ret i32 0
}

declare dso_local %struct.navpoint_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.navpoint* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.navpoint*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.navpoint*) #1

declare dso_local i32 @pxa_ssp_free(%struct.ssp_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
