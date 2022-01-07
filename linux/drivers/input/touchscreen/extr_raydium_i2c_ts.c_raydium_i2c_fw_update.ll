; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raydium_data = type { i8*, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.firmware = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"raydium_%#04x.fw\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"firmware name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to open firmware %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@RAYDIUM_TS_BLDR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"failed to initialize device after firmware update: %d\0A\00", align 1
@RAYDIUM_TS_MAIN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raydium_data*)* @raydium_i2c_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_fw_update(%struct.raydium_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raydium_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.raydium_data* %0, %struct.raydium_data** %3, align 8
  %8 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %9 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %8, i32 0, i32 2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %13 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = call i8* @kasprintf(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %86

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = call i32 @request_firmware(%struct.firmware** %5, i8* %28, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %82

39:                                               ; preds = %23
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @disable_irq(i32 %42)
  %44 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %45 = load %struct.firmware*, %struct.firmware** %5, align 8
  %46 = call i32 @raydium_i2c_do_update_firmware(%struct.raydium_data* %44, %struct.firmware* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** @RAYDIUM_TS_BLDR, align 8
  %55 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %56 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %74

57:                                               ; preds = %39
  %58 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %59 = call i32 @raydium_i2c_initialize(%struct.raydium_data* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** @RAYDIUM_TS_BLDR, align 8
  %68 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %69 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %74

70:                                               ; preds = %57
  %71 = load i8*, i8** @RAYDIUM_TS_MAIN, align 8
  %72 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %73 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %62, %49
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @enable_irq(i32 %77)
  %79 = call i32 @msleep(i32 100)
  %80 = load %struct.firmware*, %struct.firmware** %5, align 8
  %81 = call i32 @release_firmware(%struct.firmware* %80)
  br label %82

82:                                               ; preds = %74, %34
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %20
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @raydium_i2c_do_update_firmware(%struct.raydium_data*, %struct.firmware*) #1

declare dso_local i32 @raydium_i2c_initialize(%struct.raydium_data*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
