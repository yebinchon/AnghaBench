; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_set_als_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_set_als_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vl6180_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@vl6180_als_gain_tab = common dso_local global i32* null, align 8
@VL6180_ALS_GAIN = common dso_local global i32 0, align 4
@vl6180_als_gain_tab_bits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vl6180_data*, i32, i32)* @vl6180_set_als_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_set_als_gain(%struct.vl6180_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vl6180_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vl6180_data* %0, %struct.vl6180_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 40
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 1000000
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 40000
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** @vl6180_als_gain_tab, align 8
  %36 = load i32*, i32** @vl6180_als_gain_tab, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = call i32 @find_closest(i32 %34, i32* %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %40 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %43 = call i32 @vl6180_hold(%struct.vl6180_data* %42, i32 1)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %69

47:                                               ; preds = %33
  %48 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %49 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VL6180_ALS_GAIN, align 4
  %52 = load i32*, i32** @vl6180_als_gain_tab_bits, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vl6180_write_byte(i32 %50, i32 %51, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %47
  %61 = load i32*, i32** @vl6180_als_gain_tab, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %67 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %47
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %71 = call i32 @vl6180_hold(%struct.vl6180_data* %70, i32 0)
  %72 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %73 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %69, %30, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @find_closest(i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vl6180_hold(%struct.vl6180_data*, i32) #1

declare dso_local i32 @vl6180_write_byte(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
