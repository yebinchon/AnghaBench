; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@SMB_CNT = common dso_local global i32 0, align 4
@SMB_PROBE = common dso_local global i32 0, align 4
@SMB_HOSTBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SMBus busy (%02x). Resetting...\0A\00", align 1
@SMBHOST_CNT = common dso_local global i32 0, align 4
@SMB_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Failed! (%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Successful!\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"saved clock 0x%02x\0A\00", align 1
@high_clock = common dso_local global i64 0, align 8
@SMBCLK_SEL = common dso_local global i32 0, align 4
@MSTO_EN = common dso_local global i32 0, align 4
@SMB_STS = common dso_local global i32 0, align 4
@SMB_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32*)* @sis630_transaction_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis630_transaction_start(%struct.i2c_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @SMB_CNT, align 4
  %10 = call i32 @sis630_read(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SMB_PROBE, align 4
  %13 = load i32, i32* @SMB_HOSTBUSY, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @SMBHOST_CNT, align 4
  %23 = load i32, i32* @SMB_KILL, align 4
  %24 = call i32 @sis630_write(i32 %22, i32 %23)
  %25 = load i32, i32* @SMB_CNT, align 4
  %26 = call i32 @sis630_read(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SMB_PROBE, align 4
  %29 = load i32, i32* @SMB_HOSTBUSY, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %81

40:                                               ; preds = %17
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* @SMB_CNT, align 4
  %47 = call i32 @sis630_read(i32 %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* @high_clock, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @SMB_CNT, align 4
  %58 = load i32, i32* @SMBCLK_SEL, align 4
  %59 = call i32 @sis630_write(i32 %57, i32 %58)
  br label %68

60:                                               ; preds = %45
  %61 = load i32, i32* @SMB_CNT, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MSTO_EN, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @sis630_write(i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %60, %56
  %69 = load i32, i32* @SMB_STS, align 4
  %70 = call i32 @sis630_read(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @SMB_STS, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 30
  %74 = call i32 @sis630_write(i32 %71, i32 %73)
  %75 = load i32, i32* @SMBHOST_CNT, align 4
  %76 = load i32, i32* @SMB_START, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 7
  %79 = or i32 %76, %78
  %80 = call i32 @sis630_write(i32 %75, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %68, %33
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @sis630_read(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sis630_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
