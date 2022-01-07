; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_conversion.c_fixed_point_to_int_frac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_conversion.c_fixed_point_to_int_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@dc_fixpt_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fixed_point_to_int_frac(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dc_fixpt_abs(i32 %16)
  %18 = call i64 @dc_fixpt_floor(i32 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = sdiv i32 1, %24
  %26 = sub nsw i32 %22, %25
  %27 = icmp sle i32 %20, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dc_fixpt_mul_int(i32 %31, i64 %29)
  %33 = call i64 @dc_fixpt_round(i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  br label %46

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = call i32 @dc_fixpt_from_int(i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @dc_fixpt_from_int(i64 %41)
  %43 = call i32 @dc_fixpt_recip(i32 %42)
  %44 = call i32 @dc_fixpt_sub(i32 %40, i32 %43)
  %45 = call i64 @dc_fixpt_floor(i32 %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %36, %28
  %47 = load i64, i64* %7, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %53, %54
  %56 = add nsw i32 %55, 1
  %57 = shl i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %52, %49
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* @dc_fixpt_zero, align 4
  %67 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @dc_fixpt_lt(i32 %68, i32 %66)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = shl i32 1, %74
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %71, %65, %62
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i64 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_abs(i32) #1

declare dso_local i64 @dc_fixpt_round(i32) #1

declare dso_local i32 @dc_fixpt_mul_int(i32, i64) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_int(i64) #1

declare dso_local i32 @dc_fixpt_recip(i32) #1

declare dso_local i64 @dc_fixpt_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
