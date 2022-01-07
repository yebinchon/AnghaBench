; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_get_bio_details_from_mpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_get_bio_details_from_mpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_details = type opaque
%struct.dm_mpath_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_bio_details* (%struct.dm_mpath_io*)* @get_bio_details_from_mpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_bio_details* @get_bio_details_from_mpio(%struct.dm_mpath_io* %0) #0 {
  %2 = alloca %struct.dm_mpath_io*, align 8
  %3 = alloca i8*, align 8
  store %struct.dm_mpath_io* %0, %struct.dm_mpath_io** %2, align 8
  %4 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %2, align 8
  %5 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %4, i64 1
  %6 = bitcast %struct.dm_mpath_io* %5 to i8*
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dm_bio_details*
  ret %struct.dm_bio_details* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
