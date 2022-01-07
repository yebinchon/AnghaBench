; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_fan1_target_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_fan1_target_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.g762_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan1_target_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_target_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %12 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %13 = call i64 @IS_ERR(%struct.g762_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.g762_data* %16)
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %20 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %23 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %26 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %29 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @G762_PULSE_FROM_REG(i32 %30)
  %32 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %33 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @G762_CLKDIV_FROM_REG(i32 %34)
  %36 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %37 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @G762_GEARMULT_FROM_REG(i32 %38)
  %40 = call i32 @rpm_from_cnt(i32 %24, i32 %27, i32 %31, i32 %35, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %42 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %18, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
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
