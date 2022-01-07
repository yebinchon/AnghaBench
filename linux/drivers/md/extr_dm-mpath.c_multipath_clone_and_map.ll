; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_clone_and_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_clone_and_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.multipath* }
%struct.multipath = type { i32, i32, i32 }
%struct.request = type { i32, i32, i32*, i32 }
%union.map_info = type { i32 }
%struct.pgpath = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)* }
%struct.dm_mpath_io = type { i64, %struct.pgpath* }
%struct.request_queue = type { i32 }

@MPATHF_QUEUE_IO = common dso_local global i32 0, align 4
@DM_MAPIO_DELAY_REQUEUE = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@MPATHF_PG_INIT_REQUIRED = common dso_local global i32 0, align 4
@REQ_NOMERGE = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@DM_MAPIO_REQUEUE = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.request*, %union.map_info*, %struct.request**)* @multipath_clone_and_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_clone_and_map(%struct.dm_target* %0, %struct.request* %1, %union.map_info* %2, %struct.request** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %union.map_info*, align 8
  %9 = alloca %struct.request**, align 8
  %10 = alloca %struct.multipath*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pgpath*, align 8
  %13 = alloca %struct.block_device*, align 8
  %14 = alloca %struct.dm_mpath_io*, align 8
  %15 = alloca %struct.request_queue*, align 8
  %16 = alloca %struct.request*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %union.map_info* %2, %union.map_info** %8, align 8
  store %struct.request** %3, %struct.request*** %9, align 8
  %17 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load %struct.multipath*, %struct.multipath** %18, align 8
  store %struct.multipath* %19, %struct.multipath** %10, align 8
  %20 = load %struct.request*, %struct.request** %7, align 8
  %21 = call i64 @blk_rq_bytes(%struct.request* %20)
  store i64 %21, i64* %11, align 8
  %22 = load %union.map_info*, %union.map_info** %8, align 8
  %23 = call %struct.dm_mpath_io* @get_mpio(%union.map_info* %22)
  store %struct.dm_mpath_io* %23, %struct.dm_mpath_io** %14, align 8
  %24 = load %struct.multipath*, %struct.multipath** %10, align 8
  %25 = getelementptr inbounds %struct.multipath, %struct.multipath* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.pgpath* @READ_ONCE(i32 %26)
  store %struct.pgpath* %27, %struct.pgpath** %12, align 8
  %28 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %29 = icmp ne %struct.pgpath* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %32 = load %struct.multipath*, %struct.multipath** %10, align 8
  %33 = getelementptr inbounds %struct.multipath, %struct.multipath* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30, %4
  %37 = load %struct.multipath*, %struct.multipath** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call %struct.pgpath* @choose_pgpath(%struct.multipath* %37, i64 %38)
  store %struct.pgpath* %39, %struct.pgpath** %12, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %42 = icmp ne %struct.pgpath* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load %struct.multipath*, %struct.multipath** %10, align 8
  %45 = call i64 @must_push_back_rq(%struct.multipath* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @DM_MAPIO_DELAY_REQUEUE, align 4
  store i32 %48, i32* %5, align 4
  br label %154

49:                                               ; preds = %43
  %50 = load %struct.multipath*, %struct.multipath** %10, align 8
  %51 = call i32 @dm_report_EIO(%struct.multipath* %50)
  %52 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %52, i32* %5, align 4
  br label %154

53:                                               ; preds = %40
  %54 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %55 = load %struct.multipath*, %struct.multipath** %10, align 8
  %56 = getelementptr inbounds %struct.multipath, %struct.multipath* %55, i32 0, i32 1
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @MPATHF_PG_INIT_REQUIRED, align 4
  %61 = load %struct.multipath*, %struct.multipath** %10, align 8
  %62 = getelementptr inbounds %struct.multipath, %struct.multipath* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %53
  %66 = load %struct.multipath*, %struct.multipath** %10, align 8
  %67 = call i32 @pg_init_all_paths(%struct.multipath* %66)
  %68 = load i32, i32* @DM_MAPIO_DELAY_REQUEUE, align 4
  store i32 %68, i32* %5, align 4
  br label %154

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %72 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %14, align 8
  %73 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %72, i32 0, i32 1
  store %struct.pgpath* %71, %struct.pgpath** %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %14, align 8
  %76 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %78 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.block_device*, %struct.block_device** %81, align 8
  store %struct.block_device* %82, %struct.block_device** %13, align 8
  %83 = load %struct.block_device*, %struct.block_device** %13, align 8
  %84 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %83)
  store %struct.request_queue* %84, %struct.request_queue** %15, align 8
  %85 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  %86 = load %struct.request*, %struct.request** %7, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @REQ_NOMERGE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %92 = call %struct.request* @blk_get_request(%struct.request_queue* %85, i32 %90, i32 %91)
  store %struct.request* %92, %struct.request** %16, align 8
  %93 = load %struct.request*, %struct.request** %16, align 8
  %94 = call i64 @IS_ERR(%struct.request* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %70
  %97 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  %98 = call i64 @blk_queue_dying(%struct.request_queue* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.multipath*, %struct.multipath** %10, align 8
  %102 = getelementptr inbounds %struct.multipath, %struct.multipath* %101, i32 0, i32 0
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %105 = call i32 @activate_or_offline_path(%struct.pgpath* %104)
  %106 = load i32, i32* @DM_MAPIO_DELAY_REQUEUE, align 4
  store i32 %106, i32* %5, align 4
  br label %154

107:                                              ; preds = %96
  %108 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  store i32 %108, i32* %5, align 4
  br label %154

109:                                              ; preds = %70
  %110 = load %struct.request*, %struct.request** %16, align 8
  %111 = getelementptr inbounds %struct.request, %struct.request* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load %struct.request*, %struct.request** %16, align 8
  %113 = getelementptr inbounds %struct.request, %struct.request* %112, i32 0, i32 3
  store i32 0, i32* %113, align 8
  %114 = load %struct.block_device*, %struct.block_device** %13, align 8
  %115 = getelementptr inbounds %struct.block_device, %struct.block_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.request*, %struct.request** %16, align 8
  %118 = getelementptr inbounds %struct.request, %struct.request* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %120 = load %struct.request*, %struct.request** %16, align 8
  %121 = getelementptr inbounds %struct.request, %struct.request* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.request*, %struct.request** %16, align 8
  %125 = load %struct.request**, %struct.request*** %9, align 8
  store %struct.request* %124, %struct.request** %125, align 8
  %126 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %127 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)** %132, align 8
  %134 = icmp ne i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)* %133, null
  br i1 %134, label %135, label %152

135:                                              ; preds = %109
  %136 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %137 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)** %142, align 8
  %144 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %145 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %144, i32 0, i32 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %149 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %148, i32 0, i32 0
  %150 = load i64, i64* %11, align 8
  %151 = call i32 %143(%struct.TYPE_9__* %147, %struct.TYPE_10__* %149, i64 %150)
  br label %152

152:                                              ; preds = %135, %109
  %153 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %107, %100, %65, %49, %47
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local %struct.dm_mpath_io* @get_mpio(%union.map_info*) #1

declare dso_local %struct.pgpath* @READ_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.pgpath* @choose_pgpath(%struct.multipath*, i64) #1

declare dso_local i64 @must_push_back_rq(%struct.multipath*) #1

declare dso_local i32 @dm_report_EIO(%struct.multipath*) #1

declare dso_local i32 @pg_init_all_paths(%struct.multipath*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i64 @blk_queue_dying(%struct.request_queue*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @activate_or_offline_path(%struct.pgpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
