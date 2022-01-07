; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_max_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_max_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stts751_priv = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @max_alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stts751_priv*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.stts751_priv* @dev_get_drvdata(%struct.device* %10)
  store %struct.stts751_priv* %11, %struct.stts751_priv** %9, align 8
  %12 = load %struct.stts751_priv*, %struct.stts751_priv** %9, align 8
  %13 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.stts751_priv*, %struct.stts751_priv** %9, align 8
  %16 = call i32 @stts751_update(%struct.stts751_priv* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.stts751_priv*, %struct.stts751_priv** %9, align 8
  %21 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.stts751_priv*, %struct.stts751_priv** %9, align 8
  %24 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %23, i32 0, i32 2
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.stts751_priv*, %struct.stts751_priv** %9, align 8
  %34 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.stts751_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stts751_update(%struct.stts751_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
