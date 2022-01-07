; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.thin_c* }
%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.queue_limits = type { i32, i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @thin_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thin_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.thin_c*, align 8
  %6 = alloca %struct.pool*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.thin_c*, %struct.thin_c** %8, align 8
  store %struct.thin_c* %9, %struct.thin_c** %5, align 8
  %10 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 0
  %12 = load %struct.pool*, %struct.pool** %11, align 8
  store %struct.pool* %12, %struct.pool** %6, align 8
  %13 = load %struct.pool*, %struct.pool** %6, align 8
  %14 = getelementptr inbounds %struct.pool, %struct.pool* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.pool*, %struct.pool** %6, align 8
  %21 = getelementptr inbounds %struct.pool, %struct.pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SECTOR_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %26 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %28 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %27, i32 0, i32 1
  store i32 33554432, i32* %28, align 4
  br label %29

29:                                               ; preds = %19, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
