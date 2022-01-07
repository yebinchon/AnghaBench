; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_reap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.closure = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bnode %p is flushing by journal, retry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, i32, i32)* @mca_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_reap(%struct.btree* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.closure, align 4
  store %struct.btree* %0, %struct.btree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @closure_init_stack(%struct.closure* %8)
  %10 = load %struct.btree*, %struct.btree** %5, align 8
  %11 = getelementptr inbounds %struct.btree, %struct.btree* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.btree*, %struct.btree** %5, align 8
  %16 = getelementptr inbounds %struct.btree, %struct.btree* %15, i32 0, i32 3
  %17 = call i32 @down_write_trylock(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.btree*, %struct.btree** %5, align 8
  %24 = call i64 @btree_node_dirty(%struct.btree* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.btree*, %struct.btree** %5, align 8
  %28 = getelementptr inbounds %struct.btree, %struct.btree* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi i1 [ false, %22 ], [ %35, %26 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.btree*, %struct.btree** %5, align 8
  %41 = getelementptr inbounds %struct.btree, %struct.btree* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %98

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load %struct.btree*, %struct.btree** %5, align 8
  %52 = call i64 @btree_node_dirty(%struct.btree* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %98

55:                                               ; preds = %50
  %56 = load %struct.btree*, %struct.btree** %5, align 8
  %57 = getelementptr inbounds %struct.btree, %struct.btree* %56, i32 0, i32 0
  %58 = call i64 @down_trylock(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %98

61:                                               ; preds = %55
  %62 = load %struct.btree*, %struct.btree** %5, align 8
  %63 = getelementptr inbounds %struct.btree, %struct.btree* %62, i32 0, i32 0
  %64 = call i32 @up(i32* %63)
  br label %65

65:                                               ; preds = %61, %47
  br label %66

66:                                               ; preds = %73, %65
  %67 = load %struct.btree*, %struct.btree** %5, align 8
  %68 = getelementptr inbounds %struct.btree, %struct.btree* %67, i32 0, i32 1
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.btree*, %struct.btree** %5, align 8
  %71 = call i64 @btree_node_journal_flush(%struct.btree* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.btree*, %struct.btree** %5, align 8
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.btree* %74)
  %76 = load %struct.btree*, %struct.btree** %5, align 8
  %77 = getelementptr inbounds %struct.btree, %struct.btree* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = call i32 @udelay(i32 1)
  br label %66

80:                                               ; preds = %66
  %81 = load %struct.btree*, %struct.btree** %5, align 8
  %82 = call i64 @btree_node_dirty(%struct.btree* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.btree*, %struct.btree** %5, align 8
  %86 = call i32 @__bch_btree_node_write(%struct.btree* %85, %struct.closure* %8)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.btree*, %struct.btree** %5, align 8
  %89 = getelementptr inbounds %struct.btree, %struct.btree* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = call i32 @closure_sync(%struct.closure* %8)
  %92 = load %struct.btree*, %struct.btree** %5, align 8
  %93 = getelementptr inbounds %struct.btree, %struct.btree* %92, i32 0, i32 0
  %94 = call i32 @down(i32* %93)
  %95 = load %struct.btree*, %struct.btree** %5, align 8
  %96 = getelementptr inbounds %struct.btree, %struct.btree* %95, i32 0, i32 0
  %97 = call i32 @up(i32* %96)
  store i32 0, i32* %4, align 4
  br label %103

98:                                               ; preds = %60, %54, %46
  %99 = load %struct.btree*, %struct.btree** %5, align 8
  %100 = call i32 @rw_unlock(i32 1, %struct.btree* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %87, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @btree_node_dirty(%struct.btree*) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @btree_node_journal_flush(%struct.btree*) #1

declare dso_local i32 @pr_debug(i8*, %struct.btree*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__bch_btree_node_write(%struct.btree*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
