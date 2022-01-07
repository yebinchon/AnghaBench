; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_disconnecting_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_disconnecting_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { i32, i32 }
%struct.gb_control_disconnecting_request = type { i32 }
%struct.gb_operation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_control_disconnecting_request* }

@GB_CONTROL_TYPE_DISCONNECTING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to send disconnecting: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_disconnecting_operation(%struct.gb_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_control_disconnecting_request*, align 8
  %7 = alloca %struct.gb_operation*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_control* %0, %struct.gb_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %10 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GB_CONTROL_TYPE_DISCONNECTING, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gb_operation* @gb_operation_create_core(i32 %11, i32 %12, i32 4, i32 0, i32 0, i32 %13)
  store %struct.gb_operation* %14, %struct.gb_operation** %7, align 8
  %15 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %16 = icmp ne %struct.gb_operation* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %22 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.gb_control_disconnecting_request*, %struct.gb_control_disconnecting_request** %24, align 8
  store %struct.gb_control_disconnecting_request* %25, %struct.gb_control_disconnecting_request** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = load %struct.gb_control_disconnecting_request*, %struct.gb_control_disconnecting_request** %6, align 8
  %29 = getelementptr inbounds %struct.gb_control_disconnecting_request, %struct.gb_control_disconnecting_request* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %31 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.gb_control*, %struct.gb_control** %4, align 8
  %36 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %20
  %40 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %41 = call i32 @gb_operation_put(%struct.gb_operation* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.gb_operation* @gb_operation_create_core(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
