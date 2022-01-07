; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_i2c_private = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@XLR_I2C_STATUS = common dso_local global i32 0, align 4
@XLR_I2C_ACK_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_i2c_private*, i64)* @xlr_i2c_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_i2c_wait(%struct.xlr_i2c_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlr_i2c_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlr_i2c_private* %0, %struct.xlr_i2c_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %4, align 8
  %9 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %4, align 8
  %12 = call i32 @xlr_i2c_idle(%struct.xlr_i2c_private* %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @msecs_to_jiffies(i64 %13)
  %15 = call i32 @wait_event_timeout(i32 %10, i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %4, align 8
  %23 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XLR_I2C_STATUS, align 4
  %26 = call i32 @xlr_i2c_rdreg(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @XLR_I2C_ACK_ERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @xlr_i2c_idle(%struct.xlr_i2c_private*) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @xlr_i2c_rdreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
