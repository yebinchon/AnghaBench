; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_scan_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_scan_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@FRAME_START = common dso_local global i32 0, align 4
@COMMAND_SCANFREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"set scan frequency to (idle: %d, finger: %d, stylus: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*, i32, i32, i32)* @zforce_scan_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_scan_frequency(%struct.zforce_ts* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zforce_ts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [9 x i8], align 1
  store %struct.zforce_ts* %0, %struct.zforce_ts** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %12 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %11, i32 0, i32 0
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %9, align 8
  %14 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %15 = load i32, i32* @FRAME_START, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 7, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i32, i32* @COMMAND_SCANFREQ, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds i8, i8* %18, i64 1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = getelementptr inbounds i8, i8* %25, i64 1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %30, align 1
  %34 = getelementptr inbounds i8, i8* %30, i64 1
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = getelementptr inbounds i8, i8* %34, i64 1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %39, align 1
  %43 = getelementptr inbounds i8, i8* %39, i64 1
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(i8* %56)
  %58 = call i32 @zforce_send_wait(%struct.zforce_ts* %54, i8* %55, i32 %57)
  ret i32 %58
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @zforce_send_wait(%struct.zforce_ts*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
