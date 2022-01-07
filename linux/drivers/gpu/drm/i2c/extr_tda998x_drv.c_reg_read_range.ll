; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_reg_read_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_reg_read_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error %d reading from 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, i32, i8*, i32)* @reg_read_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_read_range(%struct.tda998x_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tda998x_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %13 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @REG2ADDR(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %18 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @set_page(%struct.tda998x_priv* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %47

26:                                               ; preds = %4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %28 = call i32 @i2c_master_send(%struct.i2c_client* %27, i32* %10, i32 4)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @i2c_master_recv(%struct.i2c_client* %33, i8* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  br label %47

41:                                               ; preds = %39, %31
  %42 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %40, %25
  %48 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %49 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i32 @REG2ADDR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_page(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
