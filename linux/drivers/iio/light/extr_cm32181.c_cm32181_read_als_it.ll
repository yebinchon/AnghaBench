; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_read_als_it.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_read_als_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm32181_chip = type { i32* }

@CM32181_REG_ADDR_CMD = common dso_local global i64 0, align 8
@CM32181_CMD_ALS_IT_MASK = common dso_local global i32 0, align 4
@CM32181_CMD_ALS_IT_SHIFT = common dso_local global i32 0, align 4
@als_it_bits = common dso_local global i32* null, align 8
@als_it_value = common dso_local global i32* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm32181_chip*, i32*)* @cm32181_read_als_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm32181_read_als_it(%struct.cm32181_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm32181_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cm32181_chip* %0, %struct.cm32181_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.cm32181_chip*, %struct.cm32181_chip** %4, align 8
  %9 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @CM32181_REG_ADDR_CMD, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @CM32181_CMD_ALS_IT_MASK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @CM32181_CMD_ALS_IT_SHIFT, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, %17
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %42, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** @als_it_bits, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @als_it_bits, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32*, i32** @als_it_value, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
