; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_assign_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_assign_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"missing clock-frequency property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@std_cfg_table = common dso_local global i32* null, align 8
@BCM_SPD_100K = common dso_local global i64 0, align 8
@BCM_SPD_400K = common dso_local global i64 0, align 8
@BCM_SPD_1MHZ = common dso_local global i64 0, align 8
@hs_cfg_table = common dso_local global i32* null, align 8
@BCM_SPD_3P4MHZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%d hz bus speed not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Valid speeds are 100khz, 400khz, 1mhz, and 3.4mhz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*)* @bcm_kona_i2c_assign_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_assign_bus_speed(%struct.bcm_kona_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %3, align 8
  %6 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_property_read_u32(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @dev_err(%struct.TYPE_2__* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %52 [
    i32 100000, label %23
    i32 400000, label %29
    i32 1000000, label %35
    i32 3400000, label %41
  ]

23:                                               ; preds = %21
  %24 = load i32*, i32** @std_cfg_table, align 8
  %25 = load i64, i64* @BCM_SPD_100K, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  br label %58

29:                                               ; preds = %21
  %30 = load i32*, i32** @std_cfg_table, align 8
  %31 = load i64, i64* @BCM_SPD_400K, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  br label %58

35:                                               ; preds = %21
  %36 = load i32*, i32** @std_cfg_table, align 8
  %37 = load i64, i64* @BCM_SPD_1MHZ, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %40 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  br label %58

41:                                               ; preds = %21
  %42 = load i32*, i32** @std_cfg_table, align 8
  %43 = load i64, i64* @BCM_SPD_100K, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %46 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** @hs_cfg_table, align 8
  %48 = load i64, i64* @BCM_SPD_3P4MHZ, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %3, align 8
  %51 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  br label %58

52:                                               ; preds = %21
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %41, %35, %29, %23
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %52, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
