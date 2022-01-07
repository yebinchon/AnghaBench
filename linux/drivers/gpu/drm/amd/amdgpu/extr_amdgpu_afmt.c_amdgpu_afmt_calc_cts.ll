; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_afmt.c_amdgpu_afmt_calc_cts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_afmt.c_amdgpu_afmt_calc_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"Calculated ACR N value is too small. You may experience audio problems.\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Calculated ACR N value is too large. You may experience audio problems.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Calculated ACR timing N=%d CTS=%d for frequency %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32)* @amdgpu_afmt_calc_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_afmt_calc_cts(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 128, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 1000
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @gcd(i32 %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 128, %30
  %32 = sdiv i32 %31, 1000
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 128, %50
  %52 = sdiv i32 %51, 1500
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 128, %58
  %60 = sdiv i32 %59, 300
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %72, i32 %73)
  ret void
}

declare dso_local i64 @gcd(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
