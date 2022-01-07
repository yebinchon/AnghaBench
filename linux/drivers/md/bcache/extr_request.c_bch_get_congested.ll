; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_get_congested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_get_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, i32, i32, i32 }

@CONGESTED_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_get_congested(%struct.cache_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_set*, align 8
  %4 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %3, align 8
  %5 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %6 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %11 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %9, %1
  %16 = call i32 (...) @local_clock_us()
  %17 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %18 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = sdiv i32 %20, 1024
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %61

25:                                               ; preds = %15
  %26 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %27 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %26, i32 0, i32 1
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %61

36:                                               ; preds = %25
  %37 = load i64, i64* @CONGESTED_MAX, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @fract_exp_two(i32 %45, i32 6)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = call i32 (...) @get_random_u32()
  %49 = call i64 @hweight32(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 1, %58 ]
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %35, %24, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @local_clock_us(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @fract_exp_two(i32, i32) #1

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @get_random_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
