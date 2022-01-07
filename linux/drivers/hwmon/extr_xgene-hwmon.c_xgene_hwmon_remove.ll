; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_hwmon_dev = type { i32, i32, i32 }

@acpi_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_hwmon_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_hwmon_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_hwmon_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.xgene_hwmon_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.xgene_hwmon_dev* %5, %struct.xgene_hwmon_dev** %3, align 8
  %6 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hwmon_device_unregister(i32 %8)
  %10 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %10, i32 0, i32 1
  %12 = call i32 @kfifo_free(i32* %11)
  %13 = load i64, i64* @acpi_disabled, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mbox_free_channel(i32 %18)
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pcc_mbox_free_channel(i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  ret i32 0
}

declare dso_local %struct.xgene_hwmon_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

declare dso_local i32 @pcc_mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
