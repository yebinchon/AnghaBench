; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @pool_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_resume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.pool_c*, align 8
  %4 = alloca %struct.pool*, align 8
  %5 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.pool_c*, %struct.pool_c** %7, align 8
  store %struct.pool_c* %8, %struct.pool_c** %3, align 8
  %9 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %10 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %9, i32 0, i32 0
  %11 = load %struct.pool*, %struct.pool** %10, align 8
  store %struct.pool* %11, %struct.pool** %4, align 8
  %12 = load %struct.pool*, %struct.pool** %4, align 8
  %13 = call i32 @requeue_bios(%struct.pool* %12)
  %14 = load %struct.pool*, %struct.pool** %4, align 8
  %15 = call i32 @pool_resume_active_thins(%struct.pool* %14)
  %16 = load %struct.pool*, %struct.pool** %4, align 8
  %17 = getelementptr inbounds %struct.pool, %struct.pool* %16, i32 0, i32 3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.pool*, %struct.pool** %4, align 8
  %21 = getelementptr inbounds %struct.pool, %struct.pool* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.pool*, %struct.pool** %4, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.pool*, %struct.pool** %4, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 3
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.pool*, %struct.pool** %4, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @do_waker(i32* %30)
  ret void
}

declare dso_local i32 @requeue_bios(%struct.pool*) #1

declare dso_local i32 @pool_resume_active_thins(%struct.pool*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_waker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
