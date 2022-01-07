; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_get_sensor_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_get_sensor_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@legacy_compatibles = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"ibm,opal-sensor\00", align 1
@MAX_SENSOR_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"sensor-type\00", align 1
@sensor_groups = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @get_sensor_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sensor_type(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** @legacy_compatibles, align 8
  %9 = call i32 @ARRAY_SIZE(i8** %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = load i8**, i8*** @legacy_compatibles, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @of_device_is_compatible(%struct.device_node* %12, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = call i64 @of_device_is_compatible(%struct.device_node* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @MAX_SENSOR_TYPE, align 4
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %26
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  %34 = call i64 @of_property_read_string(%struct.device_node* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MAX_SENSOR_TYPE, align 4
  store i32 %37, i32* %2, align 4
  br label %61

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MAX_SENSOR_TYPE, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_groups, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcmp(i8* %44, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load i32, i32* @MAX_SENSOR_TYPE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %53, %36, %30, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
