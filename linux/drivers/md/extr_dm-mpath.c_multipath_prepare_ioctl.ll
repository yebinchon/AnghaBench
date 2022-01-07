; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_prepare_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_prepare_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.multipath* }
%struct.multipath = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.block_device = type { i32 }
%struct.pgpath = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.block_device* }

@MPATHF_QUEUE_IO = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@MPATHF_QUEUE_IF_NO_PATH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MPATHF_PG_INIT_REQUIRED = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.block_device**)* @multipath_prepare_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_prepare_ioctl(%struct.dm_target* %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.block_device**, align 8
  %6 = alloca %struct.multipath*, align 8
  %7 = alloca %struct.pgpath*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.block_device** %1, %struct.block_device*** %5, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 1
  %11 = load %struct.multipath*, %struct.multipath** %10, align 8
  store %struct.multipath* %11, %struct.multipath** %6, align 8
  %12 = load %struct.multipath*, %struct.multipath** %6, align 8
  %13 = getelementptr inbounds %struct.multipath, %struct.multipath* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pgpath* @READ_ONCE(i32 %14)
  store %struct.pgpath* %15, %struct.pgpath** %7, align 8
  %16 = load %struct.pgpath*, %struct.pgpath** %7, align 8
  %17 = icmp ne %struct.pgpath* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.multipath*, %struct.multipath** %6, align 8
  %20 = call %struct.pgpath* @choose_pgpath(%struct.multipath* %19, i32 0)
  store %struct.pgpath* %20, %struct.pgpath** %7, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.pgpath*, %struct.pgpath** %7, align 8
  %23 = icmp ne %struct.pgpath* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %26 = load %struct.multipath*, %struct.multipath** %6, align 8
  %27 = getelementptr inbounds %struct.multipath, %struct.multipath* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load %struct.pgpath*, %struct.pgpath** %7, align 8
  %32 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.block_device*, %struct.block_device** %35, align 8
  %37 = load %struct.block_device**, %struct.block_device*** %5, align 8
  store %struct.block_device* %36, %struct.block_device** %37, align 8
  store i32 0, i32* %8, align 4
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOTCONN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %30
  br label %55

42:                                               ; preds = %21
  %43 = load i32, i32* @MPATHF_QUEUE_IF_NO_PATH, align 4
  %44 = load %struct.multipath*, %struct.multipath** %6, align 8
  %45 = getelementptr inbounds %struct.multipath, %struct.multipath* %44, i32 0, i32 1
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOTCONN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ENOTCONN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.multipath*, %struct.multipath** %6, align 8
  %62 = getelementptr inbounds %struct.multipath, %struct.multipath* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.pgpath* @READ_ONCE(i32 %63)
  %65 = icmp ne %struct.pgpath* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load %struct.multipath*, %struct.multipath** %6, align 8
  %68 = call %struct.pgpath* @choose_pgpath(%struct.multipath* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i32, i32* @MPATHF_PG_INIT_REQUIRED, align 4
  %71 = load %struct.multipath*, %struct.multipath** %6, align 8
  %72 = getelementptr inbounds %struct.multipath, %struct.multipath* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.multipath*, %struct.multipath** %6, align 8
  %77 = call i32 @pg_init_all_paths(%struct.multipath* %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.multipath*, %struct.multipath** %6, align 8
  %80 = getelementptr inbounds %struct.multipath, %struct.multipath* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dm_table_run_md_queue_async(i32 %83)
  %85 = load %struct.multipath*, %struct.multipath** %6, align 8
  %86 = call i32 @process_queued_io_list(%struct.multipath* %85)
  br label %87

87:                                               ; preds = %78, %55
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %92 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.block_device**, %struct.block_device*** %5, align 8
  %95 = load %struct.block_device*, %struct.block_device** %94, align 8
  %96 = getelementptr inbounds %struct.block_device, %struct.block_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @i_size_read(i32 %97)
  %99 = load i32, i32* @SECTOR_SHIFT, align 4
  %100 = zext i32 %99 to i64
  %101 = ashr i64 %98, %100
  %102 = icmp ne i64 %93, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  store i32 1, i32* %3, align 4
  br label %106

104:                                              ; preds = %90, %87
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.pgpath* @READ_ONCE(i32) #1

declare dso_local %struct.pgpath* @choose_pgpath(%struct.multipath*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pg_init_all_paths(%struct.multipath*) #1

declare dso_local i32 @dm_table_run_md_queue_async(i32) #1

declare dso_local i32 @process_queued_io_list(%struct.multipath*) #1

declare dso_local i64 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
