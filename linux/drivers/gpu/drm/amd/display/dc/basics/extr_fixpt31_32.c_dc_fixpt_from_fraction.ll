; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_from_fraction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_from_fraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i64 }

@LONG_MAX = common dso_local global i64 0, align 8
@FIXED31_32_BITS_PER_FRACTIONAL_PART = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dc_fixpt_from_fraction(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 0, %23
  br label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i64 [ %24, %22 ], [ %26, %25 ]
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = sub nsw i64 0, %32
  br label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i64 [ %33, %31 ], [ %35, %34 ]
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @complete_integer_division_u64(i64 %38, i64 %39, i64* %10)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @LONG_MAX, align 8
  %43 = icmp ule i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i32, i32* @FIXED31_32_BITS_PER_FRACTIONAL_PART, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %62, %36
  %48 = load i64, i64* %10, align 8
  %49 = shl i64 %48, 1
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = shl i64 %50, 1
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = or i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %55, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %47, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = shl i64 %67, 1
  %69 = load i64, i64* %9, align 8
  %70 = icmp uge i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @LLONG_MAX, align 8
  %75 = load i64, i64* %13, align 8
  %76 = sub i64 %74, %75
  %77 = icmp ule i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = xor i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 0, %91
  %93 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %66
  %95 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  ret i64 %96
}

declare dso_local i64 @complete_integer_division_u64(i64, i64, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
