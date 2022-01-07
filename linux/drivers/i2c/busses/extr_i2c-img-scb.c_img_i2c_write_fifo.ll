; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@SCB_FIFO_STATUS_REG = common dso_local global i32 0, align 4
@FIFO_WRITE_FULL = common dso_local global i32 0, align 4
@SCB_WRITE_DATA_REG = common dso_local global i32 0, align 4
@INT_FIFO_EMPTYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*)* @img_i2c_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_write_fifo(%struct.img_i2c* %0) #0 {
  %2 = alloca %struct.img_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.img_i2c* %0, %struct.img_i2c** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %12 = call i32 @img_i2c_wr_rd_fence(%struct.img_i2c* %11)
  %13 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %14 = load i32, i32* @SCB_FIFO_STATUS_REG, align 4
  %15 = call i32 @img_i2c_readl(%struct.img_i2c* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @FIFO_WRITE_FULL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %40

21:                                               ; preds = %10
  %22 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %23 = load i32, i32* @SCB_WRITE_DATA_REG, align 4
  %24 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %25 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @img_i2c_writel(%struct.img_i2c* %22, i32 %23, i32 %28)
  %30 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %31 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %37, align 8
  br label %4

40:                                               ; preds = %20, %4
  %41 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %42 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @INT_FIFO_EMPTYING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %50 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @img_i2c_wr_rd_fence(%struct.img_i2c*) #1

declare dso_local i32 @img_i2c_readl(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
