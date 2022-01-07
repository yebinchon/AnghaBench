; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_i2c_get_byte_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_i2c_get_byte_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_diolan_u2c = type { i32* }

@CMD_I2C_GET_BYTE_ACK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_diolan_u2c*, i32, i32*)* @diolan_i2c_get_byte_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diolan_i2c_get_byte_ack(%struct.i2c_diolan_u2c* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.i2c_diolan_u2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_diolan_u2c* %0, %struct.i2c_diolan_u2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %4, align 8
  %9 = load i32, i32* @CMD_I2C_GET_BYTE_ACK, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @diolan_usb_cmd_data(%struct.i2c_diolan_u2c* %8, i32 %9, i32 %10, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @diolan_usb_cmd_data(%struct.i2c_diolan_u2c*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
