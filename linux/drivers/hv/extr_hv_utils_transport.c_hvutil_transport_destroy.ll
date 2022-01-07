; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_utils_transport.c_hvutil_transport_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_utils_transport.c_hvutil_transport_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvutil_transport = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@HVUTIL_TRANSPORT_DESTROY = common dso_local global i32 0, align 4
@hvt_list_lock = common dso_local global i32 0, align 4
@HVUTIL_TRANSPORT_CHARDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hvutil_transport_destroy(%struct.hvutil_transport* %0) #0 {
  %2 = alloca %struct.hvutil_transport*, align 8
  %3 = alloca i32, align 4
  store %struct.hvutil_transport* %0, %struct.hvutil_transport** %2, align 8
  %4 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %5 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %4, i32 0, i32 4
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %8 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @HVUTIL_TRANSPORT_DESTROY, align 4
  %11 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %12 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %14 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %13, i32 0, i32 5
  %15 = call i32 @wake_up_interruptible(i32* %14)
  %16 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %17 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %16, i32 0, i32 4
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = call i32 @spin_lock(i32* @hvt_list_lock)
  %20 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %21 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %20, i32 0, i32 3
  %22 = call i32 @list_del(i32* %21)
  %23 = call i32 @spin_unlock(i32* @hvt_list_lock)
  %24 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %25 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %31 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %37 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %36, i32 0, i32 2
  %38 = call i32 @cn_del_callback(%struct.TYPE_2__* %37)
  br label %39

39:                                               ; preds = %35, %29, %1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @HVUTIL_TRANSPORT_CHARDEV, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %45 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %44, i32 0, i32 1
  %46 = call i32 @wait_for_completion(i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.hvutil_transport*, %struct.hvutil_transport** %2, align 8
  %49 = call i32 @hvt_transport_free(%struct.hvutil_transport* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cn_del_callback(%struct.TYPE_2__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @hvt_transport_free(%struct.hvutil_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
