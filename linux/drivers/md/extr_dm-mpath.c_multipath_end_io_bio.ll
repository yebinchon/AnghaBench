; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_end_io_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_end_io_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.multipath* }
%struct.multipath = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i32 }
%struct.dm_mpath_io = type { i32, %struct.pgpath* }
%struct.pgpath = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.path_selector }
%struct.path_selector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.path_selector*, i32*, i32)* }

@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@MPATHF_QUEUE_IF_NO_PATH = common dso_local global i32 0, align 4
@DM_ENDIO_REQUEUE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@MPATHF_QUEUE_IO = common dso_local global i32 0, align 4
@kmultipathd = common dso_local global i32 0, align 4
@DM_ENDIO_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i64*)* @multipath_end_io_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_end_io_bio(%struct.dm_target* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.multipath*, align 8
  %8 = alloca %struct.dm_mpath_io*, align 8
  %9 = alloca %struct.pgpath*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.path_selector*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.multipath*, %struct.multipath** %14, align 8
  store %struct.multipath* %15, %struct.multipath** %7, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call %struct.dm_mpath_io* @get_mpio_from_bio(%struct.bio* %16)
  store %struct.dm_mpath_io* %17, %struct.dm_mpath_io** %8, align 8
  %18 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %8, align 8
  %19 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %18, i32 0, i32 1
  %20 = load %struct.pgpath*, %struct.pgpath** %19, align 8
  store %struct.pgpath* %20, %struct.pgpath** %9, align 8
  %21 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @blk_path_error(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %3
  br label %85

31:                                               ; preds = %25
  %32 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %33 = icmp ne %struct.pgpath* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %36 = call i32 @fail_path(%struct.pgpath* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.multipath*, %struct.multipath** %7, align 8
  %39 = getelementptr inbounds %struct.multipath, %struct.multipath* %38, i32 0, i32 4
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @MPATHF_QUEUE_IF_NO_PATH, align 4
  %44 = load %struct.multipath*, %struct.multipath** %7, align 8
  %45 = getelementptr inbounds %struct.multipath, %struct.multipath* %44, i32 0, i32 1
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.multipath*, %struct.multipath** %7, align 8
  %50 = call i64 @must_push_back_bio(%struct.multipath* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @DM_ENDIO_REQUEUE, align 4
  store i32 %53, i32* %11, align 4
  br label %59

54:                                               ; preds = %48
  %55 = load %struct.multipath*, %struct.multipath** %7, align 8
  %56 = call i32 @dm_report_EIO(%struct.multipath* %55)
  %57 = load i64, i64* @BLK_STS_IOERR, align 8
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %52
  br label %85

60:                                               ; preds = %42, %37
  %61 = load %struct.multipath*, %struct.multipath** %7, align 8
  %62 = getelementptr inbounds %struct.multipath, %struct.multipath* %61, i32 0, i32 2
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.multipath*, %struct.multipath** %7, align 8
  %66 = getelementptr inbounds %struct.multipath, %struct.multipath* %65, i32 0, i32 3
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = call i32 @bio_list_add(i32* %66, %struct.bio* %67)
  %69 = load %struct.multipath*, %struct.multipath** %7, align 8
  %70 = getelementptr inbounds %struct.multipath, %struct.multipath* %69, i32 0, i32 2
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %74 = load %struct.multipath*, %struct.multipath** %7, align 8
  %75 = getelementptr inbounds %struct.multipath, %struct.multipath* %74, i32 0, i32 1
  %76 = call i32 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %60
  %79 = load i32, i32* @kmultipathd, align 4
  %80 = load %struct.multipath*, %struct.multipath** %7, align 8
  %81 = getelementptr inbounds %struct.multipath, %struct.multipath* %80, i32 0, i32 0
  %82 = call i32 @queue_work(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %78, %60
  %84 = load i32, i32* @DM_ENDIO_INCOMPLETE, align 4
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %59, %30
  %86 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %87 = icmp ne %struct.pgpath* %86, null
  br i1 %87, label %88, label %113

88:                                               ; preds = %85
  %89 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %90 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store %struct.path_selector* %92, %struct.path_selector** %12, align 8
  %93 = load %struct.path_selector*, %struct.path_selector** %12, align 8
  %94 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.path_selector*, i32*, i32)*, i32 (%struct.path_selector*, i32*, i32)** %96, align 8
  %98 = icmp ne i32 (%struct.path_selector*, i32*, i32)* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %88
  %100 = load %struct.path_selector*, %struct.path_selector** %12, align 8
  %101 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (%struct.path_selector*, i32*, i32)*, i32 (%struct.path_selector*, i32*, i32)** %103, align 8
  %105 = load %struct.path_selector*, %struct.path_selector** %12, align 8
  %106 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %107 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %106, i32 0, i32 0
  %108 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %8, align 8
  %109 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %104(%struct.path_selector* %105, i32* %107, i32 %110)
  br label %112

112:                                              ; preds = %99, %88
  br label %113

113:                                              ; preds = %112, %85
  %114 = load i32, i32* %11, align 4
  ret i32 %114
}

declare dso_local %struct.dm_mpath_io* @get_mpio_from_bio(%struct.bio*) #1

declare dso_local i32 @blk_path_error(i64) #1

declare dso_local i32 @fail_path(%struct.pgpath*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @must_push_back_bio(%struct.multipath*) #1

declare dso_local i32 @dm_report_EIO(%struct.multipath*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
