; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_read_object_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_read_object_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32*, i32*)* @mlx90632_read_object_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90632_read_object_raw(%struct.regmap* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mlx90632_channel_new_select(i32 %15, i32* %13, i32* %14)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @MLX90632_RAM_2(i32 %23)
  %25 = call i32 @regmap_read(%struct.regmap* %22, i32 %24, i32* %11)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %71

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @MLX90632_RAM_1(i32 %33)
  %35 = call i32 @regmap_read(%struct.regmap* %32, i32 %34, i32* %11)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %71

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.regmap*, %struct.regmap** %6, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @MLX90632_RAM_2(i32 %47)
  %49 = call i32 @regmap_read(%struct.regmap* %46, i32 %48, i32* %11)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.regmap*, %struct.regmap** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @MLX90632_RAM_1(i32 %57)
  %59 = call i32 @regmap_read(%struct.regmap* %56, i32 %58, i32* %11)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %71

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = sdiv i32 %67, 2
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %64, %62, %52, %38, %28, %19
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @mlx90632_channel_new_select(i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @MLX90632_RAM_2(i32) #1

declare dso_local i32 @MLX90632_RAM_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
