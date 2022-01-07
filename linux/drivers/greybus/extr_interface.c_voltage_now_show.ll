; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_voltage_now_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_voltage_now_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gb_interface = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GB_SVC_PWRMON_TYPE_VOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to get voltage sample (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @voltage_now_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voltage_now_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gb_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.gb_interface* @to_gb_interface(%struct.device* %11)
  store %struct.gb_interface* %12, %struct.gb_interface** %8, align 8
  %13 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %14 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %19 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GB_SVC_PWRMON_TYPE_VOL, align 4
  %22 = call i32 @gb_svc_pwrmon_intf_sample_get(i32 %17, i32 %20, i32 %21, i32* %10)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %27 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.gb_interface* @to_gb_interface(%struct.device*) #1

declare dso_local i32 @gb_svc_pwrmon_intf_sample_get(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
