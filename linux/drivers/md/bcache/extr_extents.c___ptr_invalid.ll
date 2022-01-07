; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c___ptr_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c___ptr_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bkey = type { i32 }
%struct.cache = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*, %struct.bkey*)* @__ptr_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ptr_invalid(%struct.cache_set* %0, %struct.bkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %61, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.bkey*, %struct.bkey** %5, align 8
  %13 = call i32 @KEY_PTRS(%struct.bkey* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %10
  %16 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %17 = load %struct.bkey*, %struct.bkey** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @ptr_available(%struct.cache_set* %16, %struct.bkey* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %23 = load %struct.bkey*, %struct.bkey** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.cache* @PTR_CACHE(%struct.cache_set* %22, %struct.bkey* %23, i32 %24)
  store %struct.cache* %25, %struct.cache** %7, align 8
  %26 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %27 = load %struct.bkey*, %struct.bkey** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @PTR_BUCKET_NR(%struct.cache_set* %26, %struct.bkey* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %31 = load %struct.bkey*, %struct.bkey** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PTR_OFFSET(%struct.bkey* %31, i32 %32)
  %34 = call i64 @bucket_remainder(%struct.cache_set* %30, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.bkey*, %struct.bkey** %5, align 8
  %36 = call i64 @KEY_SIZE(%struct.bkey* %35)
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %40 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %38, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %21
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.cache*, %struct.cache** %7, align 8
  %47 = getelementptr inbounds %struct.cache, %struct.cache* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.cache*, %struct.cache** %7, align 8
  %54 = getelementptr inbounds %struct.cache, %struct.cache* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %44, %21
  store i32 1, i32* %3, align 4
  br label %65

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %15
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %10

64:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i64 @ptr_available(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local %struct.cache* @PTR_CACHE(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i64 @PTR_BUCKET_NR(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i64 @bucket_remainder(%struct.cache_set*, i32) #1

declare dso_local i32 @PTR_OFFSET(%struct.bkey*, i32) #1

declare dso_local i64 @KEY_SIZE(%struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
