; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_start_i2c_msg_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_start_i2c_msg_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slimpro_i2c_dev = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@acpi_disabled = common dso_local global i32 0, align 4
@MAILBOX_OP_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slimpro_i2c_dev*)* @start_i2c_msg_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_i2c_msg_xfer(%struct.slimpro_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slimpro_i2c_dev*, align 8
  store %struct.slimpro_i2c_dev* %0, %struct.slimpro_i2c_dev** %3, align 8
  %4 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %3, align 8
  %5 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @acpi_disabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %3, align 8
  %14 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %13, i32 0, i32 1
  %15 = load i32, i32* @MAILBOX_OP_TIMEOUT, align 4
  %16 = call i32 @msecs_to_jiffies(i32 %15)
  %17 = call i32 @wait_for_completion_timeout(i32* %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %9
  %24 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %3, align 8
  %25 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
