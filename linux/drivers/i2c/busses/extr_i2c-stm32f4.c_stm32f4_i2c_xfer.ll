; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.stm32f4_i2c_dev = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @stm32f4_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32f4_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.stm32f4_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.stm32f4_i2c_dev* %12, %struct.stm32f4_i2c_dev** %8, align 8
  %13 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %8, align 8
  %14 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_enable(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %8, align 8
  %21 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %67

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  %37 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %8, align 8
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @stm32f4_i2c_xfer_msg(%struct.stm32f4_i2c_dev* %37, %struct.i2c_msg* %41, i32 %44, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %26

54:                                               ; preds = %34
  %55 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %8, align 8
  %56 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.stm32f4_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32f4_i2c_xfer_msg(%struct.stm32f4_i2c_dev*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
