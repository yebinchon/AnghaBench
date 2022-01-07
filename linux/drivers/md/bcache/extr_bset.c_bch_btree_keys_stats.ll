; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_keys_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_keys_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, %struct.bset_tree* }
%struct.bset_tree = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bset_stats = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_keys_stats(%struct.btree_keys* %0, %struct.bset_stats* %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bset_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bset_tree*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store %struct.bset_stats* %1, %struct.bset_stats** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %88, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %12 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ule i32 %10, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %9
  %16 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %17 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %16, i32 0, i32 1
  %18 = load %struct.bset_tree*, %struct.bset_tree** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %18, i64 %20
  store %struct.bset_tree* %21, %struct.bset_tree** %6, align 8
  %22 = load %struct.bset_tree*, %struct.bset_tree** %6, align 8
  %23 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  store i64 %28, i64* %7, align 8
  %29 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %30 = load %struct.bset_tree*, %struct.bset_tree** %6, align 8
  %31 = call i64 @bset_written(%struct.btree_keys* %29, %struct.bset_tree* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %15
  %34 = load %struct.bset_stats*, %struct.bset_stats** %4, align 8
  %35 = getelementptr inbounds %struct.bset_stats, %struct.bset_stats* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.bset_stats*, %struct.bset_stats** %4, align 8
  %40 = getelementptr inbounds %struct.bset_stats, %struct.bset_stats* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.bset_tree*, %struct.bset_tree** %6, align 8
  %44 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.bset_stats*, %struct.bset_stats** %4, align 8
  %48 = getelementptr inbounds %struct.bset_stats, %struct.bset_stats* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  store i64 1, i64* %8, align 8
  br label %51

51:                                               ; preds = %73, %33
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.bset_tree*, %struct.bset_tree** %6, align 8
  %54 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.bset_tree*, %struct.bset_tree** %6, align 8
  %60 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 127
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.bset_stats*, %struct.bset_stats** %4, align 8
  %69 = getelementptr inbounds %struct.bset_stats, %struct.bset_stats* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %51

76:                                               ; preds = %51
  br label %87

77:                                               ; preds = %15
  %78 = load %struct.bset_stats*, %struct.bset_stats** %4, align 8
  %79 = getelementptr inbounds %struct.bset_stats, %struct.bset_stats* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.bset_stats*, %struct.bset_stats** %4, align 8
  %84 = getelementptr inbounds %struct.bset_stats, %struct.bset_stats* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %77, %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %9

91:                                               ; preds = %9
  ret void
}

declare dso_local i64 @bset_written(%struct.btree_keys*, %struct.bset_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
