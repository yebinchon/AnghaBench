; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_fan1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_fan1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.g762_data = type { i32, i32, i32, i32, i32, i32 }

@G762_REG_FAN_STA_OOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g762_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.g762_data* @g762_update_client(%struct.device* %10)
  store %struct.g762_data* %11, %struct.g762_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %13 = call i64 @IS_ERR(%struct.g762_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.g762_data* %16)
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %20 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %23 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @G762_REG_FAN_STA_OOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %18
  %29 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %30 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %33 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %36 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @G762_PULSE_FROM_REG(i32 %37)
  %39 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %40 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @G762_CLKDIV_FROM_REG(i32 %41)
  %43 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %44 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @G762_GEARMULT_FROM_REG(i32 %45)
  %47 = call i32 @rpm_from_cnt(i32 %31, i32 %34, i32 %38, i32 %42, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %28, %18
  %49 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %50 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.g762_data* @g762_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.g762_data*) #1

declare dso_local i32 @PTR_ERR(%struct.g762_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpm_from_cnt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @G762_PULSE_FROM_REG(i32) #1

declare dso_local i32 @G762_CLKDIV_FROM_REG(i32) #1

declare dso_local i32 @G762_GEARMULT_FROM_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
