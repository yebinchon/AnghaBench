; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-uevent.c_dm_uevent_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-uevent.c_dm_uevent_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_uevent = type { %struct.mapped_device*, i32 }
%struct.mapped_device = type { i32 }

@_dm_event_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_uevent* (%struct.mapped_device*)* @dm_uevent_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_uevent* @dm_uevent_alloc(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.dm_uevent*, align 8
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_uevent*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  %5 = load i32, i32* @_dm_event_cache, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.dm_uevent* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.dm_uevent* %7, %struct.dm_uevent** %4, align 8
  %8 = load %struct.dm_uevent*, %struct.dm_uevent** %4, align 8
  %9 = icmp ne %struct.dm_uevent* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.dm_uevent* null, %struct.dm_uevent** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.dm_uevent*, %struct.dm_uevent** %4, align 8
  %13 = getelementptr inbounds %struct.dm_uevent, %struct.dm_uevent* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %16 = load %struct.dm_uevent*, %struct.dm_uevent** %4, align 8
  %17 = getelementptr inbounds %struct.dm_uevent, %struct.dm_uevent* %16, i32 0, i32 0
  store %struct.mapped_device* %15, %struct.mapped_device** %17, align 8
  %18 = load %struct.dm_uevent*, %struct.dm_uevent** %4, align 8
  store %struct.dm_uevent* %18, %struct.dm_uevent** %2, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.dm_uevent*, %struct.dm_uevent** %2, align 8
  ret %struct.dm_uevent* %20
}

declare dso_local %struct.dm_uevent* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
