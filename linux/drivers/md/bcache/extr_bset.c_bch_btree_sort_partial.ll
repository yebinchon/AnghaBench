; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_sort_partial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_sort_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bset_sort_state = type { i32 }
%struct.btree_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_sort_partial(%struct.btree_keys* %0, i32 %1, %struct.bset_sort_state* %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bset_sort_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btree_iter, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bset_sort_state* %2, %struct.bset_sort_state** %6, align 8
  %12 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %13 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %16 = call i32 @bch_count_data(%struct.btree_keys* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %18 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %19 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = call i32 @__bch_btree_iter_init(%struct.btree_keys* %17, %struct.btree_iter* %9, i32* null, %struct.TYPE_4__* %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %48, %27
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %32 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ule i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %37 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %53 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @__set_bytes(%struct.TYPE_3__* %56, i64 %57)
  %59 = call i64 @get_order(i32 %58)
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %51, %3
  %61 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.bset_sort_state*, %struct.bset_sort_state** %6, align 8
  %65 = call i32 @__btree_sort(%struct.btree_keys* %61, %struct.btree_iter* %9, i32 %62, i64 %63, i32 0, %struct.bset_sort_state* %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %70 = call i32 @bch_count_data(%struct.btree_keys* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %70, %71
  br label %73

73:                                               ; preds = %68, %60
  %74 = phi i1 [ false, %60 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @EBUG_ON(i32 %75)
  ret void
}

declare dso_local i32 @bch_count_data(%struct.btree_keys*) #1

declare dso_local i32 @__bch_btree_iter_init(%struct.btree_keys*, %struct.btree_iter*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @get_order(i32) #1

declare dso_local i32 @__set_bytes(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @__btree_sort(%struct.btree_keys*, %struct.btree_iter*, i32, i64, i32, %struct.bset_sort_state*) #1

declare dso_local i32 @EBUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
