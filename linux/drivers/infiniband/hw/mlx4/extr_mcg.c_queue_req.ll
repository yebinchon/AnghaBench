; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_queue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_queue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_req = type { i64, i32, i32, %struct.mcast_group* }
%struct.mcast_group = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcast_req*)* @queue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_req(%struct.mcast_req* %0) #0 {
  %2 = alloca %struct.mcast_req*, align 8
  %3 = alloca %struct.mcast_group*, align 8
  store %struct.mcast_req* %0, %struct.mcast_req** %2, align 8
  %4 = load %struct.mcast_req*, %struct.mcast_req** %2, align 8
  %5 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %4, i32 0, i32 3
  %6 = load %struct.mcast_group*, %struct.mcast_group** %5, align 8
  store %struct.mcast_group* %6, %struct.mcast_group** %3, align 8
  %7 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %8 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %7, i32 0, i32 0
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %11 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.mcast_req*, %struct.mcast_req** %2, align 8
  %14 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %13, i32 0, i32 2
  %15 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %16 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %15, i32 0, i32 4
  %17 = call i32 @list_add_tail(i32* %14, i32* %16)
  %18 = load %struct.mcast_req*, %struct.mcast_req** %2, align 8
  %19 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %18, i32 0, i32 1
  %20 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %21 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.mcast_req*, %struct.mcast_req** %2, align 8
  %24 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %19, i32* %27)
  %29 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %30 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %35 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %34, i32 0, i32 1
  %36 = call i32 @queue_work(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %40 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %39, i32 0, i32 0
  %41 = call i32 @safe_atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @safe_atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
