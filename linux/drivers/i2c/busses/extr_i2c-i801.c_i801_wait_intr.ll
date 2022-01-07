; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_wait_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_wait_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@STATUS_ERROR_FLAGS = common dso_local global i32 0, align 4
@SMBHSTSTS_INTR = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"INTR Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*)* @i801_wait_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_wait_intr(%struct.i801_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i801_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = call i32 @usleep_range(i32 250, i32 500)
  %8 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %9 = call i32 @SMBHSTSTS(%struct.i801_priv* %8)
  %10 = call i32 @inb_p(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STATUS_ERROR_FLAGS, align 4
  %19 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16, %11
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @MAX_RETRIES, align 4
  %27 = icmp slt i32 %24, %26
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i1 [ false, %16 ], [ %27, %23 ]
  br i1 %29, label %6, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MAX_RETRIES, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %36 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @STATUS_ERROR_FLAGS, align 4
  %45 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i32, i32* %2, align 4
  ret i32 %49
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
