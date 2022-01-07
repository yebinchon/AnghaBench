; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@__const.wdt87xx_get_desc.tx_buf = private unnamed_addr constant [6 x i32] [i32 34, i32 0, i32 16, i32 14, i32 35, i32 0], align 16
@.str = private unnamed_addr constant [21 x i8] c"get desc failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unexpected response to get desc: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WDT_COMMAND_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*, i64)* @wdt87xx_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_get_desc(%struct.i2c_client* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([6 x i32]* @__const.wdt87xx_get_desc.tx_buf to i8*), i64 24, i1 false)
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 15
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @wdt87xx_i2c_xfer(%struct.i2c_client* %18, i32* %19, i32 24, i32* %20, i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %50

31:                                               ; preds = %4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @WDT_COMMAND_DELAY_MS, align 4
  %49 = call i32 @mdelay(i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %38, %25
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wdt87xx_i2c_xfer(%struct.i2c_client*, i32*, i32, i32*, i64) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @mdelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
