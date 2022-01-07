; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34.c_rmi_driver_bootloader_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34.c_rmi_driver_bootloader_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rmi_driver_data = type { %struct.rmi_function* }
%struct.rmi_function = type { %struct.device }
%struct.f34_data = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"V%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @rmi_driver_bootloader_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_driver_bootloader_id_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rmi_driver_data*, align 8
  %9 = alloca %struct.rmi_function*, align 8
  %10 = alloca %struct.f34_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i8* @dev_get_drvdata(%struct.device* %11)
  %13 = bitcast i8* %12 to %struct.rmi_driver_data*
  store %struct.rmi_driver_data* %13, %struct.rmi_driver_data** %8, align 8
  %14 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %8, align 8
  %15 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %14, i32 0, i32 0
  %16 = load %struct.rmi_function*, %struct.rmi_function** %15, align 8
  store %struct.rmi_function* %16, %struct.rmi_function** %9, align 8
  %17 = load %struct.rmi_function*, %struct.rmi_function** %9, align 8
  %18 = icmp ne %struct.rmi_function* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %3
  %20 = load %struct.rmi_function*, %struct.rmi_function** %9, align 8
  %21 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %20, i32 0, i32 0
  %22 = call i8* @dev_get_drvdata(%struct.device* %21)
  %23 = bitcast i8* %22 to %struct.f34_data*
  store %struct.f34_data* %23, %struct.f34_data** %10, align 8
  %24 = load %struct.f34_data*, %struct.f34_data** %10, align 8
  %25 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load %struct.f34_data*, %struct.f34_data** %10, align 8
  %32 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.f34_data*, %struct.f34_data** %10, align 8
  %37 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @scnprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %19
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load %struct.f34_data*, %struct.f34_data** %10, align 8
  %46 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.f34_data*, %struct.f34_data** %10, align 8
  %51 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @scnprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %42, %28
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
