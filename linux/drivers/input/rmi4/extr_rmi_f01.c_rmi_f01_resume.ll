; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.f01_data = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@RMI_F01_CTRL0_NOSLEEP_BIT = common dso_local global i32 0, align 4
@RMI_F01_CTRL0_SLEEP_MODE_MASK = common dso_local global i32 0, align 4
@RMI_SLEEP_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to restore normal operation: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f01_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f01_resume(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.f01_data*, align 8
  %5 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %6 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %7 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %6, i32 0, i32 0
  %8 = call %struct.f01_data* @dev_get_drvdata(i32* %7)
  store %struct.f01_data* %8, %struct.f01_data** %4, align 8
  %9 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %10 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @RMI_F01_CTRL0_NOSLEEP_BIT, align 4
  %15 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %16 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @RMI_F01_CTRL0_SLEEP_MODE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %24 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @RMI_SLEEP_MODE_NORMAL, align 4
  %29 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %30 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  %34 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %35 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %38 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %42 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rmi_write(i32 %36, i32 %40, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %20
  %49 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %50 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.f01_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
