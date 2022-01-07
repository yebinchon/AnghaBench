; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32* }

@F_ACTIVE = common dso_local global i64 0, align 8
@FXAS21002C_MODE_ACTIVE = common dso_local global i32 0, align 4
@F_READY = common dso_local global i64 0, align 8
@FXAS21002C_MODE_READY = common dso_local global i32 0, align 4
@FXAS21002C_MODE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*)* @fxas21002c_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_mode_get(%struct.fxas21002c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxas21002c_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %3, align 8
  %7 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %8 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @F_ACTIVE, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_field_read(i32 %12, i32* %4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @FXAS21002C_MODE_ACTIVE, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %25 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @F_READY, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_field_read(i32 %29, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @FXAS21002C_MODE_READY, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @FXAS21002C_MODE_STANDBY, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %33, %21, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
