; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_dealloc_pd_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_dealloc_pd_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*, i32*)*, i32 (%struct.ib_pd*, %struct.ib_udata*)* }
%struct.ib_udata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_dealloc_pd_user(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %6 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %7 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %15, align 8
  %17 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 %16(i32* %19, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %10, %2
  %26 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %27 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %26, i32 0, i32 2
  %28 = call i32 @atomic_read(i32* %27)
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %31 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %30, i32 0, i32 1
  %32 = call i32 @rdma_restrack_del(i32* %31)
  %33 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %34 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ib_pd*, %struct.ib_udata*)*, i32 (%struct.ib_pd*, %struct.ib_udata*)** %37, align 8
  %39 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %40 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %41 = call i32 %38(%struct.ib_pd* %39, %struct.ib_udata* %40)
  %42 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %43 = call i32 @kfree(%struct.ib_pd* %42)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @kfree(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
