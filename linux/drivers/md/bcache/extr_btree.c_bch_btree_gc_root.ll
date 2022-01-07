; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_gc_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_gc_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.btree_op = type { i32 }
%struct.closure = type { i32 }
%struct.gc_stat = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.btree_op*, %struct.closure*, %struct.gc_stat*)* @bch_btree_gc_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_btree_gc_root(%struct.btree* %0, %struct.btree_op* %1, %struct.closure* %2, %struct.gc_stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btree*, align 8
  %7 = alloca %struct.btree_op*, align 8
  %8 = alloca %struct.closure*, align 8
  %9 = alloca %struct.gc_stat*, align 8
  %10 = alloca %struct.btree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %6, align 8
  store %struct.btree_op* %1, %struct.btree_op** %7, align 8
  store %struct.closure* %2, %struct.closure** %8, align 8
  store %struct.gc_stat* %3, %struct.gc_stat** %9, align 8
  store %struct.btree* null, %struct.btree** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.btree*, %struct.btree** %6, align 8
  %14 = load %struct.gc_stat*, %struct.gc_stat** %9, align 8
  %15 = call i32 @btree_gc_mark_node(%struct.btree* %13, %struct.gc_stat* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load %struct.btree*, %struct.btree** %6, align 8
  %20 = call %struct.btree* @btree_node_alloc_replacement(%struct.btree* %19, i32* null)
  store %struct.btree* %20, %struct.btree** %10, align 8
  %21 = load %struct.btree*, %struct.btree** %10, align 8
  %22 = call i32 @IS_ERR_OR_NULL(%struct.btree* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load %struct.btree*, %struct.btree** %10, align 8
  %26 = call i32 @bch_btree_node_write_sync(%struct.btree* %25)
  %27 = load %struct.btree*, %struct.btree** %10, align 8
  %28 = call i32 @bch_btree_set_root(%struct.btree* %27)
  %29 = load %struct.btree*, %struct.btree** %6, align 8
  %30 = call i32 @btree_node_free(%struct.btree* %29)
  %31 = load %struct.btree*, %struct.btree** %10, align 8
  %32 = call i32 @rw_unlock(i32 1, %struct.btree* %31)
  %33 = load i32, i32* @EINTR, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %71

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.btree*, %struct.btree** %6, align 8
  %38 = getelementptr inbounds %struct.btree, %struct.btree* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.btree*, %struct.btree** %6, align 8
  %41 = getelementptr inbounds %struct.btree, %struct.btree* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.btree*, %struct.btree** %6, align 8
  %45 = getelementptr inbounds %struct.btree, %struct.btree* %44, i32 0, i32 0
  %46 = call i32 @__bch_btree_mark_key(%struct.TYPE_2__* %39, i64 %43, i32* %45)
  %47 = load %struct.btree*, %struct.btree** %6, align 8
  %48 = getelementptr inbounds %struct.btree, %struct.btree* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %36
  %52 = load %struct.btree*, %struct.btree** %6, align 8
  %53 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %54 = load %struct.closure*, %struct.closure** %8, align 8
  %55 = load %struct.gc_stat*, %struct.gc_stat** %9, align 8
  %56 = call i32 @btree_gc_recurse(%struct.btree* %52, %struct.btree_op* %53, %struct.closure* %54, %struct.gc_stat* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %71

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.btree*, %struct.btree** %6, align 8
  %64 = getelementptr inbounds %struct.btree, %struct.btree* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.btree*, %struct.btree** %6, align 8
  %68 = getelementptr inbounds %struct.btree, %struct.btree* %67, i32 0, i32 0
  %69 = call i32 @bkey_copy_key(i32* %66, i32* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %62, %59, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @btree_gc_mark_node(%struct.btree*, %struct.gc_stat*) #1

declare dso_local %struct.btree* @btree_node_alloc_replacement(%struct.btree*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.btree*) #1

declare dso_local i32 @bch_btree_node_write_sync(%struct.btree*) #1

declare dso_local i32 @bch_btree_set_root(%struct.btree*) #1

declare dso_local i32 @btree_node_free(%struct.btree*) #1

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #1

declare dso_local i32 @__bch_btree_mark_key(%struct.TYPE_2__*, i64, i32*) #1

declare dso_local i32 @btree_gc_recurse(%struct.btree*, %struct.btree_op*, %struct.closure*, %struct.gc_stat*) #1

declare dso_local i32 @bkey_copy_key(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
