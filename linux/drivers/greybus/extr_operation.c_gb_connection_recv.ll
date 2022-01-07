; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_connection_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_connection_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_operation_msg_hdr = type { i32, i32, i32 }

@GB_CONNECTION_STATE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s: dropping %zu received bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: short message received\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"%s: incomplete message 0x%04x of type 0x%02x received (%zu < %zu)\0A\00", align 1
@GB_MESSAGE_TYPE_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_connection_recv(%struct.gb_connection* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gb_operation_msg_hdr, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %11 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GB_CONNECTION_STATE_DISABLED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %21 = call i64 @gb_connection_is_offloaded(%struct.gb_connection* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %3
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %26 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @dev_warn_ratelimited(%struct.device* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28)
  br label %77

30:                                               ; preds = %19
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %31, 12
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %36 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.device*, i8*, i32, ...) @dev_err_ratelimited(%struct.device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %77

39:                                               ; preds = %30
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @memcpy(%struct.gb_operation_msg_hdr* %7, i8* %40, i32 12)
  %42 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %51 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le16_to_cpu(i32 %54)
  %56 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err_ratelimited(%struct.device* %49, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %52, i64 %55, i32 %57, i64 %58, i64 %59)
  br label %77

61:                                               ; preds = %39
  %62 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GB_MESSAGE_TYPE_RESPONSE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @gb_connection_recv_response(%struct.gb_connection* %68, %struct.gb_operation_msg_hdr* %7, i8* %69, i64 %70)
  br label %77

72:                                               ; preds = %61
  %73 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @gb_connection_recv_request(%struct.gb_connection* %73, %struct.gb_operation_msg_hdr* %7, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %23, %33, %48, %72, %67
  ret void
}

declare dso_local i64 @gb_connection_is_offloaded(%struct.gb_connection*) #1

declare dso_local i32 @dev_warn_ratelimited(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(%struct.gb_operation_msg_hdr*, i8*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @gb_connection_recv_response(%struct.gb_connection*, %struct.gb_operation_msg_hdr*, i8*, i64) #1

declare dso_local i32 @gb_connection_recv_request(%struct.gb_connection*, %struct.gb_operation_msg_hdr*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
