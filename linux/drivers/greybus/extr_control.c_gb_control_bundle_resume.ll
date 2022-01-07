; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_bundle_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_bundle_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { i32, i32 }
%struct.gb_control_bundle_pm_request = type { i32 }
%struct.gb_control_bundle_pm_response = type { i32 }

@GB_CONTROL_TYPE_BUNDLE_RESUME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to send bundle %u resume: %d\0A\00", align 1
@GB_CONTROL_BUNDLE_PM_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to resume bundle %u: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_bundle_resume(%struct.gb_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_control_bundle_pm_request, align 4
  %7 = alloca %struct.gb_control_bundle_pm_response, align 4
  %8 = alloca i32, align 4
  store %struct.gb_control* %0, %struct.gb_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.gb_control_bundle_pm_request, %struct.gb_control_bundle_pm_request* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %12 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GB_CONTROL_TYPE_BUNDLE_RESUME, align 4
  %15 = call i32 @gb_operation_sync(i32 %13, i32 %14, %struct.gb_control_bundle_pm_request* %6, i32 4, %struct.gb_control_bundle_pm_response* %7, i32 4)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %20 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GB_CONTROL_BUNDLE_PM_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %32 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gb_control_bundle_pm_status_map(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %30, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
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
