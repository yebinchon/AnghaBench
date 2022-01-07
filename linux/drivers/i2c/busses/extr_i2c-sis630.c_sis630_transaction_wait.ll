; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@SMB_STS = common dso_local global i32 0, align 4
@SIS630_BLOCK_DATA = common dso_local global i32 0, align 4
@BYTE_DONE_STS = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SMBERR_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SMBCOL_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Bus collision!\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @sis630_transaction_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis630_transaction_wait(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = call i32 @msleep(i32 1)
  %10 = load i32, i32* @SMB_STS, align 4
  %11 = call i32 @sis630_read(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BYTE_DONE_STS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %33

21:                                               ; preds = %15, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 14
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @MAX_TIMEOUT, align 4
  %30 = icmp slt i32 %27, %29
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %8, label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX_TIMEOUT, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SMBERR_STS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SMBCOL_STS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sis630_read(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
