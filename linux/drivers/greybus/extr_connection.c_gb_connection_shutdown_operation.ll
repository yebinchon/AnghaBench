; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_shutdown_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_shutdown_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_cport_shutdown_request = type { i32 }
%struct.gb_operation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_cport_shutdown_request* }

@GB_REQUEST_TYPE_CPORT_SHUTDOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*, i32)* @gb_connection_shutdown_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_connection_shutdown_operation(%struct.gb_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_cport_shutdown_request*, align 8
  %7 = alloca %struct.gb_operation*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %10 = load i32, i32* @GB_REQUEST_TYPE_CPORT_SHUTDOWN, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection* %9, i32 %10, i32 4, i32 0, i32 0, i32 %11)
  store %struct.gb_operation* %12, %struct.gb_operation** %7, align 8
  %13 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %14 = icmp ne %struct.gb_operation* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %20 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.gb_cport_shutdown_request*, %struct.gb_cport_shutdown_request** %22, align 8
  store %struct.gb_cport_shutdown_request* %23, %struct.gb_cport_shutdown_request** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.gb_cport_shutdown_request*, %struct.gb_cport_shutdown_request** %6, align 8
  %26 = getelementptr inbounds %struct.gb_cport_shutdown_request, %struct.gb_cport_shutdown_request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %28 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %30 = call i32 @gb_operation_put(%struct.gb_operation* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
