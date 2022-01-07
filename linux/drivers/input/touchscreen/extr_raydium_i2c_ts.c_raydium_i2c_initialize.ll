; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raydium_data = type { i64, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@RM_MAX_RETRIES = common dso_local global i32 0, align 4
@RM_BOOT_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to read 'hello' packet: %d\0A\00", align 1
@RAYDIUM_TS_BLDR = common dso_local global i64 0, align 8
@RAYDIUM_TS_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raydium_data*)* @raydium_i2c_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_initialize(%struct.raydium_data* %0) #0 {
  %2 = alloca %struct.raydium_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.raydium_data* %0, %struct.raydium_data** %2, align 8
  %6 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %7 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RM_MAX_RETRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i32, i32* @RM_BOOT_DELAY_MS, align 4
  %15 = call i32 @msleep(i32 %14)
  %16 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %17 = call i32 @raydium_i2c_check_fw_status(%struct.raydium_data* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %39

25:                                               ; preds = %13
  %26 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %27 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RAYDIUM_TS_BLDR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %33 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RAYDIUM_TS_MAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  br label %42

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %9

42:                                               ; preds = %37, %9
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* @RAYDIUM_TS_BLDR, align 8
  %47 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %48 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %51 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RAYDIUM_TS_BLDR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = call i32 @cpu_to_le32(i32 -1)
  %57 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %58 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %61 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 255, i32* %62, align 8
  %63 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %64 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 255, i32* %65, align 4
  br label %69

66:                                               ; preds = %49
  %67 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %68 = call i32 @raydium_i2c_query_ts_info(%struct.raydium_data* %67)
  br label %69

69:                                               ; preds = %66, %55
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @raydium_i2c_check_fw_status(%struct.raydium_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @raydium_i2c_query_ts_info(%struct.raydium_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
