; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i64 }
%struct.i2c_msg = type { i32 }
%struct.s3c24xx_i2c = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Retrying transmission (%d)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @s3c24xx_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c24xx_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.s3c24xx_i2c*
  store %struct.s3c24xx_i2c* %14, %struct.s3c24xx_i2c** %8, align 8
  %15 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %8, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_enable(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %8, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @s3c24xx_i2c_doxfer(%struct.s3c24xx_i2c* %31, %struct.i2c_msg* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %8, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_disable(i32 %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %30
  %46 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %8, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @udelay(i32 100)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %8, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable(i32 %58)
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %39, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @s3c24xx_i2c_doxfer(%struct.s3c24xx_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
