; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_sqr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fixed31_32 = type { i64 }

@LONG_MAX = common dso_local global i64 0, align 8
@FIXED31_32_BITS_PER_FRACTIONAL_PART = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@dc_fixpt_half = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dc_fixpt_sqr(i64 %0) #0 {
  %2 = alloca %struct.fixed31_32, align 8
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @abs_i64(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @GET_INTEGER_PART(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @GET_FRACTIONAL_PART(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %16, %17
  %19 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LONG_MAX, align 8
  %23 = icmp ule i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i64, i64* @FIXED31_32_BITS_PER_FRACTIONAL_PART, align 8
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 %28, %26
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = mul i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @LLONG_MAX, align 8
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %34, %36
  %38 = icmp ule i64 %33, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @LLONG_MAX, align 8
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %46, %48
  %50 = icmp ule i64 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = mul i64 %57, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @FIXED31_32_BITS_PER_FRACTIONAL_PART, align 8
  %62 = lshr i64 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dc_fixpt_half, i32 0, i32 0), align 8
  %65 = icmp uge i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = add i64 %62, %67
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @LLONG_MAX, align 8
  %71 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %70, %72
  %74 = icmp ule i64 %69, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, %77
  store i64 %80, i64* %78, align 8
  %81 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  ret i64 %82
}

declare dso_local i64 @abs_i64(i64) #1

declare dso_local i64 @GET_INTEGER_PART(i64) #1

declare dso_local i64 @GET_FRACTIONAL_PART(i64) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
