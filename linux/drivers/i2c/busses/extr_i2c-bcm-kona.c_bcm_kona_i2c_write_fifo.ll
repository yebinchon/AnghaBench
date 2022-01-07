; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32 }
%struct.i2c_msg = type { i32, i32* }

@MAX_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*, %struct.i2c_msg*)* @bcm_kona_i2c_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_write_fifo(%struct.bcm_kona_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %10 = load i32, i32* @MAX_TX_FIFO_SIZE, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  br label %14

14:                                               ; preds = %44, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub i32 %23, %24
  %26 = load i32, i32* @MAX_TX_FIFO_SIZE, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bcm_kona_i2c_write_fifo_single(%struct.bcm_kona_i2c_dev* %35, i32* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EREMOTEIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %9, align 8
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @bcm_kona_i2c_write_fifo_single(%struct.bcm_kona_i2c_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
