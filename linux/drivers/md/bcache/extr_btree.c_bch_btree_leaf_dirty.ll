; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_leaf_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_leaf_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btree = type { i32, i32, i32, i32 }
%struct.bset = type { i32 }
%struct.btree_write = type { i32* }

@HZ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*, i32*)* @bch_btree_leaf_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_btree_leaf_dirty(%struct.btree* %0, i32* %1) #0 {
  %3 = alloca %struct.btree*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bset*, align 8
  %6 = alloca %struct.btree_write*, align 8
  store %struct.btree* %0, %struct.btree** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.btree*, %struct.btree** %3, align 8
  %8 = call %struct.bset* @btree_bset_last(%struct.btree* %7)
  store %struct.bset* %8, %struct.bset** %5, align 8
  %9 = load %struct.btree*, %struct.btree** %3, align 8
  %10 = call %struct.btree_write* @btree_current_write(%struct.btree* %9)
  store %struct.btree_write* %10, %struct.btree_write** %6, align 8
  %11 = load %struct.btree*, %struct.btree** %3, align 8
  %12 = getelementptr inbounds %struct.btree, %struct.btree* %11, i32 0, i32 3
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.btree*, %struct.btree** %3, align 8
  %15 = getelementptr inbounds %struct.btree, %struct.btree* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.bset*, %struct.bset** %5, align 8
  %22 = getelementptr inbounds %struct.bset, %struct.bset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.btree*, %struct.btree** %3, align 8
  %29 = call i32 @btree_node_dirty(%struct.btree* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.btree*, %struct.btree** %3, align 8
  %33 = getelementptr inbounds %struct.btree, %struct.btree* %32, i32 0, i32 1
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 30, %34
  %36 = call i32 @schedule_delayed_work(i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.btree*, %struct.btree** %3, align 8
  %39 = call i32 @set_btree_node_dirty(%struct.btree* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  %43 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %44 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.btree*, %struct.btree** %3, align 8
  %49 = getelementptr inbounds %struct.btree, %struct.btree* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %52 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @journal_pin_cmp(i32 %50, i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %59 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @atomic_dec_bug(i32* %60)
  %62 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %63 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %47, %42
  %65 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %66 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %72 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.btree_write*, %struct.btree_write** %6, align 8
  %74 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @atomic_inc(i32* %75)
  br label %77

77:                                               ; preds = %69, %64
  br label %78

78:                                               ; preds = %77, %37
  %79 = load %struct.bset*, %struct.bset** %5, align 8
  %80 = call i32 @set_bytes(%struct.bset* %79)
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = sub nsw i32 %81, 48
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.btree*, %struct.btree** %3, align 8
  %91 = call i32 @bch_btree_node_write(%struct.btree* %90, i32* null)
  br label %92

92:                                               ; preds = %89, %84, %78
  ret void
}

declare dso_local %struct.bset* @btree_bset_last(%struct.btree*) #1

declare dso_local %struct.btree_write* @btree_current_write(%struct.btree*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btree_node_dirty(%struct.btree*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @set_btree_node_dirty(%struct.btree*) #1

declare dso_local i64 @journal_pin_cmp(i32, i32*, i32*) #1

declare dso_local i32 @atomic_dec_bug(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bytes(%struct.bset*) #1

declare dso_local i32 @bch_btree_node_write(%struct.btree*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
