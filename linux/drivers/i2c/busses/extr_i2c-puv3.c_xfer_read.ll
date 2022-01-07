; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_xfer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_xfer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@I2C_STATUS_TFNF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Tx FIFO Not Full timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_DATACMD_WRITE = common dso_local global i32 0, align 4
@I2C_DATACMD = common dso_local global i32 0, align 4
@I2C_DATACMD_READ = common dso_local global i32 0, align 4
@I2C_STATUS_RFNE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"RXRDY timeout\0A\00", align 1
@I2C_DATACMD_DAT_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8*, i32)* @xfer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfer_read(%struct.i2c_adapter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load i32, i32* @I2C_STATUS_TFNF, align 4
  %18 = call i32 @poll_status(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 0
  %23 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @I2C_DATACMD_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @I2C_DATACMD, align 4
  %31 = call i32 @writel(i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @I2C_DATACMD_READ, align 4
  %35 = load i32, i32* @I2C_DATACMD, align 4
  %36 = call i32 @writel(i32 %34, i32 %35)
  %37 = load i32, i32* @I2C_STATUS_RFNE, align 4
  %38 = call i32 @poll_status(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %26
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %58

46:                                               ; preds = %26
  %47 = load i32, i32* @I2C_DATACMD, align 4
  %48 = call zeroext i8 @readl(i32 %47)
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @I2C_DATACMD_DAT_MASK, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %12

57:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %40, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @poll_status(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local zeroext i8 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
