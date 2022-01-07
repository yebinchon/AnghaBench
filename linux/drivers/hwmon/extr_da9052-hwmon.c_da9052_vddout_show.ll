; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9052-hwmon.c_da9052_vddout_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9052-hwmon.c_da9052_vddout_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.da9052_hwmon = type { i32, i32 }

@DA9052_VDD_RES_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @da9052_vddout_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_vddout_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.da9052_hwmon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.da9052_hwmon* @dev_get_drvdata(%struct.device* %11)
  store %struct.da9052_hwmon* %12, %struct.da9052_hwmon** %8, align 8
  %13 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %14 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %17 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @da9052_enable_vddout_channel(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %25 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DA9052_VDD_RES_REG, align 4
  %28 = call i32 @da9052_reg_read(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %9, align 4
  br label %49

33:                                               ; preds = %23
  %34 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %35 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @da9052_disable_vddout_channel(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %54

41:                                               ; preds = %33
  %42 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %43 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @volt_reg_to_mv(i32 %46)
  %48 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %31
  %50 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %51 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @da9052_disable_vddout_channel(i32 %52)
  br label %54

54:                                               ; preds = %49, %40, %22
  %55 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %8, align 8
  %56 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %41
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.da9052_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @da9052_enable_vddout_channel(i32) #1

declare dso_local i32 @da9052_reg_read(i32, i32) #1

declare dso_local i32 @da9052_disable_vddout_channel(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @volt_reg_to_mv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
