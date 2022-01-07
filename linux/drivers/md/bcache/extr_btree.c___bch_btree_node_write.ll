; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c___bch_btree_node_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c___bch_btree_node_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.btree = type { i64, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.closure = type { i32 }
%struct.bset = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@BTREE_NODE_dirty = common dso_local global i32 0, align 4
@BTREE_NODE_write_idx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bch_btree_node_write(%struct.btree* %0, %struct.closure* %1) #0 {
  %3 = alloca %struct.btree*, align 8
  %4 = alloca %struct.closure*, align 8
  %5 = alloca %struct.bset*, align 8
  store %struct.btree* %0, %struct.btree** %3, align 8
  store %struct.closure* %1, %struct.closure** %4, align 8
  %6 = load %struct.btree*, %struct.btree** %3, align 8
  %7 = call %struct.bset* @btree_bset_last(%struct.btree* %6)
  store %struct.bset* %7, %struct.bset** %5, align 8
  %8 = load %struct.btree*, %struct.btree** %3, align 8
  %9 = getelementptr inbounds %struct.btree, %struct.btree* %8, i32 0, i32 8
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.btree*, %struct.btree** %3, align 8
  %12 = call i32 @trace_bcache_btree_write(%struct.btree* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.btree*, %struct.btree** %3, align 8
  %18 = getelementptr inbounds %struct.btree, %struct.btree* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.btree*, %struct.btree** %3, align 8
  %21 = call i64 @btree_blocks(%struct.btree* %20)
  %22 = icmp sge i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.btree*, %struct.btree** %3, align 8
  %26 = getelementptr inbounds %struct.btree, %struct.btree* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.bset*, %struct.bset** %5, align 8
  %31 = getelementptr inbounds %struct.bset, %struct.bset* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %2
  %36 = phi i1 [ false, %2 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.btree*, %struct.btree** %3, align 8
  %40 = call %struct.TYPE_9__* @btree_bset_first(%struct.btree* %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bset*, %struct.bset** %5, align 8
  %44 = getelementptr inbounds %struct.bset, %struct.bset* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.btree*, %struct.btree** %3, align 8
  %50 = getelementptr inbounds %struct.btree, %struct.btree* %49, i32 0, i32 7
  %51 = call i32 @bch_check_keys(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.btree*, %struct.btree** %3, align 8
  %53 = getelementptr inbounds %struct.btree, %struct.btree* %52, i32 0, i32 6
  %54 = call i32 @cancel_delayed_work(i32* %53)
  %55 = load %struct.btree*, %struct.btree** %3, align 8
  %56 = getelementptr inbounds %struct.btree, %struct.btree* %55, i32 0, i32 5
  %57 = call i32 @down(i32* %56)
  %58 = load %struct.btree*, %struct.btree** %3, align 8
  %59 = getelementptr inbounds %struct.btree, %struct.btree* %58, i32 0, i32 4
  %60 = load %struct.closure*, %struct.closure** %4, align 8
  %61 = icmp ne %struct.closure* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %35
  %63 = bitcast %struct.closure* %60 to i8*
  br label %70

64:                                               ; preds = %35
  %65 = load %struct.btree*, %struct.btree** %3, align 8
  %66 = getelementptr inbounds %struct.btree, %struct.btree* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = bitcast i32* %68 to i8*
  br label %70

70:                                               ; preds = %64, %62
  %71 = phi i8* [ %63, %62 ], [ %69, %64 ]
  %72 = bitcast i8* %71 to i32*
  %73 = call i32 @closure_init(i32* %59, i32* %72)
  %74 = load i32, i32* @BTREE_NODE_dirty, align 4
  %75 = load %struct.btree*, %struct.btree** %3, align 8
  %76 = getelementptr inbounds %struct.btree, %struct.btree* %75, i32 0, i32 3
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load i32, i32* @BTREE_NODE_write_idx, align 4
  %79 = load %struct.btree*, %struct.btree** %3, align 8
  %80 = getelementptr inbounds %struct.btree, %struct.btree* %79, i32 0, i32 3
  %81 = call i32 @change_bit(i32 %78, i32* %80)
  %82 = load %struct.btree*, %struct.btree** %3, align 8
  %83 = call i32 @do_btree_node_write(%struct.btree* %82)
  %84 = load %struct.bset*, %struct.bset** %5, align 8
  %85 = load %struct.btree*, %struct.btree** %3, align 8
  %86 = getelementptr inbounds %struct.btree, %struct.btree* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = call i32 @block_bytes(%struct.TYPE_10__* %87)
  %89 = call i32 @set_blocks(%struct.bset* %84, i32 %88)
  %90 = load %struct.btree*, %struct.btree** %3, align 8
  %91 = getelementptr inbounds %struct.btree, %struct.btree* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %89, %95
  %97 = load %struct.btree*, %struct.btree** %3, align 8
  %98 = getelementptr inbounds %struct.btree, %struct.btree* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load %struct.btree*, %struct.btree** %3, align 8
  %101 = getelementptr inbounds %struct.btree, %struct.btree* %100, i32 0, i32 2
  %102 = call %struct.TYPE_11__* @PTR_CACHE(%struct.TYPE_10__* %99, i32* %101, i32 0)
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = call i32 @atomic_long_add(i32 %96, i32* %103)
  %105 = load %struct.bset*, %struct.bset** %5, align 8
  %106 = load %struct.btree*, %struct.btree** %3, align 8
  %107 = getelementptr inbounds %struct.btree, %struct.btree* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @block_bytes(%struct.TYPE_10__* %108)
  %110 = call i32 @set_blocks(%struct.bset* %105, i32 %109)
  %111 = sext i32 %110 to i64
  %112 = load %struct.btree*, %struct.btree** %3, align 8
  %113 = getelementptr inbounds %struct.btree, %struct.btree* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  ret void
}

declare dso_local %struct.bset* @btree_bset_last(%struct.btree*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_bcache_btree_write(%struct.btree*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @btree_blocks(%struct.btree*) #1

declare dso_local %struct.TYPE_9__* @btree_bset_first(%struct.btree*) #1

declare dso_local i32 @bch_check_keys(i32*, i8*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @closure_init(i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @change_bit(i32, i32*) #1

declare dso_local i32 @do_btree_node_write(%struct.btree*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @set_blocks(%struct.bset*, i32) #1

declare dso_local i32 @block_bytes(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @PTR_CACHE(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
