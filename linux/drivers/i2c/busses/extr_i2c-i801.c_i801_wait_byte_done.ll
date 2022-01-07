; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_wait_byte_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_wait_byte_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STATUS_ERROR_FLAGS = common dso_local global i32 0, align 4
@SMBHSTSTS_BYTE_DONE = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BYTE_DONE Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*)* @i801_wait_byte_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_wait_byte_done(%struct.i801_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i801_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = call i32 @usleep_range(i32 250, i32 500)
  %8 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %9 = call i32 @SMBHSTSTS(%struct.i801_priv* %8)
  %10 = call i32 @inb_p(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STATUS_ERROR_FLAGS, align 4
  %14 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MAX_RETRIES, align 4
  %22 = icmp slt i32 %19, %21
  br label %23

23:                                               ; preds = %18, %11
  %24 = phi i1 [ false, %11 ], [ %22, %18 ]
  br i1 %24, label %6, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAX_RETRIES, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %31 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STATUS_ERROR_FLAGS, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
