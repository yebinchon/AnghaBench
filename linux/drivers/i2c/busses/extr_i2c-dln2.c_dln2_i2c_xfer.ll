; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-dln2.c_dln2_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-dln2.c_dln2_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.dln2_i2c = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dln2_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dln2_i2c*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dln2_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dln2_i2c* %13, %struct.dln2_i2c** %8, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %71, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 %21
  store %struct.i2c_msg* %22, %struct.i2c_msg** %9, align 8
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I2C_M_RD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %18
  %30 = load %struct.dln2_i2c*, %struct.dln2_i2c** %8, align 8
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dln2_i2c_read(%struct.dln2_i2c* %30, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %76

45:                                               ; preds = %29
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %70

49:                                               ; preds = %18
  %50 = load %struct.dln2_i2c*, %struct.dln2_i2c** %8, align 8
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dln2_i2c_write(%struct.dln2_i2c* %50, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i32, i32* @EPROTO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %76

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %14

74:                                               ; preds = %14
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %66, %43
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.dln2_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dln2_i2c_read(%struct.dln2_i2c*, i32, i32, i32) #1

declare dso_local i32 @dln2_i2c_write(%struct.dln2_i2c*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
