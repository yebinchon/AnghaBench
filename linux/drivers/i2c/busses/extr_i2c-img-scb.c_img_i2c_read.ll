; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MODE_AUTOMATIC = common dso_local global i32 0, align 4
@INT_SLAVE_EVENT = common dso_local global i32 0, align 4
@SCB_INT_MASK_REG = common dso_local global i32 0, align 4
@SCB_READ_ADDR_REG = common dso_local global i32 0, align 4
@SCB_READ_COUNT_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*)* @img_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_read(%struct.img_i2c* %0) #0 {
  %2 = alloca %struct.img_i2c*, align 8
  store %struct.img_i2c* %0, %struct.img_i2c** %2, align 8
  %3 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %4 = load i32, i32* @MODE_AUTOMATIC, align 4
  %5 = call i32 @img_i2c_switch_mode(%struct.img_i2c* %3, i32 %4)
  %6 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @INT_SLAVE_EVENT, align 4
  %12 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %13 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %18 = load i32, i32* @SCB_INT_MASK_REG, align 4
  %19 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @img_i2c_writel(%struct.img_i2c* %17, i32 %18, i32 %21)
  %23 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %24 = load i32, i32* @SCB_READ_ADDR_REG, align 4
  %25 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %26 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @img_i2c_writel(%struct.img_i2c* %23, i32 %24, i32 %28)
  %30 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %31 = load i32, i32* @SCB_READ_COUNT_REG, align 4
  %32 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %33 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @img_i2c_writel(%struct.img_i2c* %30, i32 %31, i32 %35)
  %37 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %37, i32 0, i32 0
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @msecs_to_jiffies(i32 1)
  %41 = add nsw i64 %39, %40
  %42 = call i32 @mod_timer(i32* %38, i64 %41)
  ret void
}

declare dso_local i32 @img_i2c_switch_mode(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
