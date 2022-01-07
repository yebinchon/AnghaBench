; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c_ib_free_cq_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c_ib_free_cq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, %struct.ib_cq*, %struct.ib_cq*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_cq*, %struct.ib_udata*)* }
%struct.ib_udata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_free_cq_user(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %5 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %6 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %5, i32 0, i32 7
  %7 = call i32 @atomic_read(i32* %6)
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %60

11:                                               ; preds = %2
  %12 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %24 [
    i32 131, label %15
    i32 130, label %16
    i32 128, label %20
    i32 129, label %20
  ]

15:                                               ; preds = %11
  br label %26

16:                                               ; preds = %11
  %17 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %18 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %17, i32 0, i32 6
  %19 = call i32 @irq_poll_disable(i32* %18)
  br label %26

20:                                               ; preds = %11, %11
  %21 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %22 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %21, i32 0, i32 3
  %23 = call i32 @cancel_work_sync(i32* %22)
  br label %26

24:                                               ; preds = %11
  %25 = call i64 @WARN_ON_ONCE(i32 1)
  br label %26

26:                                               ; preds = %24, %20, %16, %15
  %27 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %28 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %27, i32 0, i32 5
  %29 = call i32 @rdma_restrack_del(i32* %28)
  %30 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %31 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ib_cq*, %struct.ib_udata*)*, i32 (%struct.ib_cq*, %struct.ib_udata*)** %34, align 8
  %36 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %37 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %38 = call i32 %35(%struct.ib_cq* %36, %struct.ib_udata* %37)
  %39 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %40 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %39, i32 0, i32 2
  %41 = load %struct.ib_cq*, %struct.ib_cq** %40, align 8
  %42 = icmp ne %struct.ib_cq* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %45 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %44, i32 0, i32 2
  %46 = load %struct.ib_cq*, %struct.ib_cq** %45, align 8
  %47 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %46, i32 0, i32 3
  %48 = call i32 @cancel_work_sync(i32* %47)
  br label %49

49:                                               ; preds = %43, %26
  %50 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %51 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %50, i32 0, i32 2
  %52 = load %struct.ib_cq*, %struct.ib_cq** %51, align 8
  %53 = call i32 @kfree(%struct.ib_cq* %52)
  %54 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %55 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %54, i32 0, i32 1
  %56 = load %struct.ib_cq*, %struct.ib_cq** %55, align 8
  %57 = call i32 @kfree(%struct.ib_cq* %56)
  %58 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %59 = call i32 @kfree(%struct.ib_cq* %58)
  br label %60

60:                                               ; preds = %49, %10
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @kfree(%struct.ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
