; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_show_color_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_show_color_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.blinkm_data = type { i32, i32, i32 }

@BLM_GET_CUR_RGB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%02X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @show_color_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_color_common(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.blinkm_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %14 = call %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.blinkm_data* %14, %struct.blinkm_data** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %16 = load i32, i32* @BLM_GET_CUR_RGB, align 4
  %17 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %45 [
    i32 128, label %24
    i32 129, label %31
    i32 130, label %38
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %28 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @scnprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %35 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scnprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %22
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %42 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @scnprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %22
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %38, %31, %24, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @blinkm_transfer_hw(%struct.i2c_client*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
