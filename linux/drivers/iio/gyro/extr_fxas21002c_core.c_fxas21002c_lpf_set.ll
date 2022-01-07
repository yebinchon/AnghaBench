; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_lpf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_lpf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@F_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*, i32)* @fxas21002c_lpf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_lpf_set(%struct.fxas21002c_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fxas21002c_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @fxas21002c_lpf_value_from_bw(%struct.fxas21002c_data* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %18 = call i32 @fxas21002c_odr_get(%struct.fxas21002c_data* %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 25
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %33, %30
  %40 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %41 = load i32, i32* @F_BW, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fxas21002c_write(%struct.fxas21002c_data* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %36, %21, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @fxas21002c_lpf_value_from_bw(%struct.fxas21002c_data*, i32) #1

declare dso_local i32 @fxas21002c_odr_get(%struct.fxas21002c_data*, i32*) #1

declare dso_local i32 @fxas21002c_write(%struct.fxas21002c_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
