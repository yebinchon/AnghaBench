; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afe4403_data = type { i32 }

@AFE440X_CONTROL0 = common dso_local global i32 0, align 4
@AFE440X_CONTROL0_READ = common dso_local global i32 0, align 4
@AFE440X_CONTROL0_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afe4403_data*, i32, i32*)* @afe4403_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe4403_read(%struct.afe4403_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afe4403_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.afe4403_data* %0, %struct.afe4403_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* @AFE440X_CONTROL0, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* @AFE440X_CONTROL0_READ, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %18 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %21 = call i32 (i32, ...) @spi_write_then_read(i32 %19, i32* %20, i32 4, i8* null, i32 0)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %28 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %31 = call i32 (i32, ...) @spi_write_then_read(i32 %29, i32* %6, i32 1, i32* %30, i32 3)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %60

36:                                               ; preds = %26
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %43, %45
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @AFE440X_CONTROL0_WRITE, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %51 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %54 = call i32 (i32, ...) @spi_write_then_read(i32 %52, i32* %53, i32 4, i8* null, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %57, %34, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @spi_write_then_read(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
