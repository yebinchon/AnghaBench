; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_on_msg_dpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_on_msg_dpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel_message_table_entry = type { i64, i32 (%struct.vmbus_channel_message_header.0*)* }
%struct.vmbus_channel_message_header.0 = type opaque
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.hv_per_cpu_context = type { i8* }
%struct.hv_message = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.vmbus_channel_message_header = type { i64 }
%struct.onmessage_work_context = type { i32, i32 }

@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4
@HVMSG_NONE = common dso_local global i64 0, align 8
@CHANNELMSG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown msgtype=%d\0A\00", align 1
@channel_message_table = common dso_local global %struct.vmbus_channel_message_table_entry* null, align 8
@VMHT_BLOCKING = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@vmbus_onmessage_work = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_on_msg_dpc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hv_per_cpu_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hv_message*, align 8
  %6 = alloca %struct.vmbus_channel_message_header*, align 8
  %7 = alloca %struct.vmbus_channel_message_table_entry*, align 8
  %8 = alloca %struct.onmessage_work_context*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hv_per_cpu_context*
  store %struct.hv_per_cpu_context* %12, %struct.hv_per_cpu_context** %3, align 8
  %13 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %3, align 8
  %14 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.hv_message*
  %18 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %17, i64 %19
  store %struct.hv_message* %20, %struct.hv_message** %5, align 8
  %21 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %22 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @HVMSG_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %106

29:                                               ; preds = %1
  %30 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %31 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.vmbus_channel_message_header*
  store %struct.vmbus_channel_message_header* %34, %struct.vmbus_channel_message_header** %6, align 8
  %35 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %6, align 8
  %36 = call i32 @trace_vmbus_on_msg_dpc(%struct.vmbus_channel_message_header* %35)
  %37 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %6, align 8
  %38 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHANNELMSG_COUNT, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %6, align 8
  %44 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %102

47:                                               ; preds = %29
  %48 = load %struct.vmbus_channel_message_table_entry*, %struct.vmbus_channel_message_table_entry** @channel_message_table, align 8
  %49 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %6, align 8
  %50 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel_message_table_entry, %struct.vmbus_channel_message_table_entry* %48, i64 %51
  store %struct.vmbus_channel_message_table_entry* %52, %struct.vmbus_channel_message_table_entry** %7, align 8
  %53 = load %struct.vmbus_channel_message_table_entry*, %struct.vmbus_channel_message_table_entry** %7, align 8
  %54 = getelementptr inbounds %struct.vmbus_channel_message_table_entry, %struct.vmbus_channel_message_table_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VMHT_BLOCKING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %47
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.onmessage_work_context* @kmalloc(i32 8, i32 %59)
  store %struct.onmessage_work_context* %60, %struct.onmessage_work_context** %8, align 8
  %61 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %8, align 8
  %62 = icmp eq %struct.onmessage_work_context* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %106

64:                                               ; preds = %58
  %65 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %8, align 8
  %66 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %65, i32 0, i32 0
  %67 = load i32, i32* @vmbus_onmessage_work, align 4
  %68 = call i32 @INIT_WORK(i32* %66, i32 %67)
  %69 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %8, align 8
  %70 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %69, i32 0, i32 1
  %71 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %72 = call i32 @memcpy(i32* %70, %struct.hv_message* %71, i32 16)
  %73 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %6, align 8
  %74 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  switch i64 %75, label %88 [
    i64 128, label %76
    i64 129, label %81
  ]

76:                                               ; preds = %64
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 1), align 4
  %78 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %8, align 8
  %79 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %78, i32 0, i32 0
  %80 = call i32 @schedule_work_on(i32 %77, i32* %79)
  br label %93

81:                                               ; preds = %64
  %82 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 2))
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 1), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), align 4
  %85 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %8, align 8
  %86 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %85, i32 0, i32 0
  %87 = call i32 @queue_work_on(i32 %83, i32 %84, i32* %86)
  br label %93

88:                                               ; preds = %64
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), align 4
  %90 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %8, align 8
  %91 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %90, i32 0, i32 0
  %92 = call i32 @queue_work(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %81, %76
  br label %101

94:                                               ; preds = %47
  %95 = load %struct.vmbus_channel_message_table_entry*, %struct.vmbus_channel_message_table_entry** %7, align 8
  %96 = getelementptr inbounds %struct.vmbus_channel_message_table_entry, %struct.vmbus_channel_message_table_entry* %95, i32 0, i32 1
  %97 = load i32 (%struct.vmbus_channel_message_header.0*)*, i32 (%struct.vmbus_channel_message_header.0*)** %96, align 8
  %98 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %6, align 8
  %99 = bitcast %struct.vmbus_channel_message_header* %98 to %struct.vmbus_channel_message_header.0*
  %100 = call i32 %97(%struct.vmbus_channel_message_header.0* %99)
  br label %101

101:                                              ; preds = %94, %93
  br label %102

102:                                              ; preds = %101, %42
  %103 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @vmbus_signal_eom(%struct.hv_message* %103, i64 %104)
  br label %106

106:                                              ; preds = %102, %63, %28
  ret void
}

declare dso_local i32 @trace_vmbus_on_msg_dpc(%struct.vmbus_channel_message_header*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local %struct.onmessage_work_context* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hv_message*, i32) #1

declare dso_local i32 @schedule_work_on(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @vmbus_signal_eom(%struct.hv_message*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
