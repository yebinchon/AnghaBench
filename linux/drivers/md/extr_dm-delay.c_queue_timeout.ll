; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_queue_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_queue_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_c = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delay_c*, i64)* @queue_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_timeout(%struct.delay_c* %0, i64 %1) #0 {
  %3 = alloca %struct.delay_c*, align 8
  %4 = alloca i64, align 8
  store %struct.delay_c* %0, %struct.delay_c** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %6 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %9 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %8, i32 0, i32 1
  %10 = call i32 @timer_pending(%struct.TYPE_3__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %15 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12, %2
  %20 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %21 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @mod_timer(%struct.TYPE_3__* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %26 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
