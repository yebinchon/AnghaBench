; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_random.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32 }

@prng = common dso_local global i32 0, align 4
@end_time = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"context=%llu, last=%u this=%u did not match expectation (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Completed %lu passes, each of %lu contexts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_syncmap_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_syncmap_random(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i915_syncmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i32, i32* @prng, align 4
  %14 = call i32 @I915_RND_STATE(i32 %13)
  %15 = load i32, i32* @end_time, align 4
  %16 = call i32 @IGT_TIMEOUT(i32 %15)
  %17 = call i32 @i915_syncmap_init(%struct.i915_syncmap** %3)
  store i64 0, i64* %4, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 100
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %34, %1
  %25 = call i32 @i915_prandom_u64_state(i32* @prng)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @i915_syncmap_set(%struct.i915_syncmap** %3, i32 %26, i64 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %91

31:                                               ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @jiffies, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @time_after(i32 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %24, label %40

40:                                               ; preds = %34
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* @ctx, align 4
  %43 = call i32 @I915_RND_STATE(i32 %42)
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %10, align 8
  %45 = call i64 @prandom_u32_state(i32* @prng)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @seqno_later(i64 %46, i64 %47)
  store i32 %48, i32* %11, align 4
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %76, %41
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = call i32 @i915_prandom_u64_state(i32* @ctx)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @i915_syncmap_is_later(%struct.i915_syncmap** %3, i32 %55, i64 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62, i64 %63, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %91

68:                                               ; preds = %53
  %69 = load i32, i32* %12, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @i915_syncmap_set(%struct.i915_syncmap** %3, i32 %69, i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %91

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %49

79:                                               ; preds = %49
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @end_time, align 4
  %84 = call i32 @__igt_timeout(i32 %83, i32* null)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %41, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %74, %60, %30
  %92 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dump_syncmap(%struct.i915_syncmap* %92, i32 %93)
  ret i32 %94
}

declare dso_local i32 @I915_RND_STATE(i32) #1

declare dso_local i32 @IGT_TIMEOUT(i32) #1

declare dso_local i32 @i915_syncmap_init(%struct.i915_syncmap**) #1

declare dso_local i32 @i915_prandom_u64_state(i32*) #1

declare dso_local i32 @i915_syncmap_set(%struct.i915_syncmap**, i32, i64) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @prandom_u32_state(i32*) #1

declare dso_local i32 @seqno_later(i64, i64) #1

declare dso_local i32 @i915_syncmap_is_later(%struct.i915_syncmap**, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @__igt_timeout(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @dump_syncmap(%struct.i915_syncmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
