; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.mirror_set = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @mirror_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mirror_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.mirror_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.mirror_set*
  store %struct.mirror_set* %7, %struct.mirror_set** %3, align 8
  %8 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %9 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %8, i32 0, i32 4
  %10 = call i32 @del_timer_sync(i32* %9)
  %11 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %12 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @flush_workqueue(i32 %13)
  %15 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %16 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %15, i32 0, i32 3
  %17 = call i32 @flush_work(i32* %16)
  %18 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %19 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_kcopyd_client_destroy(i32 %20)
  %22 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %23 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @destroy_workqueue(i32 %24)
  %26 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %27 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %28 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %29 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @free_context(%struct.mirror_set* %26, %struct.dm_target* %27, i32 %30)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @dm_kcopyd_client_destroy(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_context(%struct.mirror_set*, %struct.dm_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
