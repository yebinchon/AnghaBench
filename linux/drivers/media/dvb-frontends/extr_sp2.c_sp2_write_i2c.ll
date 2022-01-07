; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_write_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_write_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp2 = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"i2c wr reg=%02x: len=%d is too big!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"i2c write error, reg = 0x%02x, status = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"addr=0x%04x, reg = 0x%02x, data = %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sp2*, i32, i32*, i32)* @sp2_write_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp2_write_i2c(%struct.sp2* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [35 x i32], align 16
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.i2c_adapter*, align 8
  %14 = alloca %struct.i2c_msg, align 8
  store %struct.sp2* %0, %struct.sp2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sp2*, %struct.sp2** %6, align 8
  %16 = getelementptr inbounds %struct.sp2, %struct.sp2* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %12, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 2
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %19, align 8
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %13, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %25 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 0
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 140
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %79

43:                                               ; preds = %4
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 1
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %51 = call i32 @i2c_transfer(%struct.i2c_adapter* %50, %struct.i2c_msg* %14, i32 1)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %43
  %55 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %79

64:                                               ; preds = %54
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %79

67:                                               ; preds = %43
  %68 = load %struct.sp2*, %struct.sp2** %6, align 8
  %69 = getelementptr inbounds %struct.sp2, %struct.sp2* %68, i32 0, i32 0
  %70 = load %struct.i2c_client*, %struct.i2c_client** %69, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 1
  %72 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75, i32 %76, i32* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %67, %64, %62, %35
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
