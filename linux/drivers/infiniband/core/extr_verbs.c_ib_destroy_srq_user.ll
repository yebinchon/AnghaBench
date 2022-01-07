; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_srq_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_srq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i64, %struct.TYPE_12__, %struct.TYPE_8__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { {}* }
%struct.ib_udata = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IB_SRQT_XRC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_srq_user(%struct.ib_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %6 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %7 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %6, i32 0, i32 4
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %14, i32 0, i32 3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.ib_srq*, %struct.ib_udata*)**
  %20 = load i32 (%struct.ib_srq*, %struct.ib_udata*)*, i32 (%struct.ib_srq*, %struct.ib_udata*)** %19, align 8
  %21 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %22 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %23 = call i32 %20(%struct.ib_srq* %21, %struct.ib_udata* %22)
  %24 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %25 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @atomic_dec(i32* %27)
  %29 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %30 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_SRQT_XRC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %13
  %35 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %36 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = call i32 @atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %34, %13
  %43 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %44 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ib_srq_has_cq(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %50 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = call i32 @atomic_dec(i32* %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %57 = call i32 @kfree(%struct.ib_srq* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @ib_srq_has_cq(i64) #1

declare dso_local i32 @kfree(%struct.ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
