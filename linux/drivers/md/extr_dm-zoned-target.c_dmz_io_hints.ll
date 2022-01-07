; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dmz_target* }
%struct.dmz_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@DMZ_BLOCK_SIZE = common dso_local global i8* null, align 8
@BLK_ZONED_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @dmz_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.dmz_target*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  store %struct.dmz_target* %9, %struct.dmz_target** %5, align 8
  %10 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  %11 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** @DMZ_BLOCK_SIZE, align 8
  %16 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %17 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %16, i32 0, i32 9
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @DMZ_BLOCK_SIZE, align 8
  %19 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %20 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %19, i32 0, i32 8
  store i8* %18, i8** %20, align 8
  %21 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %22 = load i8*, i8** @DMZ_BLOCK_SIZE, align 8
  %23 = call i32 @blk_limits_io_min(%struct.queue_limits* %21, i8* %22)
  %24 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %25 = load i8*, i8** @DMZ_BLOCK_SIZE, align 8
  %26 = call i32 @blk_limits_io_opt(%struct.queue_limits* %24, i8* %25)
  %27 = load i8*, i8** @DMZ_BLOCK_SIZE, align 8
  %28 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %29 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @DMZ_BLOCK_SIZE, align 8
  %31 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %32 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %35 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %38 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %41 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %44 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %47 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @BLK_ZONED_NONE, align 4
  %49 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %50 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i8*) #1

declare dso_local i32 @blk_limits_io_opt(%struct.queue_limits*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
