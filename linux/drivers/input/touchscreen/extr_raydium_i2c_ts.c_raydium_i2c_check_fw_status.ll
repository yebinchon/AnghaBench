; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_check_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_check_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raydium_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@raydium_i2c_check_fw_status.bl_ack = internal constant i64 98, align 8
@raydium_i2c_check_fw_status.main_ack = internal constant i64 102, align 8
@RM_CMD_BOOT_READ = common dso_local global i32 0, align 4
@RAYDIUM_TS_BLDR = common dso_local global i32 0, align 4
@RAYDIUM_TS_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raydium_data*)* @raydium_i2c_check_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_check_fw_status(%struct.raydium_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raydium_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca [4 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.raydium_data* %0, %struct.raydium_data** %3, align 8
  %7 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %8 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %7, i32 0, i32 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @RM_CMD_BOOT_READ, align 4
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %13 = call i32 @raydium_i2c_read(%struct.i2c_client* %10, i32 %11, i64* %12, i32 32)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %18 = load i64, i64* %17, align 16
  %19 = icmp eq i64 %18, 98
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @RAYDIUM_TS_BLDR, align 4
  %22 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %23 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %33

24:                                               ; preds = %16
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %26 = load i64, i64* %25, align 16
  %27 = icmp eq i64 %26, 102
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @RAYDIUM_TS_MAIN, align 4
  %30 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %31 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %20
  store i32 0, i32* %2, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @raydium_i2c_read(%struct.i2c_client*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
