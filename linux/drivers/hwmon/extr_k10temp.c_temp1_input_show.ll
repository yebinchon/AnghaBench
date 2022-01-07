; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_temp1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_temp1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.k10temp_data = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.k10temp_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.k10temp_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.k10temp_data* %10, %struct.k10temp_data** %7, align 8
  %11 = load %struct.k10temp_data*, %struct.k10temp_data** %7, align 8
  %12 = call i32 @get_raw_temp(%struct.k10temp_data* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.k10temp_data*, %struct.k10temp_data** %7, align 8
  %15 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.k10temp_data*, %struct.k10temp_data** %7, align 8
  %20 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret i32 %28
}

declare dso_local %struct.k10temp_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @get_raw_temp(%struct.k10temp_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
