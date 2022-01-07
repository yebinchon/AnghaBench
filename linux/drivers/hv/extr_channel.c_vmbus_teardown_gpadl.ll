; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_teardown_gpadl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_teardown_gpadl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.vmbus_channel = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_channel_gpadl_teardown = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vmbus_channel_msginfo = type { i32, i32, i64, %struct.vmbus_channel* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANNELMSG_GPADL_TEARDOWN = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_teardown_gpadl(%struct.vmbus_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_channel_gpadl_teardown*, align 8
  %7 = alloca %struct.vmbus_channel_msginfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vmbus_channel_msginfo* @kmalloc(i32 36, i32 %10)
  store %struct.vmbus_channel_msginfo* %11, %struct.vmbus_channel_msginfo** %7, align 8
  %12 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %13 = icmp ne %struct.vmbus_channel_msginfo* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %18, i32 0, i32 1
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %22 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %23 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %22, i32 0, i32 3
  store %struct.vmbus_channel* %21, %struct.vmbus_channel** %23, align 8
  %24 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.vmbus_channel_gpadl_teardown*
  store %struct.vmbus_channel_gpadl_teardown* %27, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %28 = load i32, i32* @CHANNELMSG_GPADL_TEARDOWN, align 4
  %29 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %30 = getelementptr inbounds %struct.vmbus_channel_gpadl_teardown, %struct.vmbus_channel_gpadl_teardown* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel_gpadl_teardown, %struct.vmbus_channel_gpadl_teardown* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %40 = getelementptr inbounds %struct.vmbus_channel_gpadl_teardown, %struct.vmbus_channel_gpadl_teardown* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %41)
  %43 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %44 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %44, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 1))
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %46)
  %48 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %49 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %17
  br label %66

53:                                               ; preds = %17
  %54 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %55 = call i32 @vmbus_post_msg(%struct.vmbus_channel_gpadl_teardown* %54, i32 12, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @trace_vmbus_teardown_gpadl(%struct.vmbus_channel_gpadl_teardown* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %64 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %63, i32 0, i32 1
  %65 = call i32 @wait_for_completion(i32* %64)
  br label %66

66:                                               ; preds = %62, %61, %52
  %67 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %68 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %73)
  %75 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %76 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %75, i32 0, i32 0
  %77 = call i32 @list_del(i32* %76)
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %78)
  %80 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %81 = call i32 @kfree(%struct.vmbus_channel_msginfo* %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.vmbus_channel_msginfo* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_gpadl_teardown*, i32, i32) #1

declare dso_local i32 @trace_vmbus_teardown_gpadl(%struct.vmbus_channel_gpadl_teardown*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
