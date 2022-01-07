; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_i2c_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_i2c_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32, i32*, i32*, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"read register %x error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, i32)* @dib9000_i2c_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_i2c_read16(%struct.i2c_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_device* %0, %struct.i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %9 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %8, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %14 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 2, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i64 1
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %20, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %26 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i32 2, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %31 = load i32, i32* @I2C_M_RD, align 4
  store i32 %31, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 8
  %34 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %48 = call i32 @i2c_transfer(i32 %46, %struct.i2c_msg* %47, i32 2)
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %3, align 4
  br label %66

53:                                               ; preds = %2
  %54 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %59, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %50
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
