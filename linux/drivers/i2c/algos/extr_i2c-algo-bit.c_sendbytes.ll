; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_sendbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_sendbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i8*, i32, i16 }

@I2C_M_IGNORE_NAK = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [25 x i8] c"sendbytes: NAK bailout.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"sendbytes: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @sendbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendbytes(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 4
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @I2C_M_IGNORE_NAK, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %20, %22
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %8, align 2
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %64, %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @i2c_outb(%struct.i2c_adapter* %29, i8 zeroext %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39, %28
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %64

49:                                               ; preds = %39, %35
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %49
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %42
  br label %25

65:                                               ; preds = %25
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %58, %52
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @i2c_outb(%struct.i2c_adapter*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
