; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_hv_process_channel_removal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_hv_process_channel_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vmbus_channel = type { i64, i64, %struct.TYPE_3__, i32, i32, i32, %struct.vmbus_channel*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@vmbus_connection = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@HV_LOCALIZED = common dso_local global i64 0, align 8
@INVALID_RELID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_process_channel_removal(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %5 = call i32 @mutex_is_locked(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0))
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @get_cpu()
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = call i32 (...) @put_cpu()
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %28 = call i32 @smp_call_function_single(i64 %26, i32 (%struct.vmbus_channel*)* @percpu_channel_deq, %struct.vmbus_channel* %27, i32 1)
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %31 = call i32 @percpu_channel_deq(%struct.vmbus_channel* %30)
  %32 = call i32 (...) @put_cpu()
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %35 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %34, i32 0, i32 6
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %35, align 8
  %37 = icmp eq %struct.vmbus_channel* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %40 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %39, i32 0, i32 7
  %41 = call i32 @list_del(i32* %40)
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  store %struct.vmbus_channel* %42, %struct.vmbus_channel** %3, align 8
  br label %58

43:                                               ; preds = %33
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 6
  %46 = load %struct.vmbus_channel*, %struct.vmbus_channel** %45, align 8
  store %struct.vmbus_channel* %46, %struct.vmbus_channel** %3, align 8
  %47 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %48 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %47, i32 0, i32 4
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %51, i32 0, i32 5
  %53 = call i32 @list_del(i32* %52)
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %43, %38
  %59 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %60 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HV_LOCALIZED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %66 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %69 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %68, i32 0, i32 3
  %70 = call i32 @cpumask_clear_cpu(i64 %67, i32* %69)
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %73 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @INVALID_RELID, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %80 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @vmbus_release_relid(i64 %82)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %86 = call i32 @free_channel(%struct.vmbus_channel* %85)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @smp_call_function_single(i64, i32 (%struct.vmbus_channel*)*, %struct.vmbus_channel*, i32) #1

declare dso_local i32 @percpu_channel_deq(%struct.vmbus_channel*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpumask_clear_cpu(i64, i32*) #1

declare dso_local i32 @vmbus_release_relid(i64) #1

declare dso_local i32 @free_channel(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
