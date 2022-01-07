; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@I2C_FIFO_MAX = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx2967_i2c*, %struct.i2c_msg*)* @zx2967_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_i2c_xfer_msg(%struct.zx2967_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zx2967_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %8 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %9 = call i32 @zx2967_i2c_flush_fifos(%struct.zx2967_i2c* %8)
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %14 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %19 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I2C_FIFO_MAX, align 4
  %24 = sdiv i32 %22, %23
  %25 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %26 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %33 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %49, %2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %37 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %42 = load i32, i32* @I2C_FIFO_MAX, align 4
  %43 = call i32 @zx2967_i2c_xfer_bytes(%struct.zx2967_i2c* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %73

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %54 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %59 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %60 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @zx2967_i2c_xfer_bytes(%struct.zx2967_i2c* %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %70 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %4, align 8
  %72 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %65, %46
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @zx2967_i2c_flush_fifos(%struct.zx2967_i2c*) #1

declare dso_local i32 @zx2967_i2c_xfer_bytes(%struct.zx2967_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
