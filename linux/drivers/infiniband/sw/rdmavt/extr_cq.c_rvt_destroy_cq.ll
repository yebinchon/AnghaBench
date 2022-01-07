; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_cq = type { i32, %struct.TYPE_2__*, i32, %struct.rvt_dev_info* }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_dev_info = type { i32, i32 }

@rvt_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.rvt_cq*, align 8
  %6 = alloca %struct.rvt_dev_info*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %8 = call %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq* %7)
  store %struct.rvt_cq* %8, %struct.rvt_cq** %5, align 8
  %9 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %10 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %9, i32 0, i32 3
  %11 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  store %struct.rvt_dev_info* %11, %struct.rvt_dev_info** %6, align 8
  %12 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %13 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %12, i32 0, i32 2
  %14 = call i32 @flush_work(i32* %13)
  %15 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %16 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %19 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %23 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %26 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %31 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @rvt_release_mmap_info, align 4
  %35 = call i32 @kref_put(i32* %33, i32 %34)
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %38 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vfree(i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  ret void
}

declare dso_local %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
