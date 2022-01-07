; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_x38_edac.c_how_many_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_x38_edac.c_how_many_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@X38_CAPID0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"In single channel mode\0A\00", align 1
@x38_channel_num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"In dual channel mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @how_many_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @how_many_channel(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i64, i64* @X38_CAPID0, align 8
  %6 = add nsw i64 %5, 8
  %7 = call i32 @pci_read_config_byte(%struct.pci_dev* %4, i64 %6, i8* %3)
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @x38_channel_num, align 4
  br label %16

14:                                               ; preds = %1
  %15 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* @x38_channel_num, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @x38_channel_num, align 4
  ret i32 %17
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i8*) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
