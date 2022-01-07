; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_intrusion0_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_intrusion0_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6683_data = type { i32, i32 }

@NCT6683_LD_ACPI = common dso_local global i32 0, align 4
@NCT6683_REG_CR_CASEOPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@NCT6683_CR_CASEOPEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @intrusion0_alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intrusion0_alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nct6683_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.nct6683_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.nct6683_data* %12, %struct.nct6683_data** %8, align 8
  %13 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %14 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %17 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @superio_enter(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %49

23:                                               ; preds = %3
  %24 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %25 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NCT6683_LD_ACPI, align 4
  %28 = call i32 @superio_select(i32 %26, i32 %27)
  %29 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %30 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NCT6683_REG_CR_CASEOPEN, align 4
  %33 = call i32 @superio_inb(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %35 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @superio_exit(i32 %36)
  %38 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %39 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @NCT6683_CR_CASEOPEN_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %22
  %50 = load %struct.nct6683_data*, %struct.nct6683_data** %8, align 8
  %51 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.nct6683_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
