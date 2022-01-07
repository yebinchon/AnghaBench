; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dmz_target* }
%struct.dmz_target = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @dmz_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dmz_target*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  store %struct.dmz_target* %6, %struct.dmz_target** %3, align 8
  %7 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %8 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @flush_workqueue(i32 %9)
  %11 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %12 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @destroy_workqueue(i32 %13)
  %15 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %16 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dmz_dtr_reclaim(i32 %17)
  %19 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %20 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %19, i32 0, i32 4
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %23 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @destroy_workqueue(i32 %24)
  %26 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %27 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dmz_flush_metadata(i32 %28)
  %30 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %31 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dmz_dtr_metadata(i32 %32)
  %34 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %35 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %34, i32 0, i32 1
  %36 = call i32 @bioset_exit(i32* %35)
  %37 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %38 = call i32 @dmz_put_zoned_device(%struct.dm_target* %37)
  %39 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %40 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %39, i32 0, i32 0
  %41 = call i32 @mutex_destroy(i32* %40)
  %42 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %43 = call i32 @kfree(%struct.dmz_target* %42)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dmz_dtr_reclaim(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @dmz_flush_metadata(i32) #1

declare dso_local i32 @dmz_dtr_metadata(i32) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @dmz_put_zoned_device(%struct.dm_target*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.dmz_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
