; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc87427_data = type { i32, i32, i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pc87427_data* (%struct.device*)* @pc87427_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pc87427_data* @pc87427_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pc87427_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pc87427_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.pc87427_data* %6, %struct.pc87427_data** %3, align 8
  %7 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %8 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %12 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @time_after(i64 %10, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %20 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %88

24:                                               ; preds = %18, %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %30 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pc87427_readall_fan(%struct.pc87427_data* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %25

44:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %50 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pc87427_readall_pwm(%struct.pc87427_data* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %45

64:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 6
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %70 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %81

77:                                               ; preds = %68
  %78 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @pc87427_readall_temp(%struct.pc87427_data* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i64, i64* @jiffies, align 8
  %86 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %87 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %23
  %89 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %90 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %89, i32 0, i32 3
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  ret %struct.pc87427_data* %92
}

declare dso_local %struct.pc87427_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @pc87427_readall_fan(%struct.pc87427_data*, i32) #1

declare dso_local i32 @pc87427_readall_pwm(%struct.pc87427_data*, i32) #1

declare dso_local i32 @pc87427_readall_temp(%struct.pc87427_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
