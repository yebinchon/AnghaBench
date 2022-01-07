; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_check_low_water_mark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_check_low_water_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"%s: reached low water mark for data device: sending event.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, i64)* @check_low_water_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_low_water_mark(%struct.pool* %0, i64 %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.pool*, %struct.pool** %3, align 8
  %8 = getelementptr inbounds %struct.pool, %struct.pool* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %6, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.pool*, %struct.pool** %3, align 8
  %13 = getelementptr inbounds %struct.pool, %struct.pool* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = load %struct.pool*, %struct.pool** %3, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dm_device_name(i32 %19)
  %21 = call i32 @DMWARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.pool*, %struct.pool** %3, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 3
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.pool*, %struct.pool** %3, align 8
  %27 = getelementptr inbounds %struct.pool, %struct.pool* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.pool*, %struct.pool** %3, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 3
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.pool*, %struct.pool** %3, align 8
  %33 = getelementptr inbounds %struct.pool, %struct.pool* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dm_table_event(i32 %36)
  br label %38

38:                                               ; preds = %16, %11, %2
  ret void
}

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm_table_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
