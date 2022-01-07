; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c___multipath_map_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c___multipath_map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32 }
%struct.bio = type { i32, i64 }
%struct.dm_mpath_io = type { i32, %struct.pgpath* }
%struct.pgpath = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)* }

@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@DM_MAPIO_REQUEUE = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, %struct.bio*, %struct.dm_mpath_io*)* @__multipath_map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__multipath_map_bio(%struct.multipath* %0, %struct.bio* %1, %struct.dm_mpath_io* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.dm_mpath_io*, align 8
  %8 = alloca %struct.pgpath*, align 8
  store %struct.multipath* %0, %struct.multipath** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %struct.dm_mpath_io* %2, %struct.dm_mpath_io** %7, align 8
  %9 = load %struct.multipath*, %struct.multipath** %5, align 8
  %10 = getelementptr inbounds %struct.multipath, %struct.multipath* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.multipath*, %struct.multipath** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = call %struct.pgpath* @__map_bio_fast(%struct.multipath* %14, %struct.bio* %15)
  store %struct.pgpath* %16, %struct.pgpath** %8, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.multipath*, %struct.multipath** %5, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = call %struct.pgpath* @__map_bio(%struct.multipath* %18, %struct.bio* %19)
  store %struct.pgpath* %20, %struct.pgpath** %8, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %23 = call i64 @IS_ERR(%struct.pgpath* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %21
  %28 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %29 = icmp ne %struct.pgpath* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load %struct.multipath*, %struct.multipath** %5, align 8
  %32 = call i64 @must_push_back_bio(%struct.multipath* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %30
  %37 = load %struct.multipath*, %struct.multipath** %5, align 8
  %38 = call i32 @dm_report_EIO(%struct.multipath* %37)
  %39 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %39, i32* %4, align 4
  br label %89

40:                                               ; preds = %27
  %41 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %42 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %7, align 8
  %43 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %42, i32 0, i32 1
  store %struct.pgpath* %41, %struct.pgpath** %43, align 8
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.bio*, %struct.bio** %6, align 8
  %47 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %48 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bio_set_dev(%struct.bio* %46, i32 %52)
  %54 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %60 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %40
  %69 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %70 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)** %75, align 8
  %77 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %78 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.pgpath*, %struct.pgpath** %8, align 8
  %82 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %81, i32 0, i32 0
  %83 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %7, align 8
  %84 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %76(%struct.TYPE_9__* %80, %struct.TYPE_10__* %82, i32 %85)
  br label %87

87:                                               ; preds = %68, %40
  %88 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %36, %34, %25
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.pgpath* @__map_bio_fast(%struct.multipath*, %struct.bio*) #1

declare dso_local %struct.pgpath* @__map_bio(%struct.multipath*, %struct.bio*) #1

declare dso_local i64 @IS_ERR(%struct.pgpath*) #1

declare dso_local i64 @must_push_back_bio(%struct.multipath*) #1

declare dso_local i32 @dm_report_EIO(%struct.multipath*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
