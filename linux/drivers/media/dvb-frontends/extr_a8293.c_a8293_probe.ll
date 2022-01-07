; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_a8293.c_a8293_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_a8293.c_a8293_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.a8293_platform_data* }
%struct.a8293_platform_data = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.a8293_dev*, %struct.TYPE_4__ }
%struct.a8293_dev = type { %struct.i2c_client* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@a8293_set_voltage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Allegro A8293 SEC successfully attached\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @a8293_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a8293_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.a8293_dev*, align 8
  %7 = alloca %struct.a8293_platform_data*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.a8293_platform_data*, %struct.a8293_platform_data** %13, align 8
  store %struct.a8293_platform_data* %14, %struct.a8293_platform_data** %7, align 8
  %15 = load %struct.a8293_platform_data*, %struct.a8293_platform_data** %7, align 8
  %16 = getelementptr inbounds %struct.a8293_platform_data, %struct.a8293_platform_data* %15, i32 0, i32 0
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %16, align 8
  store %struct.dvb_frontend* %17, %struct.dvb_frontend** %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.a8293_dev* @kzalloc(i32 8, i32 %18)
  store %struct.a8293_dev* %19, %struct.a8293_dev** %6, align 8
  %20 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %21 = icmp ne %struct.a8293_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %28 = getelementptr inbounds %struct.a8293_dev, %struct.a8293_dev* %27, i32 0, i32 0
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %31 = call i32 @i2c_master_recv(%struct.i2c_client* %29, i32* %30, i32 2)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %49

35:                                               ; preds = %25
  %36 = load i32, i32* @a8293_set_voltage, align 4
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  store %struct.a8293_dev* %40, %struct.a8293_dev** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.a8293_dev* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_info(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %58

49:                                               ; preds = %34
  %50 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %51 = call i32 @kfree(%struct.a8293_dev* %50)
  br label %52

52:                                               ; preds = %49, %22
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_dbg(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %35
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.a8293_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.a8293_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @kfree(%struct.a8293_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
