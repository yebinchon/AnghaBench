; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c___bch_bucket_alloc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c___bch_bucket_alloc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, %struct.cache**, i32, i32 }
%struct.cache = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bkey = type { i32* }

@CACHE_SET_IO_DISABLE = common dso_local global i32 0, align 4
@MAX_CACHES_PER_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bch_bucket_alloc_set(%struct.cache_set* %0, i32 %1, %struct.bkey* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bkey*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cache*, align 8
  %14 = alloca i64, align 8
  store %struct.cache_set* %0, %struct.cache_set** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bkey* %2, %struct.bkey** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %16 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %17 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %16, i32 0, i32 3
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %100

22:                                               ; preds = %5
  %23 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %24 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %23, i32 0, i32 2
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %31 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MAX_CACHES_PER_SET, align 4
  %37 = icmp sgt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %28, %22
  %39 = phi i1 [ true, %28 ], [ true, %22 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.bkey*, %struct.bkey** %9, align 8
  %43 = call i32 @bkey_init(%struct.bkey* %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %89, %38
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %50 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %49, i32 0, i32 1
  %51 = load %struct.cache**, %struct.cache*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cache*, %struct.cache** %51, i64 %53
  %55 = load %struct.cache*, %struct.cache** %54, align 8
  store %struct.cache* %55, %struct.cache** %13, align 8
  %56 = load %struct.cache*, %struct.cache** %13, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @bch_bucket_alloc(%struct.cache* %56, i32 %57, i32 %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %93

63:                                               ; preds = %48
  %64 = load %struct.cache*, %struct.cache** %13, align 8
  %65 = getelementptr inbounds %struct.cache, %struct.cache* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @bucket_to_sector(%struct.cache_set* %71, i64 %72)
  %74 = load %struct.cache*, %struct.cache** %13, align 8
  %75 = getelementptr inbounds %struct.cache, %struct.cache* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @MAKE_PTR(i32 %70, i32 %73, i32 %77)
  %79 = load %struct.bkey*, %struct.bkey** %9, align 8
  %80 = getelementptr inbounds %struct.bkey, %struct.bkey* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.bkey*, %struct.bkey** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @SET_KEY_PTRS(%struct.bkey* %85, i32 %87)
  br label %89

89:                                               ; preds = %63
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %44

92:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %100

93:                                               ; preds = %62
  %94 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %95 = load %struct.bkey*, %struct.bkey** %9, align 8
  %96 = call i32 @bch_bucket_free(%struct.cache_set* %94, %struct.bkey* %95)
  %97 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %98 = load %struct.bkey*, %struct.bkey** %9, align 8
  %99 = call i32 @bkey_put(%struct.cache_set* %97, %struct.bkey* %98)
  store i32 -1, i32* %6, align 4
  br label %100

100:                                              ; preds = %93, %92, %21
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bkey_init(%struct.bkey*) #1

declare dso_local i64 @bch_bucket_alloc(%struct.cache*, i32, i32) #1

declare dso_local i32 @MAKE_PTR(i32, i32, i32) #1

declare dso_local i32 @bucket_to_sector(%struct.cache_set*, i64) #1

declare dso_local i32 @SET_KEY_PTRS(%struct.bkey*, i32) #1

declare dso_local i32 @bch_bucket_free(%struct.cache_set*, %struct.bkey*) #1

declare dso_local i32 @bkey_put(%struct.cache_set*, %struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
