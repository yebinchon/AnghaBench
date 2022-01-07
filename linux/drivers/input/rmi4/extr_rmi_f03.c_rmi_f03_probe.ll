; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { %struct.device }
%struct.device = type { i32 }
%struct.f03_data = type { i32, %struct.rmi_function* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"found %d devices on PS/2 passthrough\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f03_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f03_probe(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.f03_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %7 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %8 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.f03_data* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.f03_data* %11, %struct.f03_data** %5, align 8
  %12 = load %struct.f03_data*, %struct.f03_data** %5, align 8
  %13 = icmp ne %struct.f03_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %19 = load %struct.f03_data*, %struct.f03_data** %5, align 8
  %20 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %19, i32 0, i32 1
  store %struct.rmi_function* %18, %struct.rmi_function** %20, align 8
  %21 = load %struct.f03_data*, %struct.f03_data** %5, align 8
  %22 = call i32 @rmi_f03_initialize(%struct.f03_data* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.f03_data*, %struct.f03_data** %5, align 8
  %29 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.f03_data*, %struct.f03_data** %5, align 8
  %35 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.f03_data*, %struct.f03_data** %5, align 8
  %41 = call i32 @dev_set_drvdata(%struct.device* %39, %struct.f03_data* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %25, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.f03_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @rmi_f03_initialize(%struct.f03_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.f03_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
