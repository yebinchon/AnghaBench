; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_adjust_exponent_nano.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_adjust_exponent_nano.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @adjust_exponent_nano to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_exponent_nano(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @int_pow(i32 10, i32 %20)
  %22 = mul nsw i32 %19, %21
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 9
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  br label %128

28:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 8, %34
  %36 = call i32 @int_pow(i32 10, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @int_pow(i32 10, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = srem i32 %49, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @int_pow(i32 10, i32 %61)
  %63 = mul nsw i32 %60, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %128

65:                                               ; preds = %5
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %122

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @abs(i32 %69) #3
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 9
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 0, i32* %75, align 4
  br label %128

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @int_pow(i32 10, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = srem i32 %83, %84
  store i32 %85, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %110, %76
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 9, %88
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 8, %92
  %94 = call i32 @int_pow(i32 10, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 8, %98
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @int_pow(i32 10, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %11, align 4
  %109 = srem i32 %107, %108
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %86

113:                                              ; preds = %86
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 9, %115
  %117 = call i32 @int_pow(i32 10, i32 %116)
  %118 = mul nsw i32 %114, %117
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %127

122:                                              ; preds = %65
  %123 = load i32, i32* %8, align 4
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %113
  br label %128

128:                                              ; preds = %26, %73, %127, %55
  ret void
}

declare dso_local i32 @int_pow(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
