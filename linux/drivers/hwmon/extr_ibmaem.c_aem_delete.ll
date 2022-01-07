; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aem_data = type { i32, i32, %struct.TYPE_2__, i32, %struct.aem_data*, i32 }
%struct.TYPE_2__ = type { i32 }

@aem_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aem_data*)* @aem_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aem_delete(%struct.aem_data* %0) #0 {
  %2 = alloca %struct.aem_data*, align 8
  store %struct.aem_data* %0, %struct.aem_data** %2, align 8
  %3 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %4 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %3, i32 0, i32 5
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %7 = call i32 @aem_remove_sensors(%struct.aem_data* %6)
  %8 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %9 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %8, i32 0, i32 4
  %10 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %11 = call i32 @kfree(%struct.aem_data* %10)
  %12 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %13 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hwmon_device_unregister(i32 %14)
  %16 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %17 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ipmi_destroy_user(i32 %19)
  %21 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %22 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @platform_set_drvdata(i32 %23, i32* null)
  %25 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %26 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @platform_device_unregister(i32 %27)
  %29 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %30 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ida_simple_remove(i32* @aem_ida, i32 %31)
  %33 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %34 = call i32 @kfree(%struct.aem_data* %33)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @aem_remove_sensors(%struct.aem_data*) #1

declare dso_local i32 @kfree(%struct.aem_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

declare dso_local i32 @platform_set_drvdata(i32, i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
