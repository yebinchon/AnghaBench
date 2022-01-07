; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_wait_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_wait_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.r10conf = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"wait barrier\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*)* @wait_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_barrier(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %3 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %4 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %7 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %75

10:                                               ; preds = %1
  %11 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %12 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @raid10_log(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %20 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %10
  %27 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 1
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @bio_list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @bio_list_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %43, %36
  %52 = phi i1 [ true, %36 ], [ %50, %43 ]
  br label %53

53:                                               ; preds = %51, %31, %26
  %54 = phi i1 [ false, %31 ], [ false, %26 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %10
  %56 = phi i1 [ true, %10 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %59 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wait_event_lock_irq(i32 %21, i32 %57, i32 %60)
  %62 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %63 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %67 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %55
  %71 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %72 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %71, i32 0, i32 2
  %73 = call i32 @wake_up(i32* %72)
  br label %74

74:                                               ; preds = %70, %55
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %77 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %76, i32 0, i32 1
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %80 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @raid10_log(i32, i8*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bio_list_empty(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
