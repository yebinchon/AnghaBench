; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.multipath* }
%struct.multipath = type { i32 }
%struct.request = type { i32 }
%union.map_info = type { i32 }
%struct.dm_mpath_io = type { i32, %struct.pgpath* }
%struct.pgpath = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.path_selector }
%struct.path_selector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.path_selector*, i32*, i32)* }

@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@DM_ENDIO_DELAY_REQUEUE = common dso_local global i32 0, align 4
@DM_ENDIO_REQUEUE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.request*, i64, %union.map_info*)* @multipath_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_end_io(%struct.dm_target* %0, %struct.request* %1, i64 %2, %union.map_info* %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.map_info*, align 8
  %9 = alloca %struct.dm_mpath_io*, align 8
  %10 = alloca %struct.pgpath*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.multipath*, align 8
  %13 = alloca %struct.path_selector*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i64 %2, i64* %7, align 8
  store %union.map_info* %3, %union.map_info** %8, align 8
  %14 = load %union.map_info*, %union.map_info** %8, align 8
  %15 = call %struct.dm_mpath_io* @get_mpio(%union.map_info* %14)
  store %struct.dm_mpath_io* %15, %struct.dm_mpath_io** %9, align 8
  %16 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %9, align 8
  %17 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %16, i32 0, i32 1
  %18 = load %struct.pgpath*, %struct.pgpath** %17, align 8
  store %struct.pgpath* %18, %struct.pgpath** %10, align 8
  %19 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @blk_path_error(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  %29 = load %struct.multipath*, %struct.multipath** %28, align 8
  store %struct.multipath* %29, %struct.multipath** %12, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @BLK_STS_RESOURCE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @DM_ENDIO_DELAY_REQUEUE, align 4
  store i32 %34, i32* %11, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @DM_ENDIO_REQUEUE, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  %39 = icmp ne %struct.pgpath* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  %42 = call i32 @fail_path(%struct.pgpath* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.multipath*, %struct.multipath** %12, align 8
  %45 = getelementptr inbounds %struct.multipath, %struct.multipath* %44, i32 0, i32 0
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.multipath*, %struct.multipath** %12, align 8
  %50 = call i32 @must_push_back_rq(%struct.multipath* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @BLK_STS_IOERR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.multipath*, %struct.multipath** %12, align 8
  %58 = call i32 @dm_report_EIO(%struct.multipath* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %48, %43
  br label %62

62:                                               ; preds = %61, %22, %4
  %63 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  %64 = icmp ne %struct.pgpath* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  %67 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.path_selector* %69, %struct.path_selector** %13, align 8
  %70 = load %struct.path_selector*, %struct.path_selector** %13, align 8
  %71 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.path_selector*, i32*, i32)*, i32 (%struct.path_selector*, i32*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.path_selector*, i32*, i32)* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load %struct.path_selector*, %struct.path_selector** %13, align 8
  %78 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.path_selector*, i32*, i32)*, i32 (%struct.path_selector*, i32*, i32)** %80, align 8
  %82 = load %struct.path_selector*, %struct.path_selector** %13, align 8
  %83 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  %84 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %83, i32 0, i32 0
  %85 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %9, align 8
  %86 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %81(%struct.path_selector* %82, i32* %84, i32 %87)
  br label %89

89:                                               ; preds = %76, %65
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local %struct.dm_mpath_io* @get_mpio(%union.map_info*) #1

declare dso_local i64 @blk_path_error(i64) #1

declare dso_local i32 @fail_path(%struct.pgpath*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @must_push_back_rq(%struct.multipath*) #1

declare dso_local i32 @dm_report_EIO(%struct.multipath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
