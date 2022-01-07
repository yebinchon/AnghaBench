; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { i32 }

@REG_SAMPLE_TIME = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, i32*, i32*)* @isl29501_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_get_freq(%struct.isl29501_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29501_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %13 = load i32, i32* @REG_SAMPLE_TIME, align 4
  %14 = call i32 @isl29501_register_read(%struct.isl29501_private* %12, i32 %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  store i64 1000000000000, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = mul nsw i32 450, %22
  %24 = call i32 @do_div(i64 %20, i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @do_div(i64 %25, i32 1000000)
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %10, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %19, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @isl29501_register_read(%struct.isl29501_private*, i32, i32*) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
