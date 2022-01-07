; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_match_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_match_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_sensor_settings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.st_sensor_odr_avl = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ST_SENSORS_ODR_LIST_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_sensor_settings*, i32, %struct.st_sensor_odr_avl*)* @st_sensors_match_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_sensors_match_odr(%struct.st_sensor_settings* %0, i32 %1, %struct.st_sensor_odr_avl* %2) #0 {
  %4 = alloca %struct.st_sensor_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_sensor_odr_avl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_sensor_settings* %0, %struct.st_sensor_settings** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.st_sensor_odr_avl* %2, %struct.st_sensor_odr_avl** %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %63, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ST_SENSORS_ODR_LIST_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %17 = getelementptr inbounds %struct.st_sensor_settings, %struct.st_sensor_settings* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %67

27:                                               ; preds = %15
  %28 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %29 = getelementptr inbounds %struct.st_sensor_settings, %struct.st_sensor_settings* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %27
  %40 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %41 = getelementptr inbounds %struct.st_sensor_settings, %struct.st_sensor_settings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.st_sensor_odr_avl*, %struct.st_sensor_odr_avl** %6, align 8
  %50 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %4, align 8
  %52 = getelementptr inbounds %struct.st_sensor_settings, %struct.st_sensor_settings* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.st_sensor_odr_avl*, %struct.st_sensor_odr_avl** %6, align 8
  %61 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %8, align 4
  br label %66

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %11

66:                                               ; preds = %39, %11
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
