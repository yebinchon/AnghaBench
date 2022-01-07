; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_unregister_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_unregister_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.smscore_device_notifyee_t = type { i64, i32 }

@g_smscore_deviceslock = common dso_local global i32 0, align 4
@g_smscore_notifyees = common dso_local global %struct.list_head zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smscore_unregister_hotplug(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.smscore_device_notifyee_t*, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i32 @kmutex_lock(i32* @g_smscore_deviceslock)
  store %struct.list_head* @g_smscore_notifyees, %struct.list_head** %4, align 8
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  %8 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0
  %9 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %9, %struct.list_head** %3, align 8
  br label %10

10:                                               ; preds = %31, %1
  %11 = load %struct.list_head*, %struct.list_head** %3, align 8
  %12 = load %struct.list_head*, %struct.list_head** %4, align 8
  %13 = icmp ne %struct.list_head* %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = bitcast %struct.list_head* %15 to %struct.smscore_device_notifyee_t*
  store %struct.smscore_device_notifyee_t* %16, %struct.smscore_device_notifyee_t** %5, align 8
  %17 = load %struct.list_head*, %struct.list_head** %3, align 8
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  store %struct.list_head* %19, %struct.list_head** %3, align 8
  %20 = load %struct.smscore_device_notifyee_t*, %struct.smscore_device_notifyee_t** %5, align 8
  %21 = getelementptr inbounds %struct.smscore_device_notifyee_t, %struct.smscore_device_notifyee_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.smscore_device_notifyee_t*, %struct.smscore_device_notifyee_t** %5, align 8
  %27 = getelementptr inbounds %struct.smscore_device_notifyee_t, %struct.smscore_device_notifyee_t* %26, i32 0, i32 1
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.smscore_device_notifyee_t*, %struct.smscore_device_notifyee_t** %5, align 8
  %30 = call i32 @kfree(%struct.smscore_device_notifyee_t* %29)
  br label %31

31:                                               ; preds = %25, %14
  br label %10

32:                                               ; preds = %10
  %33 = call i32 @kmutex_unlock(i32* @g_smscore_deviceslock)
  ret void
}

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.smscore_device_notifyee_t*) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
