; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_insert_check_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_insert_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.btree_op = type { i32 }
%struct.bkey = type { i32* }
%struct.keylist = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@PTR_CHECK_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_btree_insert_check_key(%struct.btree* %0, %struct.btree_op* %1, %struct.bkey* %2) #0 {
  %4 = alloca %struct.btree*, align 8
  %5 = alloca %struct.btree_op*, align 8
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.keylist, align 4
  %11 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %4, align 8
  store %struct.btree_op* %1, %struct.btree_op** %5, align 8
  store %struct.bkey* %2, %struct.bkey** %6, align 8
  %12 = load i32, i32* @EINTR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.btree*, %struct.btree** %4, align 8
  %15 = getelementptr inbounds %struct.btree, %struct.btree* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.btree*, %struct.btree** %4, align 8
  %21 = getelementptr inbounds %struct.btree, %struct.btree* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.btree_op*, %struct.btree_op** %5, align 8
  %24 = getelementptr inbounds %struct.btree_op, %struct.btree_op* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = call i32 @bch_keylist_init(%struct.keylist* %10)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %3
  %32 = load %struct.btree*, %struct.btree** %4, align 8
  %33 = call i32 @rw_unlock(i32 0, %struct.btree* %32)
  %34 = load %struct.btree*, %struct.btree** %4, align 8
  %35 = load %struct.btree*, %struct.btree** %4, align 8
  %36 = getelementptr inbounds %struct.btree, %struct.btree* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rw_lock(i32 1, %struct.btree* %34, i32 %37)
  %39 = load %struct.btree*, %struct.btree** %4, align 8
  %40 = getelementptr inbounds %struct.btree, %struct.btree* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %31
  %48 = load %struct.btree*, %struct.btree** %4, align 8
  %49 = getelementptr inbounds %struct.btree, %struct.btree* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47, %31
  %55 = load %struct.btree*, %struct.btree** %4, align 8
  %56 = getelementptr inbounds %struct.btree, %struct.btree* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.btree_op*, %struct.btree_op** %5, align 8
  %59 = getelementptr inbounds %struct.btree_op, %struct.btree_op* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %87

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.bkey*, %struct.bkey** %6, align 8
  %63 = call i32 @SET_KEY_PTRS(%struct.bkey* %62, i32 1)
  %64 = load %struct.bkey*, %struct.bkey** %6, align 8
  %65 = getelementptr inbounds %struct.bkey, %struct.bkey* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = call i32 @get_random_bytes(i32* %67, i32 8)
  %69 = load %struct.bkey*, %struct.bkey** %6, align 8
  %70 = load i32, i32* @PTR_CHECK_DEV, align 4
  %71 = call i32 @SET_PTR_DEV(%struct.bkey* %69, i32 0, i32 %70)
  %72 = load %struct.bkey*, %struct.bkey** %6, align 8
  %73 = call i32 @bch_keylist_add(%struct.keylist* %10, %struct.bkey* %72)
  %74 = load %struct.btree*, %struct.btree** %4, align 8
  %75 = load %struct.btree_op*, %struct.btree_op** %5, align 8
  %76 = call i32 @bch_btree_insert_node(%struct.btree* %74, %struct.btree_op* %75, %struct.keylist* %10, i32* null, i32* null)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %61
  %80 = call i32 @bch_keylist_empty(%struct.keylist* %10)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %79, %61
  %84 = phi i1 [ false, %61 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  br label %87

87:                                               ; preds = %83, %54
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.btree*, %struct.btree** %4, align 8
  %92 = getelementptr inbounds %struct.btree, %struct.btree* %91, i32 0, i32 2
  %93 = call i32 @downgrade_write(i32* %92)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @bch_keylist_init(%struct.keylist*) #1

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #1

declare dso_local i32 @rw_lock(i32, %struct.btree*, i32) #1

declare dso_local i32 @SET_KEY_PTRS(%struct.bkey*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @SET_PTR_DEV(%struct.bkey*, i32, i32) #1

declare dso_local i32 @bch_keylist_add(%struct.keylist*, %struct.bkey*) #1

declare dso_local i32 @bch_btree_insert_node(%struct.btree*, %struct.btree_op*, %struct.keylist*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bch_keylist_empty(%struct.keylist*) #1

declare dso_local i32 @downgrade_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
