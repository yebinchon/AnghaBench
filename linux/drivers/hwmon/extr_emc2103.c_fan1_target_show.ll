; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_fan1_target_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_fan1_target_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc2103_data = type { i32, i32 }

@FAN_RPM_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan1_target_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_target_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.emc2103_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.emc2103_data* @emc2103_update_device(%struct.device* %9)
  store %struct.emc2103_data* %10, %struct.emc2103_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.emc2103_data*, %struct.emc2103_data** %7, align 8
  %12 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.emc2103_data*, %struct.emc2103_data** %7, align 8
  %17 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 8160
  %20 = icmp ne i32 %19, 8160
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* @FAN_RPM_FACTOR, align 4
  %23 = load %struct.emc2103_data*, %struct.emc2103_data** %7, align 8
  %24 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.emc2103_data*, %struct.emc2103_data** %7, align 8
  %28 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %21, %15, %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret i32 %34
}

declare dso_local %struct.emc2103_data* @emc2103_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
