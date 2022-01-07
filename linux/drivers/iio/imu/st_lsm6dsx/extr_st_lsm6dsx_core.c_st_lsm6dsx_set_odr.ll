; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { i32, %struct.st_lsm6dsx_hw* }
%struct.st_lsm6dsx_hw = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.st_lsm6dsx_reg }
%struct.st_lsm6dsx_reg = type { i32, i32 }

@ST_LSM6DSX_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i32)* @st_lsm6dsx_set_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_set_odr(%struct.st_lsm6dsx_sensor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %7 = alloca %struct.st_lsm6dsx_hw*, align 8
  %8 = alloca %struct.st_lsm6dsx_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  store %struct.st_lsm6dsx_sensor* %14, %struct.st_lsm6dsx_sensor** %6, align 8
  %15 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %16 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %15, i32 0, i32 1
  %17 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %16, align 8
  store %struct.st_lsm6dsx_hw* %17, %struct.st_lsm6dsx_hw** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %19 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %62 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
    i32 131, label %21
  ]

21:                                               ; preds = %2, %2, %2, %2
  %22 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %23 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 131
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.st_lsm6dsx_sensor* @iio_priv(i32 %26)
  store %struct.st_lsm6dsx_sensor* %27, %struct.st_lsm6dsx_sensor** %6, align 8
  store i32 131, i32* %13, align 4
  br label %28

28:                                               ; preds = %58, %21
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @ST_LSM6DSX_ID_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %34 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %44 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %32
  br label %58

48:                                               ; preds = %41
  %49 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @st_lsm6dsx_check_odr_dependency(%struct.st_lsm6dsx_hw* %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %101

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %28

61:                                               ; preds = %28
  br label %63

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor* %67, i32 %68, i32* %10)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %101

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %77 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %82 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store %struct.st_lsm6dsx_reg* %86, %struct.st_lsm6dsx_reg** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %8, align 8
  %89 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %93 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %8, align 8
  %94 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %8, align 8
  %97 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @st_lsm6dsx_update_bits_locked(%struct.st_lsm6dsx_hw* %92, i32 %95, i32 %98, i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %75, %72, %56
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(i32) #1

declare dso_local i32 @st_lsm6dsx_check_odr_dependency(%struct.st_lsm6dsx_hw*, i32, i32) #1

declare dso_local i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor*, i32, i32*) #1

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @st_lsm6dsx_update_bits_locked(%struct.st_lsm6dsx_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
