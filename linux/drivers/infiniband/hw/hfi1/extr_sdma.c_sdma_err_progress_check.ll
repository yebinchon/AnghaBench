; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_err_progress_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_err_progress_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.sdma_engine* }
%struct.timer_list = type { i32 }

@err_progress_check_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SDE progress check event\0A\00", align 1
@sdma_state_s99_running = common dso_local global i64 0, align 8
@sdma_event_e90_sw_halted = common dso_local global i32 0, align 4
@sde = common dso_local global %struct.sdma_engine* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sdma_err_progress_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_err_progress_check(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca %struct.sdma_engine*, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %8 = ptrtoint %struct.sdma_engine* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @err_progress_check_timer, align 4
  %11 = call %struct.sdma_engine* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.sdma_engine* %11, %struct.sdma_engine** %4, align 8
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %13 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @dd_dev_err(%struct.TYPE_4__* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %87, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %19 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %18, i32 0, i32 7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %17, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %16
  %25 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %26 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %25, i32 0, i32 7
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.sdma_engine*, %struct.sdma_engine** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %29, i64 %31
  store %struct.sdma_engine* %32, %struct.sdma_engine** %5, align 8
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %34 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %35 = icmp eq %struct.sdma_engine* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %87

37:                                               ; preds = %24
  %38 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %39 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %38, i32 0, i32 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %43 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %42, i32 0, i32 5
  %44 = call i32 @write_seqlock(i32* %43)
  %45 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %46 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @sdma_state_s99_running, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %37
  %52 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %53 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %52, i32 0, i32 5
  %54 = call i32 @write_sequnlock(i32* %53)
  %55 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %56 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %55, i32 0, i32 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %87

59:                                               ; preds = %37
  %60 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %61 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %64 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %69 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %72 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %77 = load i32, i32* @sdma_event_e90_sw_halted, align 4
  %78 = call i32 @__sdma_process_event(%struct.sdma_engine* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %67, %59
  %80 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %81 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %80, i32 0, i32 5
  %82 = call i32 @write_sequnlock(i32* %81)
  %83 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %84 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %83, i32 0, i32 4
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %79, %51, %36
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %16

90:                                               ; preds = %16
  %91 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %92 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %91, i32 0, i32 3
  %93 = call i32 @schedule_work(i32* %92)
  ret void
}

declare dso_local %struct.sdma_engine* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sdma_process_event(%struct.sdma_engine*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
