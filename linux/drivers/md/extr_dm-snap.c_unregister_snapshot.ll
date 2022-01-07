; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_unregister_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_unregister_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.origin = type { i32, i32 }

@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*)* @unregister_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_snapshot(%struct.dm_snapshot* %0) #0 {
  %2 = alloca %struct.dm_snapshot*, align 8
  %3 = alloca %struct.origin*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %2, align 8
  %4 = call i32 @down_write(i32* @_origins_lock)
  %5 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %6 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.origin* @__lookup_origin(i32 %9)
  store %struct.origin* %10, %struct.origin** %3, align 8
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.origin*, %struct.origin** %3, align 8
  %15 = icmp ne %struct.origin* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.origin*, %struct.origin** %3, align 8
  %18 = getelementptr inbounds %struct.origin, %struct.origin* %17, i32 0, i32 1
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.origin*, %struct.origin** %3, align 8
  %23 = getelementptr inbounds %struct.origin, %struct.origin* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.origin*, %struct.origin** %3, align 8
  %26 = call i32 @kfree(%struct.origin* %25)
  br label %27

27:                                               ; preds = %21, %16, %1
  %28 = call i32 @up_write(i32* @_origins_lock)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.origin* @__lookup_origin(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.origin*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
