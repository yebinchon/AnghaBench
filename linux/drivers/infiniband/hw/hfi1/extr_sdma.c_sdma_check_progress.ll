; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_check_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_check_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iowait_work = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.sdma_engine*, %struct.iowait_work*, %struct.sdma_txreq*, i32, i32)* }
%struct.sdma_txreq = type { i64 }
%struct.TYPE_6__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*, %struct.iowait_work*, %struct.sdma_txreq*, i32)* @sdma_check_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_check_progress(%struct.sdma_engine* %0, %struct.iowait_work* %1, %struct.sdma_txreq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca %struct.iowait_work*, align 8
  %8 = alloca %struct.sdma_txreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %6, align 8
  store %struct.iowait_work* %1, %struct.iowait_work** %7, align 8
  store %struct.sdma_txreq* %2, %struct.sdma_txreq** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %13 = call i8* @sdma_descq_freecnt(%struct.sdma_engine* %12)
  %14 = ptrtoint i8* %13 to i64
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %18 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %21 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %68

27:                                               ; preds = %4
  %28 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %29 = icmp ne %struct.iowait_work* %28, null
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %32 = call %struct.TYPE_6__* @iowait_ioww_to_iow(%struct.iowait_work* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %38 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @raw_seqcount_begin(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %42 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.sdma_engine*, %struct.iowait_work*, %struct.sdma_txreq*, i32, i32)*, i32 (%struct.sdma_engine*, %struct.iowait_work*, %struct.sdma_txreq*, i32, i32)** %44, align 8
  %46 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %47 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %48 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %45(%struct.sdma_engine* %46, %struct.iowait_work* %47, %struct.sdma_txreq* %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %36
  %57 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %58 = call i8* @sdma_descq_freecnt(%struct.sdma_engine* %57)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %61 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %36
  br label %66

63:                                               ; preds = %30, %27
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %24
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @sdma_descq_freecnt(%struct.sdma_engine*) #1

declare dso_local %struct.TYPE_6__* @iowait_ioww_to_iow(%struct.iowait_work*) #1

declare dso_local i32 @raw_seqcount_begin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
