; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac_inj.c_amd64_inject_write_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac_inj.c_amd64_inject_write_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@F10_NB_ARRAY_DRAM = common dso_local global i32 0, align 4
@F10_NB_ARRAY_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [161 x i8] c"Don't forget to decrease MCE polling interval in\0A/sys/bus/machinecheck/devices/machinecheck<CPUNUM>/check_interval\0Aso that you can get the error report faster.\0A\00", align 1
@disable_caches = common dso_local global i32 0, align 4
@F10_NB_ARRAY_DATA = common dso_local global i32 0, align 4
@F10_NB_ARR_ECC_WR_REQ = common dso_local global i32 0, align 4
@enable_caches = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"section=0x%x word_bits=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amd64_inject_write_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_inject_write_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca %struct.amd64_pvt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.mem_ctl_info* @to_mci(%struct.device* %17)
  store %struct.mem_ctl_info* %18, %struct.mem_ctl_info** %10, align 8
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 0
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %20, align 8
  store %struct.amd64_pvt* %21, %struct.amd64_pvt** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtoul(i8* %22, i32 10, i64* %15)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %5, align 4
  br label %76

28:                                               ; preds = %4
  %29 = load i32, i32* @F10_NB_ARRAY_DRAM, align 4
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %31 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SET_NB_ARRAY_ADDR(i32 %33)
  %35 = or i32 %29, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @F10_NB_ARRAY_ADDR, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @amd64_write_pci_cfg(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %43 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SET_NB_DRAM_INJECTION_WRITE(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = call i32 @pr_notice_once(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @disable_caches, align 4
  %49 = call i32 @on_each_cpu(i32 %48, i32* null, i32 1)
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %51 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @F10_NB_ARRAY_DATA, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @amd64_write_pci_cfg(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %66, %28
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %58 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @F10_NB_ARRAY_DATA, align 4
  %61 = call i32 @amd64_read_pci_cfg(i32 %59, i32 %60, i32* %14)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @F10_NB_ARR_ECC_WR_REQ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = call i32 (...) @cpu_relax()
  br label %56

68:                                               ; preds = %56
  %69 = load i32, i32* @enable_caches, align 4
  %70 = call i32 @on_each_cpu(i32 %69, i32* null, i32 1)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %26
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @SET_NB_ARRAY_ADDR(i32) #1

declare dso_local i32 @amd64_write_pci_cfg(i32, i32, i32) #1

declare dso_local i32 @SET_NB_DRAM_INJECTION_WRITE(i32) #1

declare dso_local i32 @pr_notice_once(i8*) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
