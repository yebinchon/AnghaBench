; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4726_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4726_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mcp4725_data = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @mcp4726_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4726_set_cfg(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.mcp4725_data*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.mcp4725_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.mcp4725_data* %8, %struct.mcp4725_data** %4, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 64, i32* %9, align 4
  %10 = load %struct.mcp4725_data*, %struct.mcp4725_data** %4, align 8
  %11 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 3
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load %struct.mcp4725_data*, %struct.mcp4725_data** %4, align 8
  %18 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.mcp4725_data*, %struct.mcp4725_data** %4, align 8
  %23 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 1
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.mcp4725_data*, %struct.mcp4725_data** %4, align 8
  %31 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mcp4725_data*, %struct.mcp4725_data** %4, align 8
  %36 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mcp4725_data*, %struct.mcp4725_data** %4, align 8
  %42 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %45 = call i32 @i2c_master_send(i32 %43, i32* %44, i32 3)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %57

50:                                               ; preds = %29
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %48
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.mcp4725_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
