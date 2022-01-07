; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_dbi_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_dbi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi = type { i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@ILI9225_WRITE_DATA_TO_GRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dbi*, i64*, i64*, i64)* @ili9225_dbi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9225_dbi_command(%struct.mipi_dbi* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mipi_dbi*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mipi_dbi* %0, %struct.mipi_dbi** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %15 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %14, i32 0, i32 2
  %16 = load %struct.spi_device*, %struct.spi_device** %15, align 8
  store %struct.spi_device* %16, %struct.spi_device** %10, align 8
  store i32 8, i32* %11, align 4
  %17 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %18 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @gpiod_set_value_cansleep(i32 %19, i32 0)
  %21 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %22 = call i32 @mipi_dbi_spi_cmd_max_speed(%struct.spi_device* %21, i64 1)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i64*, i64** %7, align 8
  %26 = call i32 @mipi_dbi_spi_transfer(%struct.spi_device* %23, i32 %24, i32 8, i64* %25, i64 1)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %59

34:                                               ; preds = %29
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ILI9225_WRITE_DATA_TO_GRAM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %41 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 16, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %39, %34
  %46 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %47 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gpiod_set_value_cansleep(i32 %48, i32 1)
  %50 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @mipi_dbi_spi_cmd_max_speed(%struct.spi_device* %50, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @mipi_dbi_spi_transfer(%struct.spi_device* %53, i32 %54, i32 %55, i64* %56, i64 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %45, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @mipi_dbi_spi_cmd_max_speed(%struct.spi_device*, i64) #1

declare dso_local i32 @mipi_dbi_spi_transfer(%struct.spi_device*, i32, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
