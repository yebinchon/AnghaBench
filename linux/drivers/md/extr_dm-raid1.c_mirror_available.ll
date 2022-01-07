; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dm_dirty_log*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mirror_set*, %struct.bio*)* @mirror_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_available(%struct.mirror_set* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mirror_set*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_dirty_log*, align 8
  %7 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %9 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %10)
  store %struct.dm_dirty_log* %11, %struct.dm_dirty_log** %6, align 8
  %12 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %13 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = call i32 @dm_rh_bio_to_region(i32 %14, %struct.bio* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %18 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (%struct.dm_dirty_log*, i32, i32)*, i64 (%struct.dm_dirty_log*, i32, i32)** %20, align 8
  %22 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 %21(%struct.dm_dirty_log* %22, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @choose_mirror(%struct.mirror_set* %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local i64 @choose_mirror(%struct.mirror_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
