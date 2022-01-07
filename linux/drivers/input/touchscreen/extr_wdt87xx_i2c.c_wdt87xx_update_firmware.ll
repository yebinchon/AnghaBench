; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_update_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"unable to retrieve firmware %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @wdt87xx_update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_update_firmware(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @request_firmware(%struct.firmware** %9, i8* %13, %struct.device* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = load %struct.firmware*, %struct.firmware** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @wdt87xx_do_update_firmware(%struct.i2c_client* %26, %struct.firmware* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.firmware*, %struct.firmware** %9, align 8
  %31 = call i32 @release_firmware(%struct.firmware* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @wdt87xx_do_update_firmware(%struct.i2c_client*, %struct.firmware*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
