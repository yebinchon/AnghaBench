; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_get_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_diolan_u2c = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@CMD_GET_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Diolan U2C serial number %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_diolan_u2c*)* @diolan_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diolan_get_serial(%struct.i2c_diolan_u2c* %0) #0 {
  %2 = alloca %struct.i2c_diolan_u2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i2c_diolan_u2c* %0, %struct.i2c_diolan_u2c** %2, align 8
  %5 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %6 = load i32, i32* @CMD_GET_SERIAL, align 4
  %7 = call i32 @diolan_usb_cmd(%struct.i2c_diolan_u2c* %5, i32 %6, i32 1)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 4
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %18 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @diolan_usb_cmd(%struct.i2c_diolan_u2c*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
