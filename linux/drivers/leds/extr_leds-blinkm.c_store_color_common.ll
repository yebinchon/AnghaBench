; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_store_color_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_store_color_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.blinkm_data = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"BlinkM: value too large!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"next_red = %d, next_green = %d, next_blue = %d\0A\00", align 1
@BLM_GO_RGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"BlinkM: can't set RGB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @store_color_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_color_common(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.blinkm_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = call %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.blinkm_data* %15, %struct.blinkm_data** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kstrtou8(i8* %16, i32 10, i8** %11)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %38 [
    i32 128, label %26
    i32 129, label %30
    i32 130, label %34
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %29 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %41

30:                                               ; preds = %24
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %33 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %41

34:                                               ; preds = %24
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %37 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %63

41:                                               ; preds = %34, %30, %26
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %44 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %47 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %50 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %48, i8* %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %54 = load i32, i32* @BLM_GO_RGB, align 4
  %55 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %58, %38, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i8**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @blinkm_transfer_hw(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
