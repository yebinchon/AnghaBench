; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_random.c_i915_prandom_shuffle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_random.c_i915_prandom_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnd_state = type { i32 }

@U32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_prandom_shuffle(i8* %0, i64 %1, i64 %2, %struct.rnd_state* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rnd_state*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.rnd_state* %3, %struct.rnd_state** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 128
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @U32_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ true, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %73

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %23
  br label %73

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %44, %43, %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  %38 = load %struct.rnd_state*, %struct.rnd_state** %8, align 8
  %39 = call i64 @i915_prandom_u32_max_state(i64 %37, %struct.rnd_state* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %31

44:                                               ; preds = %35
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = mul i64 %47, %48
  %50 = getelementptr i8, i8* %46, i64 %49
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @memcpy(i8* %45, i8* %50, i64 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = mul i64 %54, %55
  %57 = getelementptr i8, i8* %53, i64 %56
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = mul i64 %59, %60
  %62 = getelementptr i8, i8* %58, i64 %61
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @memcpy(i8* %57, i8* %62, i64 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %6, align 8
  %68 = mul i64 %66, %67
  %69 = getelementptr i8, i8* %65, i64 %68
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @memcpy(i8* %69, i8* %70, i64 %71)
  br label %31

73:                                               ; preds = %22, %29, %31
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @i915_prandom_u32_max_state(i64, %struct.rnd_state*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
