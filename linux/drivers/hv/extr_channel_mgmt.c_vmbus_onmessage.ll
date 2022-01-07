; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_onmessage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_onmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.vmbus_channel_message_header*)* }
%struct.vmbus_channel_message_header = type { i64 }
%struct.hv_message = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@CHANNELMSG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Received invalid channel message type %d size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@channel_message_table = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unhandled channel message type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_onmessage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hv_message*, align 8
  %4 = alloca %struct.vmbus_channel_message_header*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.hv_message*
  store %struct.hv_message* %7, %struct.hv_message** %3, align 8
  %8 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %9 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vmbus_channel_message_header*
  store %struct.vmbus_channel_message_header* %12, %struct.vmbus_channel_message_header** %4, align 8
  %13 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %14 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %18 = call i32 @trace_vmbus_on_message(%struct.vmbus_channel_message_header* %17)
  %19 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHANNELMSG_COUNT, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  %30 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %31 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %32 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %35, i32 %36)
  br label %62

38:                                               ; preds = %1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @channel_message_table, align 8
  %40 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %41 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (%struct.vmbus_channel_message_header*)*, i32 (%struct.vmbus_channel_message_header*)** %44, align 8
  %46 = icmp ne i32 (%struct.vmbus_channel_message_header*)* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @channel_message_table, align 8
  %49 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %50 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.vmbus_channel_message_header*)*, i32 (%struct.vmbus_channel_message_header*)** %53, align 8
  %55 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %56 = call i32 %54(%struct.vmbus_channel_message_header* %55)
  br label %62

57:                                               ; preds = %38
  %58 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %59 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %24, %57, %47
  ret void
}

declare dso_local i32 @trace_vmbus_on_message(%struct.vmbus_channel_message_header*) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
