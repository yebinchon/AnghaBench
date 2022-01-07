; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_ambient_dsp105.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_ambient_dsp105.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx90632_data = type { i32 }

@MLX90632_EE_P_R = common dso_local global i32 0, align 4
@MLX90632_EE_P_G = common dso_local global i32 0, align 4
@MLX90632_EE_P_T = common dso_local global i32 0, align 4
@MLX90632_EE_P_O = common dso_local global i32 0, align 4
@MLX90632_EE_Gb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx90632_data*, i32*)* @mlx90632_calc_ambient_dsp105 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90632_calc_ambient_dsp105(%struct.mlx90632_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx90632_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mlx90632_data* %0, %struct.mlx90632_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %16 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MLX90632_EE_P_R, align 4
  %19 = call i64 @mlx90632_read_ee_register(i32 %17, i32 %18, i64* %9)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %27 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLX90632_EE_P_G, align 4
  %30 = call i64 @mlx90632_read_ee_register(i32 %28, i32 %29, i64* %10)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %93

36:                                               ; preds = %25
  %37 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %38 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MLX90632_EE_P_T, align 4
  %41 = call i64 @mlx90632_read_ee_register(i32 %39, i32 %40, i64* %8)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %93

47:                                               ; preds = %36
  %48 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %49 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MLX90632_EE_P_O, align 4
  %52 = call i64 @mlx90632_read_ee_register(i32 %50, i32 %51, i64* %11)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %93

58:                                               ; preds = %47
  %59 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %60 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MLX90632_EE_Gb, align 4
  %63 = call i64 @regmap_read(i32 %61, i32 %62, i32* %7)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %93

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %12, align 8
  %72 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %73 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @mlx90632_read_ambient_raw(i32 %74, i64* %13, i64* %14)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i64, i64* %6, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %69
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @mlx90632_calc_temp_ambient(i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i64, i64* %6, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %81, %78, %66, %55, %44, %33, %22
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @mlx90632_read_ee_register(i32, i32, i64*) #1

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @mlx90632_read_ambient_raw(i32, i64*, i64*) #1

declare dso_local i32 @mlx90632_calc_temp_ambient(i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
