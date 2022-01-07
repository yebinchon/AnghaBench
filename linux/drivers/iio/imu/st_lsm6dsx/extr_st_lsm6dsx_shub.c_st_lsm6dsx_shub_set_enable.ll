; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.st_lsm6dsx_ext_dev_settings* }
%struct.st_lsm6dsx_ext_dev_settings = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_shub_set_enable(%struct.st_lsm6dsx_sensor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_ext_dev_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @st_lsm6dsx_shub_config_channels(%struct.st_lsm6dsx_sensor* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %19, align 8
  store %struct.st_lsm6dsx_ext_dev_settings* %20, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %25 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %26 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @st_lsm6dsx_shub_set_odr(%struct.st_lsm6dsx_sensor* %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %23
  br label %52

34:                                               ; preds = %16
  %35 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %36 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %37 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %42 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @st_lsm6dsx_shub_write_with_mask(%struct.st_lsm6dsx_sensor* %35, i64 %40, i32 %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %96

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %54 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %64 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %69 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %66, %62 ], [ %71, %67 ]
  store i32 %73, i32* %8, align 4
  %74 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %75 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %76 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %81 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @st_lsm6dsx_shub_write_with_mask(%struct.st_lsm6dsx_sensor* %74, i64 %79, i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %96

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %89, %49, %31, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @st_lsm6dsx_shub_config_channels(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_set_odr(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_write_with_mask(%struct.st_lsm6dsx_sensor*, i64, i32, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
