; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pma_6120_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pma_6120_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_chip_specific = type { i64, i8*, i8*, i8*, i8*, i8*, i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { %struct.qib_ibport }
%struct.qib_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@pma_timer = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_STARTED = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_RUNNING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@cs = common dso_local global %struct.qib_chip_specific* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pma_6120_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pma_6120_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_chip_specific*, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca %struct.qib_ibport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %12 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %13 = ptrtoint %struct.qib_chip_specific* %12 to i32
  %14 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %15 = load i32, i32* @pma_timer, align 4
  %16 = call %struct.qib_chip_specific* @from_timer(i32 %13, %struct.timer_list* %14, i32 %15)
  store %struct.qib_chip_specific* %16, %struct.qib_chip_specific** %3, align 8
  %17 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %18 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %17, i32 0, i32 7
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  store %struct.qib_pportdata* %19, %struct.qib_pportdata** %4, align 8
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  store %struct.qib_ibport* %21, %struct.qib_ibport** %5, align 8
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %23 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %28 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_PMA_SAMPLE_STATUS_STARTED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %1
  %33 = load i64, i64* @IB_PMA_SAMPLE_STATUS_RUNNING, align 8
  %34 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %35 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %37 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %38 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %37, i32 0, i32 1
  %39 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %40 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %39, i32 0, i32 2
  %41 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %42 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %41, i32 0, i32 3
  %43 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %44 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %43, i32 0, i32 4
  %45 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %46 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %45, i32 0, i32 5
  %47 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %36, i8** %38, i8** %40, i8** %42, i8** %44, i8** %46)
  %48 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %49 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %48, i32 0, i32 6
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %52 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @usecs_to_jiffies(i32 %54)
  %56 = add nsw i64 %50, %55
  %57 = call i32 @mod_timer(i32* %49, i64 %56)
  br label %121

58:                                               ; preds = %1
  %59 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %60 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_PMA_SAMPLE_STATUS_RUNNING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %120

64:                                               ; preds = %58
  %65 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %66 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %67 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %69 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %68, i8** %7, i8** %8, i8** %9, i8** %10, i8** %11)
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %72 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %70 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %79 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %82 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %80 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %89 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %92 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %90 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %99 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %102 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %100 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %109 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %112 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %111, i32 0, i32 5
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %110 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %3, align 8
  %119 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %64, %58
  br label %121

121:                                              ; preds = %120, %32
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  ret void
}

declare dso_local %struct.qib_chip_specific* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
