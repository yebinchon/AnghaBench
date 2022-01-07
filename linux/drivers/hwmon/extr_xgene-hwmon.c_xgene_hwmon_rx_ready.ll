; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_rx_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_rx_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_hwmon_dev = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_hwmon_dev*, i8*)* @xgene_hwmon_rx_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_hwmon_rx_ready(%struct.xgene_hwmon_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_hwmon_dev*, align 8
  %5 = alloca i8*, align 8
  store %struct.xgene_hwmon_dev* %0, %struct.xgene_hwmon_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %4, align 8
  %7 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_ERR_OR_NULL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %4, align 8
  %13 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %4, align 8
  %18 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %17, i32 0, i32 1
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %4, align 8
  %21 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %20, i32 0, i32 0
  %22 = call i32 @kfifo_in_spinlocked(i32* %18, i8* %19, i32 4, i32* %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @kfifo_in_spinlocked(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
