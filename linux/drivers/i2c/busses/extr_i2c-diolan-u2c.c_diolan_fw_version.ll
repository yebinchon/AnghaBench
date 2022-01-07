; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_diolan_u2c = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_GET_FW_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Diolan U2C firmware version %u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_diolan_u2c*)* @diolan_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diolan_fw_version(%struct.i2c_diolan_u2c* %0) #0 {
  %2 = alloca %struct.i2c_diolan_u2c*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_diolan_u2c* %0, %struct.i2c_diolan_u2c** %2, align 8
  %4 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %5 = load i32, i32* @CMD_GET_FW_VERSION, align 4
  %6 = call i32 @diolan_usb_cmd(%struct.i2c_diolan_u2c* %4, i32 %5, i32 1)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @diolan_usb_cmd(%struct.i2c_diolan_u2c*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
