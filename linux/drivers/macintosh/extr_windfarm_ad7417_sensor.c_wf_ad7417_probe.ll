; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wf_ad7417_priv = type { i32, %struct.mpu_data*, %struct.i2c_client*, i32, i32 }
%struct.mpu_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Missing hwsensor-location property!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CPU A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"CPU B\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"wf_ad7417: Can't identify location %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to retrieve MPU data\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"cpu-amb-temp\00", align 1
@wf_ad7417_temp_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"cpu-diode-temp\00", align 1
@wf_ad7417_adc_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"cpu-12v-current\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"cpu-voltage\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cpu-current\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wf_ad7417_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_ad7417_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wf_ad7417_priv*, align 8
  %7 = alloca %struct.mpu_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @of_get_property(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %39

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %90

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.mpu_data* @wf_get_mpu(i32 %40)
  store %struct.mpu_data* %41, %struct.mpu_data** %7, align 8
  %42 = load %struct.mpu_data*, %struct.mpu_data** %7, align 8
  %43 = icmp ne %struct.mpu_data* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %90

50:                                               ; preds = %39
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.wf_ad7417_priv* @kzalloc(i32 32, i32 %51)
  store %struct.wf_ad7417_priv* %52, %struct.wf_ad7417_priv** %6, align 8
  %53 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %54 = icmp eq %struct.wf_ad7417_priv* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %90

58:                                               ; preds = %50
  %59 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %60 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %59, i32 0, i32 4
  %61 = call i32 @kref_init(i32* %60)
  %62 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %63 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %62, i32 0, i32 3
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %67 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %66, i32 0, i32 2
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %70 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mpu_data*, %struct.mpu_data** %7, align 8
  %72 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %73 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %72, i32 0, i32 1
  store %struct.mpu_data* %71, %struct.mpu_data** %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %77 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %75, %struct.wf_ad7417_priv* %76)
  %78 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %79 = call i32 @wf_ad7417_init_chip(%struct.wf_ad7417_priv* %78)
  %80 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %81 = call i32 @wf_ad7417_add_sensor(%struct.wf_ad7417_priv* %80, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* @wf_ad7417_temp_ops)
  %82 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %83 = call i32 @wf_ad7417_add_sensor(%struct.wf_ad7417_priv* %82, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* @wf_ad7417_adc_ops)
  %84 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %85 = call i32 @wf_ad7417_add_sensor(%struct.wf_ad7417_priv* %84, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* @wf_ad7417_adc_ops)
  %86 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %87 = call i32 @wf_ad7417_add_sensor(%struct.wf_ad7417_priv* %86, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* @wf_ad7417_adc_ops)
  %88 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %89 = call i32 @wf_ad7417_add_sensor(%struct.wf_ad7417_priv* %88, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* @wf_ad7417_adc_ops)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %58, %55, %44, %33, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i8* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.mpu_data* @wf_get_mpu(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.wf_ad7417_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.wf_ad7417_priv*) #1

declare dso_local i32 @wf_ad7417_init_chip(%struct.wf_ad7417_priv*) #1

declare dso_local i32 @wf_ad7417_add_sensor(%struct.wf_ad7417_priv*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
