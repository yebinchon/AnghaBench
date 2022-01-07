; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_verity* }
%struct.dm_verity = type { i32 }
%struct.queue_limits = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @verity_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verity_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.dm_verity*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.dm_verity*, %struct.dm_verity** %7, align 8
  store %struct.dm_verity* %8, %struct.dm_verity** %5, align 8
  %9 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %10 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %13 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %19 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %23 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %26 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %29 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %35 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %39 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %24
  %41 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %42 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %43 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @blk_limits_io_min(%struct.queue_limits* %41, i32 %44)
  ret void
}

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
