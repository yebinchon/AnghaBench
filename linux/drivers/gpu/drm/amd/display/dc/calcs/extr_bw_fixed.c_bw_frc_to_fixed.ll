; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_bw_fixed.c_bw_frc_to_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_bw_fixed.c_bw_frc_to_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_fixed = type { i64 }

@BW_FIXED_MAX_I32 = common dso_local global i32 0, align 4
@BW_FIXED_BITS_PER_FRACTIONAL_PART = common dso_local global i64 0, align 8
@MAX_I64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bw_frc_to_fixed(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.bw_fixed, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
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
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @abs_i64(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @abs_i64(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @div64_u64_rem(i32 %28, i32 %29, i32* %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @BW_FIXED_MAX_I32, align 4
  %33 = icmp sle i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i64, i64* @BW_FIXED_BITS_PER_FRACTIONAL_PART, align 8
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %52, %2
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %37, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 1
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MAX_I64, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp sle i32 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = xor i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %56
  %80 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %56
  %85 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  ret i64 %86
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @abs_i64(i64) #1

declare dso_local i32 @div64_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
