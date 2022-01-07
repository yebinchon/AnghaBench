; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_interface_deactivate_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_interface_deactivate_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { i32, i32 }
%struct.gb_control_intf_pm_response = type { i32 }

@GB_CONTROL_TYPE_INTF_DEACTIVATE_PREPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to send interface deactivate prepare: %d\0A\00", align 1
@GB_CONTROL_INTF_PM_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"interface error while preparing deactivate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_interface_deactivate_prepare(%struct.gb_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_control*, align 8
  %4 = alloca %struct.gb_control_intf_pm_response, align 4
  %5 = alloca i32, align 4
  store %struct.gb_control* %0, %struct.gb_control** %3, align 8
  %6 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %7 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GB_CONTROL_TYPE_INTF_DEACTIVATE_PREPARE, align 4
  %10 = call i32 @gb_operation_sync(i32 %8, i32 %9, i32* null, i32 0, %struct.gb_control_intf_pm_response* %4, i32 4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %15 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GB_CONTROL_INTF_PM_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %26 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gb_control_interface_pm_status_map(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %24, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, %struct.gb_control_intf_pm_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_control_interface_pm_status_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
