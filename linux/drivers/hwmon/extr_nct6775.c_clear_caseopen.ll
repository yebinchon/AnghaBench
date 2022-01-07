; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_clear_caseopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_clear_caseopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@INTRUSION_ALARM_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@NCT6775_LD_ACPI = common dso_local global i32 0, align 4
@NCT6775_REG_CR_CASEOPEN_CLR = common dso_local global i32* null, align 8
@NCT6775_CR_CASEOPEN_CLR_MASK = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @clear_caseopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clear_caseopen(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.nct6775_data* %16, %struct.nct6775_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INTRUSION_ALARM_BASE, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtoul(i8* %23, i32 10, i64* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %106

32:                                               ; preds = %26
  %33 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %34 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %37 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @superio_enter(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  br label %101

45:                                               ; preds = %32
  %46 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %47 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NCT6775_LD_ACPI, align 4
  %50 = call i32 @superio_select(i32 %48, i32 %49)
  %51 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %52 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @NCT6775_REG_CR_CASEOPEN_CLR, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @superio_inb(i32 %53, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32*, i32** @NCT6775_CR_CASEOPEN_CLR_MASK, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %68 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @NCT6775_REG_CR_CASEOPEN_CLR, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @superio_outb(i32 %69, i32 %74, i32 %75)
  %77 = load i32*, i32** @NCT6775_CR_CASEOPEN_CLR_MASK, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %86 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @NCT6775_REG_CR_CASEOPEN_CLR, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @superio_outb(i32 %87, i32 %92, i32 %93)
  %95 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %96 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @superio_exit(i32 %97)
  %99 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %100 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %45, %42
  %102 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %103 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %101, %29
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @superio_outb(i32, i32, i32) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
