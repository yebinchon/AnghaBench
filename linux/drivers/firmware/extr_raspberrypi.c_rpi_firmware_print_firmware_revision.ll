; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_print_firmware_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_print_firmware_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_firmware = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i32, i32, i32, i64, i64 }

@RPI_FIRMWARE_GET_FIRMWARE_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attached to firmware from %04ld-%02d-%02d %02d:%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpi_firmware*)* @rpi_firmware_print_firmware_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_firmware_print_firmware_revision(%struct.rpi_firmware* %0) #0 {
  %2 = alloca %struct.rpi_firmware*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  store %struct.rpi_firmware* %0, %struct.rpi_firmware** %2, align 8
  %6 = load %struct.rpi_firmware*, %struct.rpi_firmware** %2, align 8
  %7 = load i32, i32* @RPI_FIRMWARE_GET_FIRMWARE_REVISION, align 4
  %8 = call i32 @rpi_firmware_property(%struct.rpi_firmware* %6, i32 %7, i32* %3, i32 4)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @time64_to_tm(i32 %12, i32 0, %struct.tm* %5)
  %14 = load %struct.rpi_firmware*, %struct.rpi_firmware** %2, align 8
  %15 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1900
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23, i32 %25, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @rpi_firmware_property(%struct.rpi_firmware*, i32, i32*, i32) #1

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
