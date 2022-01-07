; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i64 }

@SCB_FIFO_STATUS_REG = common dso_local global i32 0, align 4
@FIFO_READ_EMPTY = common dso_local global i32 0, align 4
@SCB_READ_DATA_REG = common dso_local global i32 0, align 4
@SCB_READ_FIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*)* @img_i2c_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_read_fifo(%struct.img_i2c* %0) #0 {
  %2 = alloca %struct.img_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.img_i2c* %0, %struct.img_i2c** %2, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %5
  %12 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %13 = call i32 @img_i2c_wr_rd_fence(%struct.img_i2c* %12)
  %14 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %15 = load i32, i32* @SCB_FIFO_STATUS_REG, align 4
  %16 = call i8* @img_i2c_readl(%struct.img_i2c* %14, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @FIFO_READ_EMPTY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %45

23:                                               ; preds = %11
  %24 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %25 = load i32, i32* @SCB_READ_DATA_REG, align 4
  %26 = call i8* @img_i2c_readl(%struct.img_i2c* %24, i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %29 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  store i8* %27, i8** %31, align 8
  %32 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %33 = load i32, i32* @SCB_READ_FIFO_REG, align 4
  %34 = call i32 @img_i2c_writel(%struct.img_i2c* %32, i32 %33, i32 255)
  %35 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %41 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %42, align 8
  br label %5

45:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @img_i2c_wr_rd_fence(%struct.img_i2c*) #1

declare dso_local i8* @img_i2c_readl(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
