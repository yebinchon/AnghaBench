; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/ams/extr_ams-core.c_ams_sensor_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/ams/extr_ams-core.c_ams_sensor_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (...)*, %struct.TYPE_4__*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ams_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"accel-int-1\00", align 1
@ams_freefall_client = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"accel-int-2\00", align 1
@ams_shock_client = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ams\00", align 1
@dev_attr_current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ams_sensor_attach() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 3), align 8
  %5 = call i32* @of_get_property(i32 %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %71

11:                                               ; preds = %0
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 6), align 4
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 5), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 3), align 8
  %18 = call i32 @pmf_register_irq_client(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* @ams_freefall_client)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %71

24:                                               ; preds = %11
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 4), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 3), align 8
  %26 = call i32 @pmf_register_irq_client(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* @ams_shock_client)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %68

30:                                               ; preds = %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 3), align 8
  %32 = call %struct.TYPE_4__* @of_platform_device_create(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 2), align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 2), align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 2), align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @device_create_file(i32* %40, i32* @dev_attr_current)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %63

45:                                               ; preds = %38
  %46 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 1), align 8
  %47 = call i32 (...) %46()
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 0), align 8
  %53 = call i32 (...) @ams_input_init()
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* %1, align 4
  br label %71

59:                                               ; preds = %56
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 2), align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @device_remove_file(i32* %61, i32* @dev_attr_current)
  br label %63

63:                                               ; preds = %59, %44
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_info, i32 0, i32 2), align 8
  %65 = call i32 @of_device_unregister(%struct.TYPE_4__* %64)
  br label %66

66:                                               ; preds = %63, %35
  %67 = call i32 @pmf_unregister_irq_client(i32* @ams_shock_client)
  br label %68

68:                                               ; preds = %66, %29
  %69 = call i32 @pmf_unregister_irq_client(i32* @ams_freefall_client)
  %70 = load i32, i32* %2, align 4
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %68, %57, %21, %8
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @pmf_register_irq_client(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @of_platform_device_create(i32, i8*, i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @ams_input_init(...) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @of_device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @pmf_unregister_irq_client(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
