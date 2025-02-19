; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_mode_switch_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_mode_switch_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { i32, i32 }
%struct.gb_operation = type { i32 }

@GB_CONTROL_TYPE_MODE_SWITCH = common dso_local global i32 0, align 4
@GB_OPERATION_FLAG_UNIDIRECTIONAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to send mode switch: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_mode_switch_operation(%struct.gb_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_control*, align 8
  %4 = alloca %struct.gb_operation*, align 8
  %5 = alloca i32, align 4
  store %struct.gb_control* %0, %struct.gb_control** %3, align 8
  %6 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %7 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GB_CONTROL_TYPE_MODE_SWITCH, align 4
  %10 = load i32, i32* @GB_OPERATION_FLAG_UNIDIRECTIONAL, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gb_operation* @gb_operation_create_core(i32 %8, i32 %9, i32 0, i32 0, i32 %10, i32 %11)
  store %struct.gb_operation* %12, %struct.gb_operation** %4, align 8
  %13 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %14 = icmp ne %struct.gb_operation* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %20 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %25 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %30 = call i32 @gb_operation_put(%struct.gb_operation* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.gb_operation* @gb_operation_create_core(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
