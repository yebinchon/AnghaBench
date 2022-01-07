; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_get_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_get_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm3100_data = type { i32, i32 }

@RM3100_REG_TMRC = common dso_local global i32 0, align 4
@rm3100_samp_rates = common dso_local global i32** null, align 8
@RM3100_TMRC_OFFSET = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rm3100_data*, i32*, i32*)* @rm3100_get_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm3100_get_samp_freq(%struct.rm3100_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rm3100_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rm3100_data* %0, %struct.rm3100_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %11 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %14 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RM3100_REG_TMRC, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %19 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %3
  %26 = load i32**, i32*** @rm3100_samp_rates, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RM3100_TMRC_OFFSET, align 4
  %29 = sub i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32**, i32*** @rm3100_samp_rates, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RM3100_TMRC_OFFSET, align 4
  %39 = sub i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %36, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %25, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
