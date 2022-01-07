; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm5974_config = type { i64, i64, i64 }
%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bcm5974_config_table = common dso_local global %struct.bcm5974_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bcm5974_config* (%struct.usb_device*)* @bcm5974_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.bcm5974_config*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bcm5974_config*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @le16_to_cpu(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.bcm5974_config*, %struct.bcm5974_config** @bcm5974_config_table, align 8
  store %struct.bcm5974_config* %11, %struct.bcm5974_config** %5, align 8
  br label %12

12:                                               ; preds = %38, %1
  %13 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %14 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %19 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %25 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %31 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23, %17
  %36 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  store %struct.bcm5974_config* %36, %struct.bcm5974_config** %2, align 8
  br label %43

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %40 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %39, i32 1
  store %struct.bcm5974_config* %40, %struct.bcm5974_config** %5, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load %struct.bcm5974_config*, %struct.bcm5974_config** @bcm5974_config_table, align 8
  store %struct.bcm5974_config* %42, %struct.bcm5974_config** %2, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.bcm5974_config*, %struct.bcm5974_config** %2, align 8
  ret %struct.bcm5974_config* %44
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
