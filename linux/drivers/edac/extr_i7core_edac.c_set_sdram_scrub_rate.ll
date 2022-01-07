; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_set_sdram_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_set_sdram_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { i64, %struct.pci_dev** }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MC_SCRUB_CONTROL = common dso_local global i32 0, align 4
@STARTSCRUB = common dso_local global i64 0, align 8
@SCRUBINTERVAL_MASK = common dso_local global i64 0, align 8
@MC_SSRCONTROL = common dso_local global i32 0, align 4
@SSR_MODE_MASK = common dso_local global i64 0, align 8
@SSR_MODE_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SSR_MODE_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i64)* @set_sdram_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sdram_scrub_rate(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i7core_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.i7core_pvt*, %struct.i7core_pvt** %14, align 8
  store %struct.i7core_pvt* %15, %struct.i7core_pvt** %6, align 8
  %16 = load %struct.i7core_pvt*, %struct.i7core_pvt** %6, align 8
  %17 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %16, i32 0, i32 1
  %18 = load %struct.pci_dev**, %struct.pci_dev*** %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %18, i64 2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %28 = load i32, i32* @MC_SCRUB_CONTROL, align 4
  %29 = call i32 @pci_read_config_dword(%struct.pci_dev* %27, i32 %28, i64* %8)
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i64, i64* @STARTSCRUB, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = load i32, i32* @MC_SCRUB_CONTROL, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @SCRUBINTERVAL_MASK, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = call i32 @write_and_test(%struct.pci_dev* %37, i32 %38, i64 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %45 = load i32, i32* @MC_SSRCONTROL, align 4
  %46 = call i32 @pci_read_config_dword(%struct.pci_dev* %44, i32 %45, i64* %9)
  %47 = load i64, i64* @SSR_MODE_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %9, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* @SSR_MODE_DISABLE, align 8
  %52 = load i64, i64* %9, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %93

54:                                               ; preds = %26
  store i32 64, i32* %10, align 4
  %55 = load %struct.i7core_pvt*, %struct.i7core_pvt** %6, align 8
  %56 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = mul i64 %58, 64
  %60 = mul i64 %59, 1000000
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @do_div(i64 %61, i64 %62)
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @SCRUBINTERVAL_MASK, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %54
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %100

73:                                               ; preds = %66
  %74 = load i64, i64* @SCRUBINTERVAL_MASK, align 8
  %75 = load i64, i64* %12, align 8
  %76 = and i64 %74, %75
  store i64 %76, i64* %8, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %78 = load i32, i32* @MC_SCRUB_CONTROL, align 4
  %79 = load i64, i64* @STARTSCRUB, align 8
  %80 = load i64, i64* %8, align 8
  %81 = or i64 %79, %80
  %82 = call i32 @pci_write_config_dword(%struct.pci_dev* %77, i32 %78, i64 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %84 = load i32, i32* @MC_SSRCONTROL, align 4
  %85 = call i32 @pci_read_config_dword(%struct.pci_dev* %83, i32 %84, i64* %9)
  %86 = load i64, i64* @SSR_MODE_MASK, align 8
  %87 = xor i64 %86, -1
  %88 = load i64, i64* %9, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* @SSR_MODE_ENABLE, align 8
  %91 = load i64, i64* %9, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %73, %32
  %94 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %95 = load i32, i32* @MC_SSRCONTROL, align 4
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @pci_write_config_dword(%struct.pci_dev* %94, i32 %95, i64 %96)
  %98 = load i64, i64* %5, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %93, %70, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @write_and_test(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
