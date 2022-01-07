; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_pwm1_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_pwm1_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1026_data = type { i32, i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CFG1_PWM_AFC = common dso_local global i32 0, align 4
@ADM1026_REG_CONFIG1 = common dso_local global i32 0, align 4
@ADM1026_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.adm1026_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.adm1026_data* %16, %struct.adm1026_data** %10, align 8
  %17 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %18 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %17, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %116

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = icmp uge i64 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %26
  %33 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %34 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %37 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i64, i64* %13, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %43 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %46 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CFG1_PWM_AFC, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i64, i64* %13, align 8
  %52 = icmp eq i64 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i32, i32* @CFG1_PWM_AFC, align 4
  br label %56

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %50, %57
  %59 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %60 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %62 = load i32, i32* @ADM1026_REG_CONFIG1, align 4
  %63 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %64 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @adm1026_write_value(%struct.i2c_client* %61, i32 %62, i32 %65)
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %67, 2
  br i1 %68, label %69, label %92

69:                                               ; preds = %56
  %70 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %71 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  %75 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %76 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PWM_MIN_TO_REG(i32 %78)
  %80 = or i32 %74, %79
  %81 = call i32 @PWM_TO_REG(i32 %80)
  %82 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %83 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %86 = load i32, i32* @ADM1026_REG_PWM, align 4
  %87 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %88 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @adm1026_write_value(%struct.i2c_client* %85, i32 %86, i32 %90)
  br label %110

92:                                               ; preds = %56
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i64, i64* %13, align 8
  %97 = icmp eq i64 %96, 1
  br i1 %97, label %109, label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %100 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 255, i32* %101, align 4
  %102 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %103 = load i32, i32* @ADM1026_REG_PWM, align 4
  %104 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %105 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @adm1026_write_value(%struct.i2c_client* %102, i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %98, %95
  br label %110

110:                                              ; preds = %109, %69
  %111 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %112 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %110, %29, %24
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.adm1026_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @PWM_TO_REG(i32) #1

declare dso_local i32 @PWM_MIN_TO_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
