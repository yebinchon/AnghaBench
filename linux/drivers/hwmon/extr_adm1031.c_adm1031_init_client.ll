; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_adm1031_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_adm1031_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm1031_data = type { i64, i32 }

@ADM1031_CONF2_PWM1_ENABLE = common dso_local global i32 0, align 4
@ADM1031_CONF2_TACH1_ENABLE = common dso_local global i32 0, align 4
@adm1031 = common dso_local global i64 0, align 8
@ADM1031_CONF2_PWM2_ENABLE = common dso_local global i32 0, align 4
@ADM1031_CONF2_TACH2_ENABLE = common dso_local global i32 0, align 4
@ADM1031_REG_CONF2 = common dso_local global i32 0, align 4
@ADM1031_REG_CONF1 = common dso_local global i32 0, align 4
@ADM1031_CONF1_MONITOR_ENABLE = common dso_local global i32 0, align 4
@ADM1031_UPDATE_RATE_MASK = common dso_local global i32 0, align 4
@ADM1031_REG_FAN_FILTER = common dso_local global i32 0, align 4
@ADM1031_UPDATE_RATE_SHIFT = common dso_local global i32 0, align 4
@update_intervals = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm1031_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1031_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adm1031_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.adm1031_data* %8, %struct.adm1031_data** %6, align 8
  %9 = load i32, i32* @ADM1031_CONF2_PWM1_ENABLE, align 4
  %10 = load i32, i32* @ADM1031_CONF2_TACH1_ENABLE, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %13 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @adm1031, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @ADM1031_CONF2_PWM2_ENABLE, align 4
  %19 = load i32, i32* @ADM1031_CONF2_TACH2_ENABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = load i32, i32* @ADM1031_REG_CONF2, align 4
  %26 = call i32 @adm1031_read_value(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = load i32, i32* @ADM1031_REG_CONF2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @adm1031_write_value(%struct.i2c_client* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %23
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %42 = call i32 @adm1031_read_value(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ADM1031_CONF1_MONITOR_ENABLE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @ADM1031_CONF1_MONITOR_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @adm1031_write_value(%struct.i2c_client* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %39
  %56 = load i32, i32* @ADM1031_UPDATE_RATE_MASK, align 4
  store i32 %56, i32* %4, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %58 = load i32, i32* @ADM1031_REG_FAN_FILTER, align 4
  %59 = call i32 @adm1031_read_value(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @ADM1031_UPDATE_RATE_SHIFT, align 4
  %64 = lshr i32 %62, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32*, i32** @update_intervals, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %71 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  ret void
}

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
