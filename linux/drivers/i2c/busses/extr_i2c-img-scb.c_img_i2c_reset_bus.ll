; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, i32 }

@IMG_I2C_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_i2c*)* @img_i2c_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2c_reset_bus(%struct.img_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.img_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.img_i2c* %0, %struct.img_i2c** %3, align 8
  %6 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %6, i32 0, i32 1
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %11 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %10, i32 0, i32 0
  %12 = call i32 @reinit_completion(i32* %11)
  %13 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %14 = call i32 @img_i2c_reset_start(%struct.img_i2c* %13)
  %15 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %16 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %20 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %19, i32 0, i32 0
  %21 = load i32, i32* @IMG_I2C_TIMEOUT, align 4
  %22 = call i64 @wait_for_completion_timeout(i32* %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @img_i2c_reset_start(%struct.img_i2c*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
