; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_node_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_node_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.closure = type { i32 }
%struct.bio = type { i32, i64, %struct.closure*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@btree_node_read_endio = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"io error reading bucket %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*)* @bch_btree_node_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_btree_node_read(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.closure, align 4
  %5 = alloca %struct.bio*, align 8
  store %struct.btree* %0, %struct.btree** %2, align 8
  %6 = call i32 (...) @local_clock()
  store i32 %6, i32* %3, align 4
  %7 = load %struct.btree*, %struct.btree** %2, align 8
  %8 = call i32 @trace_bcache_btree_read(%struct.btree* %7)
  %9 = call i32 @closure_init_stack(%struct.closure* %4)
  %10 = load %struct.btree*, %struct.btree** %2, align 8
  %11 = getelementptr inbounds %struct.btree, %struct.btree* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = call %struct.bio* @bch_bbio_alloc(%struct.TYPE_12__* %12)
  store %struct.bio* %13, %struct.bio** %5, align 8
  %14 = load %struct.btree*, %struct.btree** %2, align 8
  %15 = getelementptr inbounds %struct.btree, %struct.btree* %14, i32 0, i32 0
  %16 = call i32 @KEY_SIZE(i32* %15)
  %17 = shl i32 %16, 9
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @btree_node_read_endio, align 4
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 2
  store %struct.closure* %4, %struct.closure** %25, align 8
  %26 = load i32, i32* @REQ_OP_READ, align 4
  %27 = load i32, i32* @REQ_META, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = load %struct.btree*, %struct.btree** %2, align 8
  %33 = getelementptr inbounds %struct.btree, %struct.btree* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bch_bio_map(%struct.bio* %31, i32 %38)
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = load %struct.btree*, %struct.btree** %2, align 8
  %42 = getelementptr inbounds %struct.btree, %struct.btree* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load %struct.btree*, %struct.btree** %2, align 8
  %45 = getelementptr inbounds %struct.btree, %struct.btree* %44, i32 0, i32 0
  %46 = call i32 @bch_submit_bbio(%struct.bio* %40, %struct.TYPE_12__* %43, i32* %45, i32 0)
  %47 = call i32 @closure_sync(%struct.closure* %4)
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %1
  %53 = load %struct.btree*, %struct.btree** %2, align 8
  %54 = call i32 @set_btree_node_io_error(%struct.btree* %53)
  br label %55

55:                                               ; preds = %52, %1
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = load %struct.btree*, %struct.btree** %2, align 8
  %58 = getelementptr inbounds %struct.btree, %struct.btree* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @bch_bbio_free(%struct.bio* %56, %struct.TYPE_12__* %59)
  %61 = load %struct.btree*, %struct.btree** %2, align 8
  %62 = call i64 @btree_node_io_error(%struct.btree* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %74

65:                                               ; preds = %55
  %66 = load %struct.btree*, %struct.btree** %2, align 8
  %67 = call i32 @bch_btree_node_read_done(%struct.btree* %66)
  %68 = load %struct.btree*, %struct.btree** %2, align 8
  %69 = getelementptr inbounds %struct.btree, %struct.btree* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @bch_time_stats_update(i32* %71, i32 %72)
  br label %85

74:                                               ; preds = %64
  %75 = load %struct.btree*, %struct.btree** %2, align 8
  %76 = getelementptr inbounds %struct.btree, %struct.btree* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load %struct.btree*, %struct.btree** %2, align 8
  %79 = getelementptr inbounds %struct.btree, %struct.btree* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.btree*, %struct.btree** %2, align 8
  %82 = getelementptr inbounds %struct.btree, %struct.btree* %81, i32 0, i32 0
  %83 = call i32 @PTR_BUCKET_NR(%struct.TYPE_12__* %80, i32* %82, i32 0)
  %84 = call i32 @bch_cache_set_error(%struct.TYPE_12__* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %74, %65
  ret void
}

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @trace_bcache_btree_read(%struct.btree*) #1

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local %struct.bio* @bch_bbio_alloc(%struct.TYPE_12__*) #1

declare dso_local i32 @KEY_SIZE(i32*) #1

declare dso_local i32 @bch_bio_map(%struct.bio*, i32) #1

declare dso_local i32 @bch_submit_bbio(%struct.bio*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @set_btree_node_io_error(%struct.btree*) #1

declare dso_local i32 @bch_bbio_free(%struct.bio*, %struct.TYPE_12__*) #1

declare dso_local i64 @btree_node_io_error(%struct.btree*) #1

declare dso_local i32 @bch_btree_node_read_done(%struct.btree*) #1

declare dso_local i32 @bch_time_stats_update(i32*, i32) #1

declare dso_local i32 @bch_cache_set_error(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @PTR_BUCKET_NR(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
