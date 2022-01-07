; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_i2c_private = type { i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32* }

@XLR_I2C_SDOEMPTY = common dso_local global i32 0, align 4
@XLR_I2C_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_i2c_private*, i32)* @xlr_i2c_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_i2c_tx_irq(%struct.xlr_i2c_private* %0, i32 %1) #0 {
  %3 = alloca %struct.xlr_i2c_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.xlr_i2c_private* %0, %struct.xlr_i2c_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %3, align 8
  %7 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %6, i32 0, i32 2
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @XLR_I2C_SDOEMPTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %3, align 8
  %15 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XLR_I2C_DATAOUT, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %3, align 8
  %22 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xlr_i2c_wreg(i32 %16, i32 %17, i32 %27)
  br label %29

29:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @xlr_i2c_wreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
