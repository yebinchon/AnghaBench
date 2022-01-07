; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_enter_timewait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_enter_timewait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cm_device = type { i32 }

@cm_client = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@IB_CM_TIMEWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_id_private*)* @cm_enter_timewait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_enter_timewait(%struct.cm_id_private* %0) #0 {
  %2 = alloca %struct.cm_id_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.cm_device*, align 8
  store %struct.cm_id_private* %0, %struct.cm_id_private** %2, align 8
  %6 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %7 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cm_device* @ib_get_client_data(i32 %9, i32* @cm_client)
  store %struct.cm_device* %10, %struct.cm_device** %5, align 8
  %11 = load %struct.cm_device*, %struct.cm_device** %5, align 8
  %12 = icmp ne %struct.cm_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %58

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0), i64 %15)
  %17 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %18 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call i32 @cm_cleanup_timewait(%struct.TYPE_9__* %19)
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %22 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %24, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 2))
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0), i64 %26)
  %28 = load i32, i32* @IB_CM_TIMEWAIT, align 4
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cm_convert_to_ms(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0), i64 %37)
  %39 = load %struct.cm_device*, %struct.cm_device** %5, align 8
  %40 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %14
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 1), align 4
  %45 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %46 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @msecs_to_jiffies(i32 %50)
  %52 = call i32 @queue_delayed_work(i32 %44, i32* %49, i32 %51)
  br label %53

53:                                               ; preds = %43, %14
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0), i64 %54)
  %56 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %57 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %56, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %57, align 8
  br label %58

58:                                               ; preds = %53, %13
  ret void
}

declare dso_local %struct.cm_device* @ib_get_client_data(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cm_cleanup_timewait(%struct.TYPE_9__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cm_convert_to_ms(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
