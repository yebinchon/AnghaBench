; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_write_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@RM_CMD_BOOT_WRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WRT obj command failed: %d\0A\00", align 1
@RM_CMD_BOOT_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Ack obj command failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"BL check state failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*, i64, i32)* @raydium_i2c_write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_write_object(%struct.i2c_client* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = load i32, i32* @RM_CMD_BOOT_WRT, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @raydium_i2c_send(%struct.i2c_client* %11, i32 %12, i8* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %49

24:                                               ; preds = %4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = load i32, i32* @RM_CMD_BOOT_ACK, align 4
  %27 = call i32 @raydium_i2c_send(%struct.i2c_client* %25, i32 %26, i8* null, i64 0)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %24
  %37 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @raydium_i2c_bl_chk_state(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %42, %30, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @raydium_i2c_send(%struct.i2c_client*, i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @raydium_i2c_bl_chk_state(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
