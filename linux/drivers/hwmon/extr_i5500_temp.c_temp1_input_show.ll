; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5500_temp.c_temp1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5500_temp.c_temp1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }

@REG_TSTHRHI = common dso_local global i32 0, align 4
@REG_TSFSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = load i32, i32* @REG_TSTHRHI, align 4
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 %16, i64* %9)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %19 = load i32, i32* @REG_TSFSC, align 4
  %20 = call i32 @pci_read_config_byte(%struct.pci_dev* %18, i32 %19, i64* %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = sub nsw i64 %21, %22
  %24 = mul nsw i64 %23, 500
  store i64 %24, i64* %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %26)
  ret i32 %27
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
