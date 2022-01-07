; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_setconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_setconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@FRAME_START = common dso_local global i32 0, align 4
@COMMAND_SETCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"set config to (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*, i8)* @zforce_setconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_setconfig(%struct.zforce_ts* %0, i8 signext %1) #0 {
  %3 = alloca %struct.zforce_ts*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [7 x i8], align 1
  store %struct.zforce_ts* %0, %struct.zforce_ts** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %8 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %11 = load i32, i32* @FRAME_START, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %10, align 1
  %13 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 5, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i32, i32* @COMMAND_SETCONFIG, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds i8, i8* %14, i64 1
  %18 = load i8, i8* %4, align 1
  store i8 %18, i8* %17, align 1
  %19 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i8, i8* %4, align 1
  %25 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 signext %24)
  %26 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i8* %28)
  %30 = call i32 @zforce_send_wait(%struct.zforce_ts* %26, i8* %27, i32 %29)
  ret i32 %30
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext) #1

declare dso_local i32 @zforce_send_wait(%struct.zforce_ts*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
