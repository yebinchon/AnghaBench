; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_get_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_get_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { i64, i32 }

@KXTF9 = common dso_local global i64 0, align 8
@kxtf9_samp_freq_table = common dso_local global i32 0, align 4
@samp_freq_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32*, i32*)* @kxcjk1013_get_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_get_odr(%struct.kxcjk1013_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kxcjk1013_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %9 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KXTF9, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @kxtf9_samp_freq_table, align 4
  %15 = load i32, i32* @kxtf9_samp_freq_table, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %18 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @kxcjk1013_convert_odr_value(i32 %14, i32 %16, i32 %19, i32* %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* @samp_freq_table, align 4
  %25 = load i32, i32* @samp_freq_table, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %28 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @kxcjk1013_convert_odr_value(i32 %24, i32 %26, i32 %29, i32* %30, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @kxcjk1013_convert_odr_value(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
