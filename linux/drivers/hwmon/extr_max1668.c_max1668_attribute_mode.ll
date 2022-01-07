; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_attribute_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_attribute_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.attribute }
%struct.TYPE_27__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.attribute }
%struct.TYPE_25__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.attribute }
%struct.TYPE_23__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.attribute }
%struct.TYPE_30__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.attribute }
%struct.TYPE_28__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.attribute }
%struct.TYPE_26__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.attribute }
%struct.TYPE_24__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.attribute }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.attribute }
%struct.kobject = type { i32 }

@S_IRUGO = common dso_local global i32 0, align 4
@read_only = common dso_local global i64 0, align 8
@sensor_dev_attr_temp1_max = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@sensor_dev_attr_temp2_max = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@sensor_dev_attr_temp3_max = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@sensor_dev_attr_temp4_max = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@sensor_dev_attr_temp5_max = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@sensor_dev_attr_temp1_min = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@sensor_dev_attr_temp2_min = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@sensor_dev_attr_temp3_min = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@sensor_dev_attr_temp4_min = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@sensor_dev_attr_temp5_min = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @max1668_attribute_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1668_attribute_mode(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @S_IRUGO, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i64, i64* @read_only, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.attribute*, %struct.attribute** %6, align 8
  %16 = icmp eq %struct.attribute* %15, getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @sensor_dev_attr_temp1_max, i32 0, i32 0, i32 0)
  br i1 %16, label %44, label %17

17:                                               ; preds = %14
  %18 = load %struct.attribute*, %struct.attribute** %6, align 8
  %19 = icmp eq %struct.attribute* %18, getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @sensor_dev_attr_temp2_max, i32 0, i32 0, i32 0)
  br i1 %19, label %44, label %20

20:                                               ; preds = %17
  %21 = load %struct.attribute*, %struct.attribute** %6, align 8
  %22 = icmp eq %struct.attribute* %21, getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sensor_dev_attr_temp3_max, i32 0, i32 0, i32 0)
  br i1 %22, label %44, label %23

23:                                               ; preds = %20
  %24 = load %struct.attribute*, %struct.attribute** %6, align 8
  %25 = icmp eq %struct.attribute* %24, getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @sensor_dev_attr_temp4_max, i32 0, i32 0, i32 0)
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load %struct.attribute*, %struct.attribute** %6, align 8
  %28 = icmp eq %struct.attribute* %27, getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sensor_dev_attr_temp5_max, i32 0, i32 0, i32 0)
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load %struct.attribute*, %struct.attribute** %6, align 8
  %31 = icmp eq %struct.attribute* %30, getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @sensor_dev_attr_temp1_min, i32 0, i32 0, i32 0)
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load %struct.attribute*, %struct.attribute** %6, align 8
  %34 = icmp eq %struct.attribute* %33, getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @sensor_dev_attr_temp2_min, i32 0, i32 0, i32 0)
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load %struct.attribute*, %struct.attribute** %6, align 8
  %37 = icmp eq %struct.attribute* %36, getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @sensor_dev_attr_temp3_min, i32 0, i32 0, i32 0)
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.attribute*, %struct.attribute** %6, align 8
  %40 = icmp eq %struct.attribute* %39, getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sensor_dev_attr_temp4_min, i32 0, i32 0, i32 0)
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.attribute*, %struct.attribute** %6, align 8
  %43 = icmp eq %struct.attribute* %42, getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @sensor_dev_attr_temp5_min, i32 0, i32 0, i32 0)
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %17, %14
  %45 = load i32, i32* @S_IWUSR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
