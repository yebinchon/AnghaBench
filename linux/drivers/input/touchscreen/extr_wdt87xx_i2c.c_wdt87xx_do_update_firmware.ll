; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_do_update_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_do_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.firmware = type { i32 }
%struct.wdt87xx_data = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"firmware load failed (type: %d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"soft reset failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to refresh system parameters: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.firmware*, i32)* @wdt87xx_do_update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_do_update_firmware(%struct.i2c_client* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wdt87xx_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.wdt87xx_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.wdt87xx_data* %11, %struct.wdt87xx_data** %8, align 8
  %12 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %8, align 8
  %13 = load %struct.firmware*, %struct.firmware** %6, align 8
  %14 = call i32 @wdt87xx_validate_firmware(%struct.wdt87xx_data* %12, %struct.firmware* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %8, align 8
  %21 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock_interruptible(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %19
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @disable_irq(i32 %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @wdt87xx_load_chunk(%struct.i2c_client* %32, %struct.firmware* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %67

44:                                               ; preds = %27
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = call i32 @wdt87xx_sw_reset(%struct.i2c_client* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %67

54:                                               ; preds = %44
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %8, align 8
  %57 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %56, i32 0, i32 1
  %58 = call i32 @wdt87xx_get_sysparam(%struct.i2c_client* %55, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 1
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %49, %38
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @enable_irq(i32 %70)
  %72 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %8, align 8
  %73 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  br label %80

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %25, %17
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.wdt87xx_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @wdt87xx_validate_firmware(%struct.wdt87xx_data*, %struct.firmware*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @wdt87xx_load_chunk(%struct.i2c_client*, %struct.firmware*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @wdt87xx_sw_reset(%struct.i2c_client*) #1

declare dso_local i32 @wdt87xx_get_sysparam(%struct.i2c_client*, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
