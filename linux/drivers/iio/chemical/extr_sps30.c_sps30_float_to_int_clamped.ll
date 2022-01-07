; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_float_to_int_clamped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_float_to_int_clamped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPS30_MAX_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sps30_float_to_int_clamped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sps30_float_to_int_clamped(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_unaligned_be32(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GENMASK(i32 22, i32 0)
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 23
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %63

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 127
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 8388608, %28
  %30 = mul nsw i32 %29, 100
  %31 = ashr i32 %30, 23
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 0, %32
  %34 = ashr i32 %31, %33
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 23, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %40, %41
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SPS30_MAX_PM, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @SPS30_MAX_PM, align 4
  %49 = mul nsw i32 %48, 100
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @GENMASK(i32 %53, i32 0)
  %55 = and i32 %51, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = mul nsw i32 %56, 100
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 100
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %59, %60
  %62 = add nsw i32 %57, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %50, %47, %27, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
