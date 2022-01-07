; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wf_lm75_sensor = type { i32, %struct.TYPE_3__, %struct.i2c_client*, i64 }
%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [48 x i8] c"wf_lm75: creating  %s device at address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ds1775\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lm75\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Missing hwsensor-location property!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Hard drive\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"DRIVE BAY\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"hd-temp\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Incoming Air Temp\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"incoming-air-temp\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ODD Temp\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"optical-drive-temp\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"HD Temp\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"hard-drive-temp\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PCI SLOTS\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"slots-temp\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"CPU A INLET\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"cpu-inlet-temp-0\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"CPU B INLET\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"cpu-inlet-temp-1\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@wf_lm75_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wf_lm75_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_lm75_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wf_lm75_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @of_get_property(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %120

35:                                               ; preds = %2
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %83

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %82

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %81

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %80

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %79

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %78

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %120

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %48
  br label %83

83:                                               ; preds = %82, %43
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.wf_lm75_sensor* @kzalloc(i32 40, i32 %84)
  store %struct.wf_lm75_sensor* %85, %struct.wf_lm75_sensor** %6, align 8
  %86 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %87 = icmp eq %struct.wf_lm75_sensor* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %120

91:                                               ; preds = %83
  %92 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %93 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %96 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %99 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %98, i32 0, i32 2
  store %struct.i2c_client* %97, %struct.i2c_client** %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %102 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %105 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32* @wf_lm75_ops, i32** %106, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %109 = call i32 @i2c_set_clientdata(%struct.i2c_client* %107, %struct.wf_lm75_sensor* %108)
  %110 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %111 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %110, i32 0, i32 1
  %112 = call i32 @wf_register_sensor(%struct.TYPE_3__* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %91
  %116 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %117 = call i32 @kfree(%struct.wf_lm75_sensor* %116)
  br label %118

118:                                              ; preds = %115, %91
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %88, %74, %29
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @DBG(i8*, i8*, i32) #1

declare dso_local i8* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.wf_lm75_sensor* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wf_lm75_sensor*) #1

declare dso_local i32 @wf_register_sensor(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.wf_lm75_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
