; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_m62332.c_m62332_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_m62332.c_m62332_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.m62332_data = type { i32*, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @m62332_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m62332_set_value(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.m62332_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.m62332_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.m62332_data* %13, %struct.m62332_data** %8, align 8
  %14 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %15 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %14, i32 0, i32 3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %19 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %33 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %39 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_enable(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %85

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = call i32 @i2c_master_send(%struct.i2c_client* %47, i32* %48, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %54, %46
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %85

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %69 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %66
  %77 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %78 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @regulator_disable(i32 %79)
  br label %81

81:                                               ; preds = %76, %66
  %82 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %83 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  store i32 0, i32* %4, align 4
  br label %90

85:                                               ; preds = %65, %44
  %86 = load %struct.m62332_data*, %struct.m62332_data** %8, align 8
  %87 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %81, %26
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.m62332_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
