; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_fan_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_fan_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.pmbus_sensor = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@PMBUS_VIRT_FAN_TARGET_1 = common dso_local global i64 0, align 8
@PSC_FAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PMBUS_HAVE_PWM12 = common dso_local global i32 0, align 4
@PMBUS_HAVE_PWM34 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@PMBUS_VIRT_PWM_1 = common dso_local global i64 0, align 8
@PSC_PWM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@PMBUS_VIRT_PWM_ENABLE_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*, i32, i32, i32, i32)* @pmbus_add_fan_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_fan_ctrl(%struct.i2c_client* %0, %struct.pmbus_data* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.pmbus_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pmbus_sensor*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %8, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.pmbus_data*, %struct.pmbus_data** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i64, i64* @PMBUS_VIRT_FAN_TARGET_1, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @PSC_FAN, align 4
  %23 = call %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i64 %21, i32 %22, i32 0, i32 0, i32 1)
  store %struct.pmbus_sensor* %23, %struct.pmbus_sensor** %14, align 8
  %24 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %14, align 8
  %25 = icmp ne %struct.pmbus_sensor* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %87

29:                                               ; preds = %6
  %30 = load %struct.pmbus_data*, %struct.pmbus_data** %9, align 8
  %31 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PMBUS_HAVE_PWM12, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %29
  %43 = load %struct.pmbus_data*, %struct.pmbus_data** %9, align 8
  %44 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PMBUS_HAVE_PWM34, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %87

56:                                               ; preds = %42, %29
  %57 = load %struct.pmbus_data*, %struct.pmbus_data** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i64, i64* @PMBUS_VIRT_PWM_1, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* @PSC_PWM, align 4
  %65 = call %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 %58, i32 %59, i64 %63, i32 %64, i32 0, i32 0, i32 1)
  store %struct.pmbus_sensor* %65, %struct.pmbus_sensor** %14, align 8
  %66 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %14, align 8
  %67 = icmp ne %struct.pmbus_sensor* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %87

71:                                               ; preds = %56
  %72 = load %struct.pmbus_data*, %struct.pmbus_data** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i64, i64* @PMBUS_VIRT_PWM_ENABLE_1, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* @PSC_PWM, align 4
  %80 = call %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74, i64 %78, i32 %79, i32 1, i32 0, i32 0)
  store %struct.pmbus_sensor* %80, %struct.pmbus_sensor** %14, align 8
  %81 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %14, align 8
  %82 = icmp ne %struct.pmbus_sensor* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %87

86:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %83, %68, %55, %26
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data*, i8*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
