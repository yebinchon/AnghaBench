; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac_inj.c_amd64_inject_read_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac_inj.c_amd64_inject_read_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@F10_NB_ARRAY_DRAM = common dso_local global i32 0, align 4
@F10_NB_ARRAY_ADDR = common dso_local global i32 0, align 4
@F10_NB_ARRAY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"section=0x%x word_bits=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amd64_inject_read_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_inject_read_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca %struct.amd64_pvt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.mem_ctl_info* @to_mci(%struct.device* %16)
  store %struct.mem_ctl_info* %17, %struct.mem_ctl_info** %10, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %19, align 8
  store %struct.amd64_pvt* %20, %struct.amd64_pvt** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %12)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %5, align 4
  br label %57

27:                                               ; preds = %4
  %28 = load i32, i32* @F10_NB_ARRAY_DRAM, align 4
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SET_NB_ARRAY_ADDR(i32 %32)
  %34 = or i32 %28, %33
  store i32 %34, i32* %13, align 4
  %35 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %36 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @F10_NB_ARRAY_ADDR, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @amd64_write_pci_cfg(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %42 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SET_NB_DRAM_INJECTION_READ(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.amd64_pvt*, %struct.amd64_pvt** %11, align 8
  %47 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @F10_NB_ARRAY_DATA, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @amd64_write_pci_cfg(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %27, %25
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @SET_NB_ARRAY_ADDR(i32) #1

declare dso_local i32 @amd64_write_pci_cfg(i32, i32, i32) #1

declare dso_local i32 @SET_NB_DRAM_INJECTION_READ(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
