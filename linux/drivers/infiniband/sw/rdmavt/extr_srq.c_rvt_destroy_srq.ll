; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_srq.c_rvt_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_srq.c_rvt_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_srq = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_dev_info = type { i32, i32 }

@rvt_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_destroy_srq(%struct.ib_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.rvt_srq*, align 8
  %6 = alloca %struct.rvt_dev_info*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %8 = call %struct.rvt_srq* @ibsrq_to_rvtsrq(%struct.ib_srq* %7)
  store %struct.rvt_srq* %8, %struct.rvt_srq** %5, align 8
  %9 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %10 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %11)
  store %struct.rvt_dev_info* %12, %struct.rvt_dev_info** %6, align 8
  %13 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %14 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %17 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %21 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.rvt_srq*, %struct.rvt_srq** %5, align 8
  %24 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.rvt_srq*, %struct.rvt_srq** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* @rvt_release_mmap_info, align 4
  %33 = call i32 @kref_put(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %2
  %35 = load %struct.rvt_srq*, %struct.rvt_srq** %5, align 8
  %36 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kvfree(i32 %38)
  ret void
}

declare dso_local %struct.rvt_srq* @ibsrq_to_rvtsrq(%struct.ib_srq*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
