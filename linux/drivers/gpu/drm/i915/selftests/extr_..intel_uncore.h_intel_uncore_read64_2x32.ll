; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..intel_uncore.h_intel_uncore_read64_2x32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..intel_uncore.h_intel_uncore_read64_2x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore*, i32, i32)* @intel_uncore_read64_2x32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_uncore_read64_2x32(%struct.intel_uncore* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @intel_uncore_read(%struct.intel_uncore* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @intel_uncore_read(%struct.intel_uncore* %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @intel_uncore_read(%struct.intel_uncore* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = icmp slt i64 %27, 2
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %14, label %32

32:                                               ; preds = %30
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 32
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = or i64 %36, %37
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

declare dso_local i64 @intel_uncore_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
