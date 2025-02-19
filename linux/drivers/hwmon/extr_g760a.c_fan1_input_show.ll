; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g760a.c_fan1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g760a.c_fan1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.g760a_data = type { i32, i32, i32, i32, i32 }

@G760A_REG_FAN_STA_RPM_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g760a_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.g760a_data* @g760a_update_client(%struct.device* %9)
  store %struct.g760a_data* %10, %struct.g760a_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %12 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %15 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @G760A_REG_FAN_STA_RPM_LOW, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %22 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %25 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %28 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rpm_from_cnt(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %20, %3
  %32 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %33 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  ret i32 %37
}

declare dso_local %struct.g760a_data* @g760a_update_client(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpm_from_cnt(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
