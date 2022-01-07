; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_iir_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_iir_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@mlx90614_iir_values = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLX90614_CONFIG = common dso_local global i32 0, align 4
@MLX90614_CONFIG_FIR_MASK = common dso_local global i32 0, align 4
@MLX90614_CONST_FIR = common dso_local global i32 0, align 4
@MLX90614_CONFIG_FIR_SHIFT = common dso_local global i32 0, align 4
@MLX90614_CONFIG_IIR_MASK = common dso_local global i32 0, align 4
@MLX90614_CONFIG_IIR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @mlx90614_iir_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90614_iir_search(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** @mlx90614_iir_values, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** @mlx90614_iir_values, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** @mlx90614_iir_values, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %26
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @MLX90614_CONFIG, align 4
  %37 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %34
  %43 = load i32, i32* @MLX90614_CONFIG_FIR_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @MLX90614_CONST_FIR, align 4
  %48 = load i32, i32* @MLX90614_CONFIG_FIR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @MLX90614_CONFIG_IIR_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MLX90614_CONFIG_IIR_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load i32, i32* @MLX90614_CONFIG, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mlx90614_write_word(%struct.i2c_client* %61, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %42, %40, %31
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mlx90614_write_word(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
