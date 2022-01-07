; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_reg_write_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_reg_write_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX_WRITE_RANGE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Fixed write buffer too small (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d writing to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, i32, i32*, i32)* @reg_write_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_write_range(%struct.tda998x_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.tda998x_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  %17 = load i32, i32* @MAX_WRITE_RANGE_BUF, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAX_WRITE_RANGE_BUF, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* @MAX_WRITE_RANGE_BUF, align 4
  %29 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 1, i32* %13, align 4
  br label %65

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @REG2ADDR(i32 %31)
  %33 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds i32, i32* %21, i64 1
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @memcpy(i32* %34, i32* %35, i32 %36)
  %38 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %39 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @set_page(%struct.tda998x_priv* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %61

47:                                               ; preds = %30
  %48 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @i2c_master_send(%struct.i2c_client* %48, i32* %21, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %63 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %61, %25
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %69 [
    i32 0, label %68
    i32 1, label %68
  ]

68:                                               ; preds = %65, %65
  ret void

69:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #2

declare dso_local i32 @REG2ADDR(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @set_page(%struct.tda998x_priv*, i32) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
