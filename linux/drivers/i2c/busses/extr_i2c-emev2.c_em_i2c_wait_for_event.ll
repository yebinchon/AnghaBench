; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_i2c_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_OFS_IICSE0 = common dso_local global i64 0, align 8
@I2C_BIT_ALD0 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em_i2c_device*)* @em_i2c_wait_for_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_i2c_wait_for_event(%struct.em_i2c_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em_i2c_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.em_i2c_device* %0, %struct.em_i2c_device** %3, align 8
  %6 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %7 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %6, i32 0, i32 2
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %10 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %9, i32 0, i32 2
  %11 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %12 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @wait_for_completion_timeout(i32* %10, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %23 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I2C_OFS_IICSE0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readb(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @I2C_BIT_ALD0, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  br label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
