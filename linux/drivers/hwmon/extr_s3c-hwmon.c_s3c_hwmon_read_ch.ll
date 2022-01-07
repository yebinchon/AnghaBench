; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_read_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_read_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.s3c_hwmon = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"reading channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.s3c_hwmon*, i32)* @s3c_hwmon_read_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_read_ch(%struct.device* %0, %struct.s3c_hwmon* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.s3c_hwmon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.s3c_hwmon* %1, %struct.s3c_hwmon** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %6, align 8
  %10 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock_interruptible(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %6, align 8
  %21 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @s3c_adc_read(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %6, align 8
  %26 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %16, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @s3c_adc_read(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
