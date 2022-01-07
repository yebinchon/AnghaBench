; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.nforce2_smbus* }
%struct.nforce2_smbus = type { i64 }

@NVIDIA_SMB_STS = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@NVIDIA_SMB_STS_DONE = common dso_local global i8 0, align 1
@NVIDIA_SMB_STS_STATUS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Transaction failed (0x%02x)!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @nforce2_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_check_status(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.nforce2_smbus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %8, align 8
  store %struct.nforce2_smbus* %9, %struct.nforce2_smbus** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = call i32 @msleep(i32 1)
  %12 = load i32, i32* @NVIDIA_SMB_STS, align 4
  %13 = call zeroext i8 @inb_p(i32 %12)
  store i8 %13, i8* %6, align 1
  br label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %6, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MAX_TIMEOUT, align 4
  %21 = icmp slt i32 %18, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %10, label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAX_TIMEOUT, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %4, align 8
  %33 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %38 = call i32 @nforce2_abort(%struct.i2c_adapter* %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %24
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @NVIDIA_SMB_STS_DONE, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @NVIDIA_SMB_STS_STATUS, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49, %42
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %57, i32 0, i32 0
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %56, %39
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @msleep(i32) #1

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @nforce2_abort(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
