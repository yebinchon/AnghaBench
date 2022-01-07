; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_keys_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_keys_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, %struct.bset_tree* }
%struct.bset_tree = type { i8*, i8*, i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_btree_keys_alloc(%struct.btree_keys* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btree_keys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bset_tree*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %10 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %9, i32 0, i32 1
  %11 = load %struct.bset_tree*, %struct.bset_tree** %10, align 8
  store %struct.bset_tree* %11, %struct.bset_tree** %8, align 8
  %12 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %13 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @BUG_ON(i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %18 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %21 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @__get_free_pages(i32 %19, i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %26 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %28 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %85

32:                                               ; preds = %3
  %33 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %34 = call i64 @bset_tree_bytes(%struct.btree_keys* %33)
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %39 = call i64 @bset_tree_bytes(%struct.btree_keys* %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @kmalloc(i64 %39, i32 %40)
  br label %49

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %45 = call i64 @bset_tree_bytes(%struct.btree_keys* %44)
  %46 = call i32 @get_order(i64 %45)
  %47 = call i64 @__get_free_pages(i32 %43, i32 %46)
  %48 = inttoptr i64 %47 to i8*
  br label %49

49:                                               ; preds = %42, %37
  %50 = phi i8* [ %41, %37 ], [ %48, %42 ]
  %51 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %52 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %54 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %85

58:                                               ; preds = %49
  %59 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %60 = call i64 @bset_prev_bytes(%struct.btree_keys* %59)
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %65 = call i64 @bset_prev_bytes(%struct.btree_keys* %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @kmalloc(i64 %65, i32 %66)
  br label %75

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %71 = call i64 @bset_prev_bytes(%struct.btree_keys* %70)
  %72 = call i32 @get_order(i64 %71)
  %73 = call i64 @__get_free_pages(i32 %69, i32 %72)
  %74 = inttoptr i64 %73 to i8*
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i8* [ %67, %63 ], [ %74, %68 ]
  %77 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %78 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %80 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %85

84:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %90

85:                                               ; preds = %83, %57, %31
  %86 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %87 = call i32 @bch_btree_keys_free(%struct.btree_keys* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(i8*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i64 @bset_tree_bytes(%struct.btree_keys*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @bset_prev_bytes(%struct.btree_keys*) #1

declare dso_local i32 @bch_btree_keys_free(%struct.btree_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
