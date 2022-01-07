; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_bw_fixed.c_bw_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_bw_fixed.c_bw_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_fixed = type { i64 }
%struct.TYPE_2__ = type { i64 }

@BW_FIXED_MAX_I32 = common dso_local global i32 0, align 4
@BW_FIXED_BITS_PER_FRACTIONAL_PART = common dso_local global i32 0, align 4
@MAX_I64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bw_mul(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.bw_fixed, align 8
  %4 = alloca %struct.bw_fixed, align 8
  %5 = alloca %struct.bw_fixed, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 8
  %16 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %4, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %5, i32 0, i32 0
  store i64 %1, i64* %17, align 8
  %18 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @abs_i64(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @abs_i64(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @BW_FIXED_GET_INTEGER_PART(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @BW_FIXED_GET_INTEGER_PART(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @GET_FRACTIONAL_PART(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @GET_FRACTIONAL_PART(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @BW_FIXED_MAX_I32, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp sle i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* @BW_FIXED_BITS_PER_FRACTIONAL_PART, align 4
  %53 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = zext i32 %52 to i64
  %56 = shl i64 %54, %55
  store i64 %56, i64* %53, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @MAX_I64, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = icmp sle i32 %60, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %71
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @MAX_I64, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  %84 = trunc i64 %83 to i32
  %85 = icmp sle i32 %78, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %89
  store i64 %92, i64* %90, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %93, %94
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @BW_FIXED_BITS_PER_FRACTIONAL_PART, align 4
  %98 = ashr i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @bw_frc_to_fixed(i32 1, i32 2)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = icmp sge i32 %99, %104
  %106 = zext i1 %105 to i32
  %107 = add nsw i32 %98, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @MAX_I64, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %110, %112
  %114 = trunc i64 %113 to i32
  %115 = icmp sle i32 %108, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %119
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = xor i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %2
  %128 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %127, %2
  %133 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  ret i64 %134
}

declare dso_local i32 @abs_i64(i64) #1

declare dso_local i32 @BW_FIXED_GET_INTEGER_PART(i32) #1

declare dso_local i32 @GET_FRACTIONAL_PART(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @bw_frc_to_fixed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
