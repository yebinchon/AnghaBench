; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_reg_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_reg_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Error %d writing to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, i32, i32)* @reg_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_write16(%struct.tda998x_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %11 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG2ADDR(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %22 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @set_page(%struct.tda998x_priv* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %43

30:                                               ; preds = %3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %33 = call i32 @i2c_master_send(%struct.i2c_client* %31, i32* %32, i32 12)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %45 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @REG2ADDR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_page(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
