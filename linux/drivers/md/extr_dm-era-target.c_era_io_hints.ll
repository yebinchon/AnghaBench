; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.era* }
%struct.era = type { i32 }
%struct.queue_limits = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @era_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @era_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.era*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.era*, %struct.era** %8, align 8
  store %struct.era* %9, %struct.era** %5, align 8
  %10 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %11 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SECTOR_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.era*, %struct.era** %5, align 8
  %17 = getelementptr inbounds %struct.era, %struct.era* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.era*, %struct.era** %5, align 8
  %23 = getelementptr inbounds %struct.era, %struct.era* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @do_div(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20, %2
  %28 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %29 = call i32 @blk_limits_io_min(%struct.queue_limits* %28, i32 0)
  %30 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %31 = load %struct.era*, %struct.era** %5, align 8
  %32 = getelementptr inbounds %struct.era, %struct.era* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SECTOR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @blk_limits_io_opt(%struct.queue_limits* %30, i32 %35)
  br label %37

37:                                               ; preds = %27, %20
  ret void
}

declare dso_local i64 @do_div(i32, i32) #1

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i32) #1

declare dso_local i32 @blk_limits_io_opt(%struct.queue_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
