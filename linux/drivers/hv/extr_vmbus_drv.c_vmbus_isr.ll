; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hv_per_cpu_context = type { i32, i8*, i8* }
%struct.hv_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%union.hv_synic_event_flags = type { i32 }

@hv_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@VERSION_WIN7 = common dso_local global i64 0, align 8
@HVMSG_NONE = common dso_local global i64 0, align 8
@HVMSG_TIMER_EXPIRED = common dso_local global i64 0, align 8
@HYPERVISOR_CALLBACK_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmbus_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_isr() #0 {
  %1 = alloca %struct.hv_per_cpu_context*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hv_message*, align 8
  %4 = alloca %union.hv_synic_event_flags*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hv_context, i32 0, i32 0), align 4
  %7 = call %struct.hv_per_cpu_context* @this_cpu_ptr(i32 %6)
  store %struct.hv_per_cpu_context* %7, %struct.hv_per_cpu_context** %1, align 8
  %8 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %1, align 8
  %9 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = icmp eq i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %80

17:                                               ; preds = %0
  %18 = load i8*, i8** %2, align 8
  %19 = bitcast i8* %18 to %union.hv_synic_event_flags*
  %20 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %union.hv_synic_event_flags, %union.hv_synic_event_flags* %19, i64 %21
  store %union.hv_synic_event_flags* %22, %union.hv_synic_event_flags** %4, align 8
  %23 = load i64, i64* @vmbus_proto_version, align 8
  %24 = load i64, i64* @VERSION_WS2008, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* @vmbus_proto_version, align 8
  %28 = load i64, i64* @VERSION_WIN7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %17
  %31 = load %union.hv_synic_event_flags*, %union.hv_synic_event_flags** %4, align 8
  %32 = bitcast %union.hv_synic_event_flags* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @sync_test_and_clear_bit(i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %30
  br label %39

38:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %1, align 8
  %44 = call i32 @vmbus_chan_sched(%struct.hv_per_cpu_context* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %1, align 8
  %47 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %2, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = bitcast i8* %49 to %struct.hv_message*
  %51 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %50, i64 %52
  store %struct.hv_message* %53, %struct.hv_message** %3, align 8
  %54 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %55 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HVMSG_NONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %45
  %61 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %62 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HVMSG_TIMER_EXPIRED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = call i32 (...) @hv_stimer0_isr()
  %69 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %70 = load i64, i64* @HVMSG_TIMER_EXPIRED, align 8
  %71 = call i32 @vmbus_signal_eom(%struct.hv_message* %69, i64 %70)
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %1, align 8
  %74 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %73, i32 0, i32 0
  %75 = call i32 @tasklet_schedule(i32* %74)
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* @HYPERVISOR_CALLBACK_VECTOR, align 4
  %79 = call i32 @add_interrupt_randomness(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %77, %16
  ret void
}

declare dso_local %struct.hv_per_cpu_context* @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sync_test_and_clear_bit(i32, i32) #1

declare dso_local i32 @vmbus_chan_sched(%struct.hv_per_cpu_context*) #1

declare dso_local i32 @hv_stimer0_isr(...) #1

declare dso_local i32 @vmbus_signal_eom(%struct.hv_message*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @add_interrupt_randomness(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
