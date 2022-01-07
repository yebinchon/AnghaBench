; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_bundle_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_bundle_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { i32, i32, i32 }
%struct.gb_control_bundle_pm_request = type { i32 }
%struct.gb_control_bundle_pm_response = type { i32 }

@GB_CONTROL_TYPE_BUNDLE_ACTIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to send bundle %u activate: %d\0A\00", align 1
@GB_CONTROL_BUNDLE_PM_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to activate bundle %u: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_bundle_activate(%struct.gb_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_control_bundle_pm_request, align 4
  %7 = alloca %struct.gb_control_bundle_pm_response, align 4
  %8 = alloca i32, align 4
  store %struct.gb_control* %0, %struct.gb_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %10 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.gb_control_bundle_pm_request, %struct.gb_control_bundle_pm_request* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %18 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GB_CONTROL_TYPE_BUNDLE_ACTIVATE, align 4
  %21 = call i32 @gb_operation_sync(i32 %19, i32 %20, %struct.gb_control_bundle_pm_request* %6, i32 4, %struct.gb_control_bundle_pm_response* %7, i32 4)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %26 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GB_CONTROL_BUNDLE_PM_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %38 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  %43 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gb_control_bundle_pm_status_map(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %36, %24, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_control_bundle_pm_request*, i32, %struct.gb_control_bundle_pm_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @gb_control_bundle_pm_status_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
