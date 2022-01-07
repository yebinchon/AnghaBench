; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_set_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_set_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.btree*, i32 }
%struct.closure = type { i32 }
%struct.TYPE_5__ = type { i64 }

@BTREE_PRIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_set_root(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.closure, align 4
  store %struct.btree* %0, %struct.btree** %2, align 8
  %5 = call i32 @closure_init_stack(%struct.closure* %4)
  %6 = load %struct.btree*, %struct.btree** %2, align 8
  %7 = call i32 @trace_bcache_btree_set_root(%struct.btree* %6)
  %8 = load %struct.btree*, %struct.btree** %2, align 8
  %9 = getelementptr inbounds %struct.btree, %struct.btree* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.btree*, %struct.btree** %2, align 8
  %18 = getelementptr inbounds %struct.btree, %struct.btree* %17, i32 0, i32 2
  %19 = call i32 @KEY_PTRS(i32* %18)
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.btree*, %struct.btree** %2, align 8
  %23 = getelementptr inbounds %struct.btree, %struct.btree* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.btree*, %struct.btree** %2, align 8
  %26 = getelementptr inbounds %struct.btree, %struct.btree* %25, i32 0, i32 2
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.TYPE_5__* @PTR_BUCKET(%struct.TYPE_4__* %24, i32* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BTREE_PRIO, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.btree*, %struct.btree** %2, align 8
  %40 = getelementptr inbounds %struct.btree, %struct.btree* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.btree*, %struct.btree** %2, align 8
  %45 = getelementptr inbounds %struct.btree, %struct.btree* %44, i32 0, i32 1
  %46 = call i32 @list_del_init(i32* %45)
  %47 = load %struct.btree*, %struct.btree** %2, align 8
  %48 = getelementptr inbounds %struct.btree, %struct.btree* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.btree*, %struct.btree** %2, align 8
  %53 = load %struct.btree*, %struct.btree** %2, align 8
  %54 = getelementptr inbounds %struct.btree, %struct.btree* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.btree* %52, %struct.btree** %56, align 8
  %57 = load %struct.btree*, %struct.btree** %2, align 8
  %58 = getelementptr inbounds %struct.btree, %struct.btree* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @bch_journal_meta(%struct.TYPE_4__* %59, %struct.closure* %4)
  %61 = call i32 @closure_sync(%struct.closure* %4)
  ret void
}

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @trace_bcache_btree_set_root(%struct.btree*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @KEY_PTRS(i32*) #1

declare dso_local %struct.TYPE_5__* @PTR_BUCKET(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bch_journal_meta(%struct.TYPE_4__*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
