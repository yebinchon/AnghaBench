; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_do_submit_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_do_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.r5l_io_unit = type { %struct.TYPE_2__*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IO_UNIT_IO_START = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, %struct.r5l_io_unit*)* @r5l_do_submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_do_submit_io(%struct.r5l_log* %0, %struct.r5l_io_unit* %1) #0 {
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.r5l_io_unit*, align 8
  %5 = alloca i64, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  store %struct.r5l_io_unit* %1, %struct.r5l_io_unit** %4, align 8
  %6 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %7 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %11 = load i32, i32* @IO_UNIT_IO_START, align 4
  %12 = call i32 @__r5l_set_io_unit_state(%struct.r5l_io_unit* %10, i32 %11)
  %13 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %14 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %18 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %23 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @REQ_PREFLUSH, align 4
  %28 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %29 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %36 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @REQ_FUA, align 4
  %41 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %42 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %49 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @submit_bio(%struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %47, %2
  %53 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %54 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* @REQ_PREFLUSH, align 4
  %59 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %60 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %67 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* @REQ_FUA, align 4
  %72 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %73 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %80 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = call i32 @submit_bio(%struct.TYPE_2__* %81)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__r5l_set_io_unit_state(%struct.r5l_io_unit*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @submit_bio(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
