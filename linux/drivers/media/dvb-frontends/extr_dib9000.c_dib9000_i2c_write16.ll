; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_i2c_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_i2c_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32, i32*, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, i32, i32)* @dib9000_i2c_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_i2c_write16(%struct.i2c_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_msg, align 8
  store %struct.i2c_device* %0, %struct.i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
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
  store i32 4, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 255
  %41 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %40, i32* %44, align 4
  %45 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @i2c_transfer(i32 %47, %struct.i2c_msg* %7, i32 1)
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EREMOTEIO, align 4
  %52 = sub nsw i32 0, %51
  br label %54

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  ret i32 %55
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
