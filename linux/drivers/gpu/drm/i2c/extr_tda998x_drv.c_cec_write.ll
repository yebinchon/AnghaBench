; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_cec_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_cec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error %d writing to cec:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, i32, i32)* @cec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_write(%struct.tda998x_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 2, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  %18 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %19 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 8
  %21 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %22 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i2c_transfer(i32 %25, %struct.i2c_msg* %8, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %31 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
