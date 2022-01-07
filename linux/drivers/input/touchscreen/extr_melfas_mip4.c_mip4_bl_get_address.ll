; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_bl_get_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_bl_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@MIP4_R0_BOOT = common dso_local global i32 0, align 4
@MIP4_R1_BOOT_BUF_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to retrieve bootloader buffer address: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Bootloader buffer address %#04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*, i32*)* @mip4_bl_get_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_bl_get_address(%struct.mip4_ts* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mip4_ts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [2 x %struct.i2c_msg], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* @MIP4_R0_BOOT, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @MIP4_R1_BOOT_BUF_ADDR, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  store i32 8, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %21 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %22 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  store i32 16, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 1
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  %31 = load i32, i32* @I2C_M_RD, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 3
  %33 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %34 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %32, align 4
  %38 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %39 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %44)
  %46 = call i32 @i2c_transfer(i32 %42, %struct.i2c_msg* %43, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %48)
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %2
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  store i32 %60, i32* %10, align 4
  %61 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %62 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %79

68:                                               ; preds = %2
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = call i32 @get_unaligned_le16(i32* %69)
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %73 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %68, %59
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
