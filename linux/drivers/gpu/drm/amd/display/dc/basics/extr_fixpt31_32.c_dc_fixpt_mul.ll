; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fixed31_32 = type { i64 }

@LONG_MAX = common dso_local global i64 0, align 8
@FIXED31_32_BITS_PER_FRACTIONAL_PART = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@dc_fixpt_half = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dc_fixpt_mul(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca %struct.fixed31_32, align 8
  %5 = alloca %struct.fixed31_32, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  %17 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 0, %29
  br label %34

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 0, %40
  br label %45

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i64 [ %41, %38 ], [ %44, %42 ]
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @GET_INTEGER_PART(i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @GET_INTEGER_PART(i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @GET_FRACTIONAL_PART(i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @GET_FRACTIONAL_PART(i64 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = mul i64 %55, %56
  %58 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LONG_MAX, align 8
  %62 = icmp ule i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i64, i64* @FIXED31_32_BITS_PER_FRACTIONAL_PART, align 8
  %66 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 %67, %65
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %13, align 8
  %71 = mul i64 %69, %70
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* @LLONG_MAX, align 8
  %74 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %73, %75
  %77 = icmp ule i64 %72, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %80
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = mul i64 %84, %85
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @LLONG_MAX, align 8
  %89 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %88, %90
  %92 = icmp ule i64 %87, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %95
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = mul i64 %99, %100
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @FIXED31_32_BITS_PER_FRACTIONAL_PART, align 8
  %104 = lshr i64 %102, %103
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dc_fixpt_half, i32 0, i32 0), align 8
  %107 = icmp uge i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = add i64 %104, %109
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @LLONG_MAX, align 8
  %113 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %112, %114
  %116 = icmp ule i64 %111, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %119
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = xor i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %45
  %128 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %127, %45
  %133 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  ret i64 %134
}

declare dso_local i64 @GET_INTEGER_PART(i64) #1

declare dso_local i64 @GET_FRACTIONAL_PART(i64) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
