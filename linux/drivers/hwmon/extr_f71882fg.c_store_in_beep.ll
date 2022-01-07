; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_in_beep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_in_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@f81866a = common dso_local global i64 0, align 8
@F81866_REG_IN_BEEP = common dso_local global i32 0, align 4
@F71882FG_REG_IN_BEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_in_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.f71882fg_data* %15, %struct.f71882fg_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %93

26:                                               ; preds = %4
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %31 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @f81866a, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %37 = load i32, i32* @F81866_REG_IN_BEEP, align 4
  %38 = call i8* @f71882fg_read8(%struct.f71882fg_data* %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %41 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %49

42:                                               ; preds = %26
  %43 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %44 = load i32, i32* @F71882FG_REG_IN_BEEP, align 4
  %45 = call i8* @f71882fg_read8(%struct.f71882fg_data* %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %48 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %56 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %67

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %64 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %59, %52
  %68 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %69 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @f81866a, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %75 = load i32, i32* @F81866_REG_IN_BEEP, align 4
  %76 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %77 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @f71882fg_write8(%struct.f71882fg_data* %74, i32 %75, i32 %78)
  br label %87

80:                                               ; preds = %67
  %81 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %82 = load i32, i32* @F71882FG_REG_IN_BEEP, align 4
  %83 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %84 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @f71882fg_write8(%struct.f71882fg_data* %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %89 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i64, i64* %9, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %24
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
