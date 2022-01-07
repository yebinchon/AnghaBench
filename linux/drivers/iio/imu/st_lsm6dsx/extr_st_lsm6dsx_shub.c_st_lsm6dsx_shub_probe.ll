; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32* }
%struct.st_lsm6dsx_sensor = type { i32 }

@ST_LSM6DSX_ID_EXT0 = common dso_local global i32 0, align 4
@st_lsm6dsx_ext_dev_table = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ST_LSM6DSX_MAX_SLV_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_shub_probe(%struct.st_lsm6dsx_hw* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @ST_LSM6DSX_ID_EXT0, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %87, %2
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** @st_lsm6dsx_ext_dev_table, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %13
  %19 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %4, align 8
  %20 = load i32*, i32** @st_lsm6dsx_ext_dev_table, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @st_lsm6dsx_shub_check_wai(%struct.st_lsm6dsx_hw* %19, i32* %11, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %87

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** @st_lsm6dsx_ext_dev_table, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @st_lsm6dsx_shub_alloc_iiodev(%struct.st_lsm6dsx_hw* %37, i32 %38, i32* %42, i32 %43, i8* %44)
  %46 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %4, align 8
  %47 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %4, align 8
  %53 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %36
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %36
  %64 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %4, align 8
  %65 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.st_lsm6dsx_sensor* @iio_priv(i32 %70)
  store %struct.st_lsm6dsx_sensor* %71, %struct.st_lsm6dsx_sensor** %7, align 8
  %72 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %7, align 8
  %73 = call i32 @st_lsm6dsx_shub_init_device(%struct.st_lsm6dsx_sensor* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %91

78:                                               ; preds = %63
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @ST_LSM6DSX_MAX_SLV_NUM, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %90

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %29
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %13

90:                                               ; preds = %83, %13
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %76, %60, %33
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @st_lsm6dsx_shub_check_wai(%struct.st_lsm6dsx_hw*, i32*, i32*) #1

declare dso_local i32 @st_lsm6dsx_shub_alloc_iiodev(%struct.st_lsm6dsx_hw*, i32, i32*, i32, i8*) #1

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(i32) #1

declare dso_local i32 @st_lsm6dsx_shub_init_device(%struct.st_lsm6dsx_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
