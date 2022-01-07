; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_cq_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_cq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_udata = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_cq_user(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %6 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %7 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %6, i32 0, i32 2
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 1
  %16 = call i32 @rdma_restrack_del(i32* %15)
  %17 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %18 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ib_cq*, %struct.ib_udata*)**
  %23 = load i32 (%struct.ib_cq*, %struct.ib_udata*)*, i32 (%struct.ib_cq*, %struct.ib_udata*)** %22, align 8
  %24 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %25 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %26 = call i32 %23(%struct.ib_cq* %24, %struct.ib_udata* %25)
  %27 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %28 = call i32 @kfree(%struct.ib_cq* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %13, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @kfree(%struct.ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
