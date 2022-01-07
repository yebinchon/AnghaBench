; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_reg2data_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_reg2data_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i32* }
%struct.pmbus_sensor = type { i64, i64, i32 }

@PSC_VOLTAGE_OUT = common dso_local global i64 0, align 8
@PSC_FAN = common dso_local global i64 0, align 8
@PSC_POWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pmbus_data*, %struct.pmbus_sensor*)* @pmbus_reg2data_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmbus_reg2data_linear(%struct.pmbus_data* %0, %struct.pmbus_sensor* %1) #0 {
  %3 = alloca %struct.pmbus_data*, align 8
  %4 = alloca %struct.pmbus_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %3, align 8
  store %struct.pmbus_sensor* %1, %struct.pmbus_sensor** %4, align 8
  %8 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %9 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.pmbus_data*, %struct.pmbus_data** %3, align 8
  %15 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %18 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %23 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %28 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 11
  store i32 %30, i32* %5, align 4
  %31 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %32 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 2047
  %35 = shl i32 %34, 5
  %36 = ashr i32 %35, 5
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %26, %13
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %41 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PSC_FAN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = mul nsw i64 %46, 1000
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %50 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PSC_POWER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = mul nsw i64 %55, 1000
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %7, align 8
  %63 = zext i32 %61 to i64
  %64 = shl i64 %62, %63
  store i64 %64, i64* %7, align 8
  br label %71

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 0, %66
  %68 = load i64, i64* %7, align 8
  %69 = zext i32 %67 to i64
  %70 = ashr i64 %68, %69
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
