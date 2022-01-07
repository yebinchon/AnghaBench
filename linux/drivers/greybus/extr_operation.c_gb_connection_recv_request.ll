; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_connection_recv_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_connection_recv_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_operation_msg_hdr = type { i32, i32 }
%struct.gb_operation = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: can't create incoming operation\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_connection*, %struct.gb_operation_msg_hdr*, i8*, i64)* @gb_connection_recv_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_connection_recv_request(%struct.gb_connection* %0, %struct.gb_operation_msg_hdr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.gb_connection*, align 8
  %6 = alloca %struct.gb_operation_msg_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gb_operation*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %5, align 8
  store %struct.gb_operation_msg_hdr* %1, %struct.gb_operation_msg_hdr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call %struct.gb_operation* @gb_operation_create_incoming(%struct.gb_connection* %20, i32 %21, i32 %22, i8* %23, i64 %24)
  store %struct.gb_operation* %25, %struct.gb_operation** %9, align 8
  %26 = load %struct.gb_operation*, %struct.gb_operation** %9, align 8
  %27 = icmp ne %struct.gb_operation* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %30 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %34 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %62

37:                                               ; preds = %4
  %38 = load %struct.gb_operation*, %struct.gb_operation** %9, align 8
  %39 = call i32 @gb_operation_get_active(%struct.gb_operation* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.gb_operation*, %struct.gb_operation** %9, align 8
  %44 = call i32 @gb_operation_put(%struct.gb_operation* %43)
  br label %62

45:                                               ; preds = %37
  %46 = load %struct.gb_operation*, %struct.gb_operation** %9, align 8
  %47 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @trace_gb_message_recv_request(i32 %48)
  %50 = load %struct.gb_operation*, %struct.gb_operation** %9, align 8
  %51 = load i32, i32* @EINPROGRESS, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i64 @gb_operation_result_set(%struct.gb_operation* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %57 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.gb_operation*, %struct.gb_operation** %9, align 8
  %60 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %59, i32 0, i32 0
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %28, %42, %55, %45
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.gb_operation* @gb_operation_create_incoming(%struct.gb_connection*, i32, i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_operation_get_active(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

declare dso_local i32 @trace_gb_message_recv_request(i32) #1

declare dso_local i64 @gb_operation_result_set(%struct.gb_operation*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
