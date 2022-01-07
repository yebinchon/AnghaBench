; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_complete_cached_srq_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_complete_cached_srq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CHELSIO_T5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*, i64)* @complete_cached_srq_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_cached_srq_buffers(%struct.c4iw_ep* %0, i64 %1) #0 {
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @CHELSIO_CHIP_VERSION(i32 %14)
  %16 = load i64, i64* @CHELSIO_T5, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %23 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %32 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @t4_set_wq_in_error(i32* %35, i64 %36)
  br label %45

38:                                               ; preds = %21
  %39 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %40 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @c4iw_flush_srqidx(%struct.TYPE_12__* %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %30
  br label %46

46:                                               ; preds = %45, %18, %2
  ret void
}

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @t4_set_wq_in_error(i32*, i64) #1

declare dso_local i32 @c4iw_flush_srqidx(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
