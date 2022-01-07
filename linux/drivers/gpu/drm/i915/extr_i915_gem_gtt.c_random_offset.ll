; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_random_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_random_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @random_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @random_offset(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @range_overflows(i64 %11, i64 %12, i64 %13)
  %15 = call i32 @GEM_BUG_ON(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @round_up(i64 %16, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @round_down(i64 %21, i64 %22)
  %24 = icmp sgt i64 %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @round_down(i64 %29, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @round_up(i64 %32, i64 %33)
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = call i64 (...) @get_random_long()
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @div64_u64_rem(i64 %40, i64 %41, i64* %10)
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %38, %4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @round_up(i64 %47, i64 %48)
  ret i64 %49
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @range_overflows(i64, i64, i64) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i64 @get_random_long(...) #1

declare dso_local i32 @div64_u64_rem(i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
