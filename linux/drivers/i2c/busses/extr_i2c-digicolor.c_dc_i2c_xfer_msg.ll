; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_i2c = type { i32, i32, i32, i32, i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@TIMEOUT_MS = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_i2c*, %struct.i2c_msg*, i32, i32)* @dc_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_i2c_xfer_msg(%struct.dc_i2c* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_i2c*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dc_i2c* %0, %struct.dc_i2c** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @TIMEOUT_MS, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  store i64 %13, i64* %10, align 8
  %14 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %15 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %14, i32 0, i32 4
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %19 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %20 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %19, i32 0, i32 6
  store %struct.i2c_msg* %18, %struct.i2c_msg** %20, align 8
  %21 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %22 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %25 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %27 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %29 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %28, i32 0, i32 3
  %30 = call i32 @reinit_completion(i32* %29)
  %31 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %32 = call i32 @dc_i2c_set_irq(%struct.dc_i2c* %31, i32 1)
  %33 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dc_i2c_start_msg(%struct.dc_i2c* %33, i32 %34)
  %36 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %37 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %36, i32 0, i32 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %40, i32 0, i32 3
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @wait_for_completion_timeout(i32* %41, i64 %42)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %45 = call i32 @dc_i2c_set_irq(%struct.dc_i2c* %44, i32 0)
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %4
  %49 = load i32, i32* @STATE_IDLE, align 4
  %50 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %51 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %64

54:                                               ; preds = %4
  %55 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %56 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.dc_i2c*, %struct.dc_i2c** %6, align 8
  %61 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %59, %48
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dc_i2c_set_irq(%struct.dc_i2c*, i32) #1

declare dso_local i32 @dc_i2c_start_msg(%struct.dc_i2c*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
