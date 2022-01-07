; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_reinstate_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_reinstate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i32, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__, %struct.multipath* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* }
%struct.multipath = type { %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_9__*, i64, i32*, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Reinstating path %s.\00", align 1
@kmpath_handlerd = common dso_local global i32 0, align 4
@DM_UEVENT_PATH_REINSTATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pgpath*)* @reinstate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinstate_path(%struct.pgpath* %0) #0 {
  %2 = alloca %struct.pgpath*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.multipath*, align 8
  %7 = alloca i32, align 4
  store %struct.pgpath* %0, %struct.pgpath** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %9 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %8, i32 0, i32 3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.multipath*, %struct.multipath** %11, align 8
  store %struct.multipath* %12, %struct.multipath** %6, align 8
  %13 = load %struct.multipath*, %struct.multipath** %6, align 8
  %14 = getelementptr inbounds %struct.multipath, %struct.multipath* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %18 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %101

22:                                               ; preds = %1
  %23 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %24 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DMWARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %31 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %30, i32 0, i32 3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)** %36, align 8
  %38 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %39 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %43 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %42, i32 0, i32 1
  %44 = call i32 %37(%struct.TYPE_12__* %41, %struct.TYPE_13__* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  br label %101

48:                                               ; preds = %22
  %49 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %50 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.multipath*, %struct.multipath** %6, align 8
  %52 = getelementptr inbounds %struct.multipath, %struct.multipath* %51, i32 0, i32 7
  %53 = call i32 @atomic_inc_return(i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.multipath*, %struct.multipath** %6, align 8
  %58 = getelementptr inbounds %struct.multipath, %struct.multipath* %57, i32 0, i32 6
  store i32* null, i32** %58, align 8
  store i32 1, i32* %4, align 4
  br label %85

59:                                               ; preds = %48
  %60 = load %struct.multipath*, %struct.multipath** %6, align 8
  %61 = getelementptr inbounds %struct.multipath, %struct.multipath* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.multipath*, %struct.multipath** %6, align 8
  %66 = getelementptr inbounds %struct.multipath, %struct.multipath* %65, i32 0, i32 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %69 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = icmp eq %struct.TYPE_9__* %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %64
  %73 = load i32, i32* @kmpath_handlerd, align 4
  %74 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %75 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i64 @queue_work(i32 %73, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.multipath*, %struct.multipath** %6, align 8
  %81 = getelementptr inbounds %struct.multipath, %struct.multipath* %80, i32 0, i32 3
  %82 = call i32 @atomic_inc(i32* %81)
  br label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83, %64, %59
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i32, i32* @DM_UEVENT_PATH_REINSTATED, align 4
  %87 = load %struct.multipath*, %struct.multipath** %6, align 8
  %88 = getelementptr inbounds %struct.multipath, %struct.multipath* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %91 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dm_path_uevent(i32 %86, %struct.TYPE_14__* %89, i32 %95, i32 %96)
  %98 = load %struct.multipath*, %struct.multipath** %6, align 8
  %99 = getelementptr inbounds %struct.multipath, %struct.multipath* %98, i32 0, i32 2
  %100 = call i32 @schedule_work(i32* %99)
  br label %101

101:                                              ; preds = %85, %47, %21
  %102 = load %struct.multipath*, %struct.multipath** %6, align 8
  %103 = getelementptr inbounds %struct.multipath, %struct.multipath* %102, i32 0, i32 1
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load %struct.multipath*, %struct.multipath** %6, align 8
  %110 = getelementptr inbounds %struct.multipath, %struct.multipath* %109, i32 0, i32 0
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dm_table_run_md_queue_async(i32 %113)
  %115 = load %struct.multipath*, %struct.multipath** %6, align 8
  %116 = call i32 @process_queued_io_list(%struct.multipath* %115)
  br label %117

117:                                              ; preds = %108, %101
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dm_path_uevent(i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm_table_run_md_queue_async(i32) #1

declare dso_local i32 @process_queued_io_list(%struct.multipath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
