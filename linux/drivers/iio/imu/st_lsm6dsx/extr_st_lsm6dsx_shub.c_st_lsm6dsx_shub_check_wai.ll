; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_check_wai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_check_wai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.st_lsm6dsx_shub_settings }
%struct.st_lsm6dsx_shub_settings = type { i32, i32 }
%struct.st_lsm6dsx_ext_dev_settings = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.st_lsm6dsx_sensor = type { i32 }

@ST_LSM6DSX_ID_ACC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*, i32*, %struct.st_lsm6dsx_ext_dev_settings*)* @st_lsm6dsx_shub_check_wai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_shub_check_wai(%struct.st_lsm6dsx_hw* %0, i32* %1, %struct.st_lsm6dsx_ext_dev_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_lsm6dsx_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.st_lsm6dsx_ext_dev_settings*, align 8
  %8 = alloca %struct.st_lsm6dsx_shub_settings*, align 8
  %9 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.st_lsm6dsx_ext_dev_settings* %2, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %17 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.st_lsm6dsx_shub_settings* %19, %struct.st_lsm6dsx_shub_settings** %8, align 8
  %20 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %8, align 8
  %21 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ST_LSM6DSX_SLV_ADDR(i32 0, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %25 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ST_LSM6DSX_ID_ACC, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.st_lsm6dsx_sensor* @iio_priv(i32 %29)
  store %struct.st_lsm6dsx_sensor* %30, %struct.st_lsm6dsx_sensor** %9, align 8
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %111, %3
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  %34 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %114

38:                                               ; preds = %31
  %39 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  %40 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %111

48:                                               ; preds = %38
  %49 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  %50 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  %57 = or i32 %56, 1
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  %60 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 1, i32* %64, align 4
  %65 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %68 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %65, i32 %66, i32* %67, i32 12)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %48
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %4, align 4
  br label %134

73:                                               ; preds = %48
  %74 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %9, align 8
  %75 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %74, i32 1)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %4, align 4
  br label %134

80:                                               ; preds = %73
  %81 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %82 = call i32 @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw* %81)
  %83 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %84 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %8, align 8
  %85 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @st_lsm6dsx_shub_read_reg(%struct.st_lsm6dsx_hw* %83, i32 %86, i32* %11, i32 4)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %9, align 8
  %89 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %88, i32 0)
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %4, align 4
  br label %134

94:                                               ; preds = %80
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  %97 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %111

102:                                              ; preds = %94
  %103 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %7, align 8
  %104 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  store i32 1, i32* %13, align 4
  br label %114

111:                                              ; preds = %101, %47
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %31

114:                                              ; preds = %102, %31
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %116 = call i32 @memset(i32* %115, i32 0, i32 12)
  %117 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %120 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %117, i32 %118, i32* %119, i32 12)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %4, align 4
  br label %134

125:                                              ; preds = %114
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  br label %132

132:                                              ; preds = %129, %128
  %133 = phi i32 [ 0, %128 ], [ %131, %129 ]
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %123, %92, %78, %71
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @ST_LSM6DSX_SLV_ADDR(i32, i32) #1

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_shub_read_reg(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
