; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_remove_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_remove_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.aem_data = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }

@AEM_NUM_SENSORS = common dso_local global i32 0, align 4
@sensor_dev_attr_name = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sensor_dev_attr_version = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aem_data*)* @aem_remove_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aem_remove_sensors(%struct.aem_data* %0) #0 {
  %2 = alloca %struct.aem_data*, align 8
  %3 = alloca i32, align 4
  store %struct.aem_data* %0, %struct.aem_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AEM_NUM_SENSORS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %10 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  br label %34

21:                                               ; preds = %8
  %22 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %23 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %27 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call i32 @device_remove_file(i32* %25, %struct.TYPE_12__* %32)
  br label %34

34:                                               ; preds = %21, %20
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %4

37:                                               ; preds = %4
  %38 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %39 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @device_remove_file(i32* %41, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_name, i32 0, i32 0))
  %43 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %44 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @device_remove_file(i32* %46, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sensor_dev_attr_version, i32 0, i32 0))
  ret void
}

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
