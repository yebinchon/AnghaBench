; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_xfer_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_xfer_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32, i32, i32 }

@REG_RDCONF = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx2967_i2c*, i64)* @zx2967_i2c_xfer_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_i2c_xfer_bytes(%struct.zx2967_i2c* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zx2967_i2c*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %10 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %13 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %12, i32 0, i32 2
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %19, 1
  %21 = load i32, i32* @REG_RDCONF, align 4
  %22 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %18, i64 %20, i32 %21)
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %25 = call i32 @zx2967_i2c_fill_tx_fifo(%struct.zx2967_i2c* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %33 = call i32 @zx2967_i2c_start_ctrl(%struct.zx2967_i2c* %32)
  %34 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %35 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %34, i32 0, i32 2
  %36 = load i32, i32* @I2C_TIMEOUT, align 4
  %37 = call i64 @wait_for_completion_timeout(i32* %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %62

43:                                               ; preds = %31
  %44 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %45 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %50 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @zx2967_i2c_empty_rx_fifo(%struct.zx2967_i2c* %56, i64 %57)
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %48, %40, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i64, i32) #1

declare dso_local i32 @zx2967_i2c_fill_tx_fifo(%struct.zx2967_i2c*) #1

declare dso_local i32 @zx2967_i2c_start_ctrl(%struct.zx2967_i2c*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @zx2967_i2c_empty_rx_fifo(%struct.zx2967_i2c*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
