; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_get_av.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_get_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_av = type { i32 }
%struct.rxe_pkt_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.rxe_av }
%struct.TYPE_4__ = type { %struct.rxe_av }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info* %0) #0 {
  %2 = alloca %struct.rxe_av*, align 8
  %3 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %3, align 8
  %4 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %5 = icmp ne %struct.rxe_pkt_info* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %8 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store %struct.rxe_av* null, %struct.rxe_av** %2, align 8
  br label %44

12:                                               ; preds = %6
  %13 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %14 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i64 @qp_type(%struct.TYPE_4__* %15)
  %17 = load i64, i64* @IB_QPT_RC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %21 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i64 @qp_type(%struct.TYPE_4__* %22)
  %24 = load i64, i64* @IB_QPT_UC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19, %12
  %27 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %28 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.rxe_av* %30, %struct.rxe_av** %2, align 8
  br label %44

31:                                               ; preds = %19
  %32 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %33 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %38 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi %struct.rxe_av* [ %40, %36 ], [ null, %41 ]
  store %struct.rxe_av* %43, %struct.rxe_av** %2, align 8
  br label %44

44:                                               ; preds = %42, %26, %11
  %45 = load %struct.rxe_av*, %struct.rxe_av** %2, align 8
  ret %struct.rxe_av* %45
}

declare dso_local i64 @qp_type(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
