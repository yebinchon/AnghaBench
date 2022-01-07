; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_as5011.c_as5011_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_as5011.c_as5011_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i8*)* @as5011_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as5011_i2c_read(%struct.i2c_client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = getelementptr inbounds i32, i32* %11, i64 2
  br label %15

15:                                               ; preds = %15, %3
  %16 = phi i32* [ %13, %3 ], [ %17, %15 ]
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = icmp eq i32* %17, %14
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = load i32, i32* @I2C_M_RD, align 4
  %33 = load i32, i32* @I2C_M_NOSTART, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %37, i32** %36, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %46 = call i32 @i2c_transfer(i32 %44, %struct.i2c_msg* %45, i32 2)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %19
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %69

51:                                               ; preds = %19
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = add nsw i32 1, %59
  %61 = mul nsw i32 -1, %60
  br label %65

62:                                               ; preds = %51
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i32 [ %61, %56 ], [ %64, %62 ]
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %49
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
