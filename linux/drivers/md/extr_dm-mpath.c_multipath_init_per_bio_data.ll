; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_init_per_bio_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_init_per_bio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dm_mpath_io = type { i32*, i32 }
%struct.dm_bio_details = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.dm_mpath_io**)* @multipath_init_per_bio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_init_per_bio_data(%struct.bio* %0, %struct.dm_mpath_io** %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.dm_mpath_io**, align 8
  %5 = alloca %struct.dm_mpath_io*, align 8
  %6 = alloca %struct.dm_bio_details*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.dm_mpath_io** %1, %struct.dm_mpath_io*** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = call %struct.dm_mpath_io* @get_mpio_from_bio(%struct.bio* %7)
  store %struct.dm_mpath_io* %8, %struct.dm_mpath_io** %5, align 8
  %9 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %10 = call %struct.dm_bio_details* @get_bio_details_from_mpio(%struct.dm_mpath_io* %9)
  store %struct.dm_bio_details* %10, %struct.dm_bio_details** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %16 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %18 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %20 = load %struct.dm_mpath_io**, %struct.dm_mpath_io*** %4, align 8
  store %struct.dm_mpath_io* %19, %struct.dm_mpath_io** %20, align 8
  %21 = load %struct.dm_bio_details*, %struct.dm_bio_details** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %3, align 8
  %23 = call i32 @dm_bio_record(%struct.dm_bio_details* %21, %struct.bio* %22)
  ret void
}

declare dso_local %struct.dm_mpath_io* @get_mpio_from_bio(%struct.bio*) #1

declare dso_local %struct.dm_bio_details* @get_bio_details_from_mpio(%struct.dm_mpath_io*) #1

declare dso_local i32 @dm_bio_record(%struct.dm_bio_details*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
