; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_2__*, %struct.pool* }
%struct.TYPE_2__ = type { i32 }
%struct.pool = type { i32 }
%struct.bio = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @pool_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pool_c*, align 8
  %7 = alloca %struct.pool*, align 8
  %8 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  store %struct.pool_c* %11, %struct.pool_c** %6, align 8
  %12 = load %struct.pool_c*, %struct.pool_c** %6, align 8
  %13 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %12, i32 0, i32 1
  %14 = load %struct.pool*, %struct.pool** %13, align 8
  store %struct.pool* %14, %struct.pool** %7, align 8
  %15 = load %struct.pool*, %struct.pool** %7, align 8
  %16 = getelementptr inbounds %struct.pool, %struct.pool* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = load %struct.pool_c*, %struct.pool_c** %6, align 8
  %21 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bio_set_dev(%struct.bio* %19, i32 %24)
  %26 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.pool*, %struct.pool** %7, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
