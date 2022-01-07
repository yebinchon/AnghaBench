; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_destroy_ah_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_destroy_ah_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { %struct.TYPE_4__*, %struct.ib_pd*, %struct.ib_gid_attr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_ah*, i32)* }
%struct.ib_pd = type { i32 }
%struct.ib_gid_attr = type { i32 }
%struct.ib_udata = type { i32 }

@RDMA_DESTROY_AH_SLEEPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_destroy_ah_user(%struct.ib_ah* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.ib_gid_attr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %9 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %10 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %9, i32 0, i32 2
  %11 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  store %struct.ib_gid_attr* %11, %struct.ib_gid_attr** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RDMA_DESTROY_AH_SLEEPABLE, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @might_sleep_if(i32 %14)
  %16 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %17 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %16, i32 0, i32 1
  %18 = load %struct.ib_pd*, %struct.ib_pd** %17, align 8
  store %struct.ib_pd* %18, %struct.ib_pd** %8, align 8
  %19 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %20 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ib_ah*, i32)*, i32 (%struct.ib_ah*, i32)** %23, align 8
  %25 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %24(%struct.ib_ah* %25, i32 %26)
  %28 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %29 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec(i32* %29)
  %31 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %32 = icmp ne %struct.ib_gid_attr* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %35 = call i32 @rdma_put_gid_attr(%struct.ib_gid_attr* %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %38 = call i32 @kfree(%struct.ib_ah* %37)
  ret i32 0
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rdma_put_gid_attr(%struct.ib_gid_attr*) #1

declare dso_local i32 @kfree(%struct.ib_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
