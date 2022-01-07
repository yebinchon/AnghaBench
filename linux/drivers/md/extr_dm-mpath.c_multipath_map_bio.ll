; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_map_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.multipath* }
%struct.multipath = type { i32 }
%struct.bio = type { i32 }
%struct.dm_mpath_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @multipath_map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_map_bio(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca %struct.dm_mpath_io*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.multipath*, %struct.multipath** %8, align 8
  store %struct.multipath* %9, %struct.multipath** %5, align 8
  store %struct.dm_mpath_io* null, %struct.dm_mpath_io** %6, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i32 @multipath_init_per_bio_data(%struct.bio* %10, %struct.dm_mpath_io** %6)
  %12 = load %struct.multipath*, %struct.multipath** %5, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %6, align 8
  %15 = call i32 @__multipath_map_bio(%struct.multipath* %12, %struct.bio* %13, %struct.dm_mpath_io* %14)
  ret i32 %15
}

declare dso_local i32 @multipath_init_per_bio_data(%struct.bio*, %struct.dm_mpath_io**) #1

declare dso_local i32 @__multipath_map_bio(%struct.multipath*, %struct.bio*, %struct.dm_mpath_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
