; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_postsuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_postsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @pool_postsuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_postsuspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.pool_c*, align 8
  %4 = alloca %struct.pool*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %5 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %6 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %5, i32 0, i32 0
  %7 = load %struct.pool_c*, %struct.pool_c** %6, align 8
  store %struct.pool_c* %7, %struct.pool_c** %3, align 8
  %8 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %9 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %8, i32 0, i32 0
  %10 = load %struct.pool*, %struct.pool** %9, align 8
  store %struct.pool* %10, %struct.pool** %4, align 8
  %11 = load %struct.pool*, %struct.pool** %4, align 8
  %12 = getelementptr inbounds %struct.pool, %struct.pool* %11, i32 0, i32 2
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.pool*, %struct.pool** %4, align 8
  %15 = getelementptr inbounds %struct.pool, %struct.pool* %14, i32 0, i32 1
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  %17 = load %struct.pool*, %struct.pool** %4, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @flush_workqueue(i32 %19)
  %21 = load %struct.pool*, %struct.pool** %4, align 8
  %22 = call i32 @commit(%struct.pool* %21)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @commit(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
