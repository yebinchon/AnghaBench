; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt330x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt330x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.i2c_device_id = type { i32 }
%struct.lgdt330x_state = type { i32, i32, %struct.TYPE_6__, %struct.i2c_client*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.lgdt330x_state*, %struct.TYPE_6__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lgdt3302_ops = common dso_local global i32 0, align 4
@lgdt3303_ops = common dso_local global i32 0, align 4
@lgdt330x_get_dvb_frontend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Demod loaded for LGDT330%s chip\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@debug = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Error loading lgdt330x driver\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lgdt330x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt330x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lgdt330x_state*, align 8
  %7 = alloca [1 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.lgdt330x_state* null, %struct.lgdt330x_state** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lgdt330x_state* @kzalloc(i32 40, i32 %8)
  store %struct.lgdt330x_state* %9, %struct.lgdt330x_state** %6, align 8
  %10 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %11 = icmp ne %struct.lgdt330x_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %73

13:                                               ; preds = %2
  %14 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %15 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %14, i32 0, i32 2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @memcpy(%struct.TYPE_6__* %15, i32* %19, i32 8)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.lgdt330x_state* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %26 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %25, i32 0, i32 3
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %28 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %41 [
    i32 129, label %31
    i32 128, label %36
  ]

31:                                               ; preds = %13
  %32 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %33 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i32 @memcpy(%struct.TYPE_6__* %34, i32* @lgdt3302_ops, i32 4)
  br label %42

36:                                               ; preds = %13
  %37 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %38 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @memcpy(%struct.TYPE_6__* %39, i32* @lgdt3303_ops, i32 4)
  br label %42

41:                                               ; preds = %13
  br label %73

42:                                               ; preds = %36, %31
  %43 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %44 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %45 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store %struct.lgdt330x_state* %43, %struct.lgdt330x_state** %46, align 8
  %47 = load i32, i32* @lgdt330x_get_dvb_frontend, align 4
  %48 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %49 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %52 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %53 = call i64 @i2c_read_demod_bytes(%struct.lgdt330x_state* %51, i32 2, i32* %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %73

56:                                               ; preds = %42
  %57 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %58 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %60 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %59, i32 0, i32 1
  store i32 -1, i32* %60, align 4
  %61 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %62 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %61, i32 0, i32 3
  %63 = load %struct.i2c_client*, %struct.i2c_client** %62, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %66 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 129
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @dev_info(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %71)
  store i32 0, i32* %3, align 4
  br label %86

73:                                               ; preds = %55, %41, %12
  %74 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %75 = call i32 @kfree(%struct.lgdt330x_state* %74)
  %76 = load i64, i64* @debug, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @KERN_DEBUG, align 4
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 @dev_printk(i32 %79, %struct.TYPE_7__* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %56
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.lgdt330x_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lgdt330x_state*) #1

declare dso_local i64 @i2c_read_demod_bytes(%struct.lgdt330x_state*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.lgdt330x_state*) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
