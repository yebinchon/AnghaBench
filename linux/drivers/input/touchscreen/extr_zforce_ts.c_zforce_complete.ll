; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"completing command 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"command %d not for us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zforce_ts*, i32, i32)* @zforce_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zforce_complete(%struct.zforce_ts* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zforce_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.zforce_ts* %0, %struct.zforce_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.zforce_ts*, %struct.zforce_ts** %4, align 8
  %9 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.zforce_ts*, %struct.zforce_ts** %4, align 8
  %12 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.zforce_ts*, %struct.zforce_ts** %4, align 8
  %23 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.zforce_ts*, %struct.zforce_ts** %4, align 8
  %25 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %24, i32 0, i32 2
  %26 = call i32 @complete(i32* %25)
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
