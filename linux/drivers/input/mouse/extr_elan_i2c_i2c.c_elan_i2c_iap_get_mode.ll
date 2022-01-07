; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_iap_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_iap_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ETP_I2C_IAP_CTRL_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to read iap control register: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"iap control reg: 0x%04x.\0A\00", align 1
@ETP_I2C_MAIN_MODE_ON = common dso_local global i32 0, align 4
@MAIN_MODE = common dso_local global i32 0, align 4
@IAP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*)* @elan_i2c_iap_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_iap_get_mode(%struct.i2c_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @ETP_I2C_IAP_CTRL_CMD, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %12 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %9, i32 %10, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %23 = call i32 @le16_to_cpup(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ETP_I2C_MAIN_MODE_ON, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @MAIN_MODE, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @IAP_MODE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @elan_i2c_read_cmd(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
