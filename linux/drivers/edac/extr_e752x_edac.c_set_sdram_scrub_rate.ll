; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_set_sdram_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_set_sdram_scrub_rate.c"
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
@SDRATE_EOT = common dso_local global i64 0, align 8
@E752X_MCHSCRB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i64)* @set_sdram_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sdram_scrub_rate(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scrubrate*, align 8
  %7 = alloca %struct.e752x_pvt*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %13, %struct.e752x_pvt** %7, align 8
  %14 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %15 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %18 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_DEVICE_ID_INTEL_3100_0, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.scrubrate*, %struct.scrubrate** @scrubrates_i3100, align 8
  store %struct.scrubrate* %25, %struct.scrubrate** %6, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load %struct.scrubrate*, %struct.scrubrate** @scrubrates_e752x, align 8
  store %struct.scrubrate* %27, %struct.scrubrate** %6, align 8
  br label %28

28:                                               ; preds = %26, %24
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load %struct.scrubrate*, %struct.scrubrate** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %30, i64 %32
  %34 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SDRATE_EOT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.scrubrate*, %struct.scrubrate** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %39, i64 %41
  %43 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %29

52:                                               ; preds = %47, %29
  %53 = load %struct.scrubrate*, %struct.scrubrate** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %53, i64 %55
  %57 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SDRATE_EOT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %79

62:                                               ; preds = %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %64 = load i32, i32* @E752X_MCHSCRB, align 4
  %65 = load %struct.scrubrate*, %struct.scrubrate** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %65, i64 %67
  %69 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pci_write_config_word(%struct.pci_dev* %63, i32 %64, i32 %70)
  %72 = load %struct.scrubrate*, %struct.scrubrate** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %72, i64 %74
  %76 = getelementptr inbounds %struct.scrubrate, %struct.scrubrate* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %62, %61
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
