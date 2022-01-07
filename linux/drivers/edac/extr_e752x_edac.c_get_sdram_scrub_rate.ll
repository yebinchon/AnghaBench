; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_get_sdram_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_get_sdram_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrubrate = type { i64, i32 }
%struct.mem_ctl_info = type { i64 }
%struct.e752x_pvt = type { %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@PCI_DEVICE_ID_INTEL_3100_0 = common dso_local global i64 0, align 8
@scrubrates_i3100 = common dso_local global %struct.scrubrate* null, align 8
@scrubrates_e752x = common dso_local global %struct.scrubrate* null, align 8
@E752X_MCHSCRB = common dso_local global i32 0, align 4
@SDRATE_EOT = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid sdram scrub control value: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @get_sdram_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sdram_scrub_rate(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.scrubrate*, align 8
  %5 = alloca %struct.e752x_pvt*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %12, %struct.e752x_pvt** %5, align 8
  %13 = load %struct.e752x_pvt*, %struct.e752x_pvt** %5, align 8
  %14 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %13, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.e752x_pvt*, %struct.e752x_pvt** %5, align 8
  %17 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_DEVICE_ID_INTEL_3100_0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load %struct.scrubrate*, %struct.scrubrate** @scrubrates_i3100, align 8
  store %struct.scrubrate* %24, %struct.scrubrate** %4, align 8
  br label %27

25:                                               ; preds = %1
  %26 = load %struct.scrubrate*, %struct.scrubrate** @scrubrates_e752x, align 8
  store %struct.scrubrate* %26, %struct.scrubrate** %4, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = load i32, i32* @E752X_MCHSCRB, align 4
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i32 %29, i32* %7)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 15
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %53, %27
  %34 = load %struct.scrubrate*, %struct.scrubrate** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %34, i64 %36
  %38 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SDRATE_EOT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.scrubrate*, %struct.scrubrate** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %43, i64 %45
  %47 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %33

56:                                               ; preds = %51, %33
  %57 = load %struct.scrubrate*, %struct.scrubrate** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %57, i64 %59
  %61 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SDRATE_EOT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @KERN_WARNING, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @e752x_printk(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 -1, i32* %2, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load %struct.scrubrate*, %struct.scrubrate** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %70, i64 %72
  %74 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %65
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @e752x_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
