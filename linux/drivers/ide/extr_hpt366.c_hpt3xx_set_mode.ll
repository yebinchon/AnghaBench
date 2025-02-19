; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt3xx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt3xx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.pci_dev = type { i32 }
%struct.hpt_info = type { %struct.hpt_timings* }
%struct.hpt_timings = type { i32, i32, i32 }

@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @hpt3xx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt3xx_set_mode(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hpt_info*, align 8
  %7 = alloca %struct.hpt_timings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.hpt_info* @hpt3xx_get_info(i32 %19)
  store %struct.hpt_info* %20, %struct.hpt_info** %6, align 8
  %21 = load %struct.hpt_info*, %struct.hpt_info** %6, align 8
  %22 = getelementptr inbounds %struct.hpt_info, %struct.hpt_info* %21, i32 0, i32 0
  %23 = load %struct.hpt_timings*, %struct.hpt_timings** %22, align 8
  store %struct.hpt_timings* %23, %struct.hpt_timings** %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 64, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.hpt_info*, %struct.hpt_info** %6, align 8
  %35 = call i32 @get_speed_setting(i64 %33, %struct.hpt_info* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @XFER_MW_DMA_0, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.hpt_timings*, %struct.hpt_timings** %7, align 8
  %41 = getelementptr inbounds %struct.hpt_timings, %struct.hpt_timings* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %57

43:                                               ; preds = %2
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @XFER_UDMA_0, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.hpt_timings*, %struct.hpt_timings** %7, align 8
  %49 = getelementptr inbounds %struct.hpt_timings, %struct.hpt_timings* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load %struct.hpt_timings*, %struct.hpt_timings** %7, align 8
  %53 = getelementptr inbounds %struct.hpt_timings, %struct.hpt_timings* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %50, %47 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %39
  %58 = phi i32 [ %42, %39 ], [ %56, %55 ]
  store i32 %58, i32* %12, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @pci_read_config_dword(%struct.pci_dev* %59, i64 %60, i32* %9)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %66, %67
  %69 = or i32 %65, %68
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 1073741823
  store i32 %71, i32* %11, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @pci_write_config_dword(%struct.pci_dev* %72, i64 %73, i32 %74)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.hpt_info* @hpt3xx_get_info(i32) #1

declare dso_local i32 @get_speed_setting(i64, %struct.hpt_info*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
