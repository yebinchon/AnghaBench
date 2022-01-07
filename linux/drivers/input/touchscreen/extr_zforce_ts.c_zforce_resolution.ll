; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@FRAME_START = common dso_local global i32 0, align 4
@COMMAND_RESOLUTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set resolution to (%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*, i32, i32)* @zforce_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_resolution(%struct.zforce_ts* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zforce_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca [7 x i8], align 1
  store %struct.zforce_ts* %0, %struct.zforce_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.zforce_ts*, %struct.zforce_ts** %4, align 8
  %10 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %13 = load i32, i32* @FRAME_START, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %12, align 1
  %15 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 5, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i32, i32* @COMMAND_RESOLUTION, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %16, align 1
  %19 = getelementptr inbounds i8, i8* %16, i64 1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %19, align 1
  %23 = getelementptr inbounds i8, i8* %19, i64 1
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 1
  %28 = getelementptr inbounds i8, i8* %23, i64 1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %28, align 1
  %32 = getelementptr inbounds i8, i8* %28, i64 1
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.zforce_ts*, %struct.zforce_ts** %4, align 8
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %44 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i8* %44)
  %46 = call i32 @zforce_send_wait(%struct.zforce_ts* %42, i8* %43, i32 %45)
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @zforce_send_wait(%struct.zforce_ts*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
