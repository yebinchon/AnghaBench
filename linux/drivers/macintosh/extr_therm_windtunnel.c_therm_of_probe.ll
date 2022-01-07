; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_windtunnel.c_therm_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_windtunnel.c_therm_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.i2c_adapter = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@g4fan_driver = common dso_local global i32 0, align 4
@x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @therm_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @therm_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call %struct.i2c_adapter* @i2c_get_adapter(i32 0)
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %4, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = icmp ne %struct.i2c_adapter* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPROBE_DEFER, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = call i32 @i2c_add_driver(i32* @g4fan_driver)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %19 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %31, %21
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = icmp ne %struct.i2c_adapter* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = call i32 @do_attach(%struct.i2c_adapter* %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %33 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %32)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %35)
  store %struct.i2c_adapter* %36, %struct.i2c_adapter** %4, align 8
  br label %22

37:                                               ; preds = %22
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %30, %17, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @i2c_add_driver(i32*) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @do_attach(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
