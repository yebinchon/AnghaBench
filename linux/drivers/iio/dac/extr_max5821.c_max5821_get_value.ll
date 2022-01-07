; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max5821_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@max5821_read_dac_command = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*, i32)* @max5821_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5821_get_value(%struct.iio_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.max5821_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.max5821_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.max5821_data* %14, %struct.max5821_data** %8, align 8
  %15 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %16 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %15, i32 0, i32 1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %20, %3
  %27 = load i32*, i32** @max5821_read_dac_command, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %34 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %38 = call i32 @i2c_master_send(%struct.i2c_client* %36, i32* %37, i32 1)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %43 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %91

46:                                               ; preds = %26
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %51 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %91

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %59 = call i32 @i2c_master_recv(%struct.i2c_client* %57, i32* %58, i32 2)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %64 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %91

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %72 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %91

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %79 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 15
  %84 = shl i32 %83, 6
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 2
  %88 = or i32 %84, %87
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %77, %70, %62, %49, %41, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.max5821_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
