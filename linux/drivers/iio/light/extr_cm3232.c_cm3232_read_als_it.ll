; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_read_als_it.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_read_als_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cm3232_chip = type { i32 }

@CM3232_CMD_ALS_IT_MASK = common dso_local global i32 0, align 4
@CM3232_CMD_ALS_IT_SHIFT = common dso_local global i32 0, align 4
@cm3232_als_it_scales = common dso_local global %struct.TYPE_3__* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm3232_chip*, i32*, i32*)* @cm3232_read_als_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3232_read_als_it(%struct.cm3232_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm3232_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cm3232_chip* %0, %struct.cm3232_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.cm3232_chip*, %struct.cm3232_chip** %5, align 8
  %11 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @CM3232_CMD_ALS_IT_MASK, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @CM3232_CMD_ALS_IT_SHIFT, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, %16
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %50, %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %33
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
