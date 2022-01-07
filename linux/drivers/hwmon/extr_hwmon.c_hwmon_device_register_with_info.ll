; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_device_register_with_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_device_register_with_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hwmon_chip_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.attribute_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @hwmon_device_register_with_info(%struct.device* %0, i8* %1, i8* %2, %struct.hwmon_chip_info* %3, %struct.attribute_group** %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hwmon_chip_info*, align 8
  %11 = alloca %struct.attribute_group**, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.hwmon_chip_info* %3, %struct.hwmon_chip_info** %10, align 8
  store %struct.attribute_group** %4, %struct.attribute_group*** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.device* @ERR_PTR(i32 %16)
  store %struct.device* %17, %struct.device** %6, align 8
  br label %59

18:                                               ; preds = %5
  %19 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %20 = icmp ne %struct.hwmon_chip_info* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %23 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %28 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %35 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %26, %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.device* @ERR_PTR(i32 %40)
  store %struct.device* %41, %struct.device** %6, align 8
  br label %59

42:                                               ; preds = %33, %18
  %43 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %44 = icmp ne %struct.hwmon_chip_info* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = icmp ne %struct.device* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.device* @ERR_PTR(i32 %50)
  store %struct.device* %51, %struct.device** %6, align 8
  br label %59

52:                                               ; preds = %45, %42
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %57 = load %struct.attribute_group**, %struct.attribute_group*** %11, align 8
  %58 = call %struct.device* @__hwmon_device_register(%struct.device* %53, i8* %54, i8* %55, %struct.hwmon_chip_info* %56, %struct.attribute_group** %57)
  store %struct.device* %58, %struct.device** %6, align 8
  br label %59

59:                                               ; preds = %52, %48, %38, %14
  %60 = load %struct.device*, %struct.device** %6, align 8
  ret %struct.device* %60
}

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local %struct.device* @__hwmon_device_register(%struct.device*, i8*, i8*, %struct.hwmon_chip_info*, %struct.attribute_group**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
