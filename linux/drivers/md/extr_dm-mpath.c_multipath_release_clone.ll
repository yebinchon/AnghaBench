; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_release_clone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_release_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%union.map_info = type { i32 }
%struct.dm_mpath_io = type { i32, %struct.pgpath* }
%struct.pgpath = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %union.map_info*)* @multipath_release_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_release_clone(%struct.request* %0, %union.map_info* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %union.map_info*, align 8
  %5 = alloca %struct.dm_mpath_io*, align 8
  %6 = alloca %struct.pgpath*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %union.map_info* %1, %union.map_info** %4, align 8
  %7 = load %union.map_info*, %union.map_info** %4, align 8
  %8 = call i64 @unlikely(%union.map_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = load %union.map_info*, %union.map_info** %4, align 8
  %12 = call %struct.dm_mpath_io* @get_mpio(%union.map_info* %11)
  store %struct.dm_mpath_io* %12, %struct.dm_mpath_io** %5, align 8
  %13 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %14 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %13, i32 0, i32 1
  %15 = load %struct.pgpath*, %struct.pgpath** %14, align 8
  store %struct.pgpath* %15, %struct.pgpath** %6, align 8
  %16 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %17 = icmp ne %struct.pgpath* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %10
  %19 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %20 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32)* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %30 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %35, align 8
  %37 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %38 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %42 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %41, i32 0, i32 0
  %43 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %44 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %36(%struct.TYPE_6__* %40, i32* %42, i32 %45)
  br label %47

47:                                               ; preds = %28, %18, %10
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.request*, %struct.request** %3, align 8
  %50 = call i32 @blk_put_request(%struct.request* %49)
  ret void
}

declare dso_local i64 @unlikely(%union.map_info*) #1

declare dso_local %struct.dm_mpath_io* @get_mpio(%union.map_info*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
