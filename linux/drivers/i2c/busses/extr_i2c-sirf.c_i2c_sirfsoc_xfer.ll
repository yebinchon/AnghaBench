; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.sirfsoc_i2c* }
%struct.sirfsoc_i2c = type { i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_sirfsoc_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_sirfsoc_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sirfsoc_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %12, align 8
  store %struct.sirfsoc_i2c* %13, %struct.sirfsoc_i2c** %8, align 8
  %14 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %15 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_enable(i32 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %81, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 %25
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i64 %33
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %41
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I2C_M_RD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %52 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %54 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %56 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %58 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %65 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %69
  %71 = call i32 @i2c_sirfsoc_xfer_msg(%struct.sirfsoc_i2c* %66, %struct.i2c_msg* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %22
  %75 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %76 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clk_disable(i32 %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %90

80:                                               ; preds = %22
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %18

84:                                               ; preds = %18
  %85 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %8, align 8
  %86 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @clk_disable(i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %74
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @i2c_sirfsoc_xfer_msg(%struct.sirfsoc_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
