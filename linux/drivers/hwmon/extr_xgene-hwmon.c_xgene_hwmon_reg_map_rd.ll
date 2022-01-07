; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_reg_map_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_reg_map_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_hwmon_dev = type { i32 }

@SENSOR_RD_MSG = common dso_local global i32 0, align 4
@acpi_disabled = common dso_local global i64 0, align 8
@SENSOR_INVALID_DATA = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_hwmon_dev*, i32, i32*)* @xgene_hwmon_reg_map_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_hwmon_reg_map_rd(%struct.xgene_hwmon_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_hwmon_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.xgene_hwmon_dev* %0, %struct.xgene_hwmon_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @SENSOR_RD_MSG, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @SENSOR_RD_EN_ADDR(i32 %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* @acpi_disabled, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %21 = call i32 @xgene_hwmon_rd(%struct.xgene_hwmon_dev* %19, i32* %20)
  store i32 %21, i32* %9, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %25 = call i32 @xgene_hwmon_pcc_rd(%struct.xgene_hwmon_dev* %23, i32* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %26
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SENSOR_INVALID_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODATA, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %31
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %37, %29
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @SENSOR_RD_EN_ADDR(i32) #1

declare dso_local i32 @xgene_hwmon_rd(%struct.xgene_hwmon_dev*, i32*) #1

declare dso_local i32 @xgene_hwmon_pcc_rd(%struct.xgene_hwmon_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
