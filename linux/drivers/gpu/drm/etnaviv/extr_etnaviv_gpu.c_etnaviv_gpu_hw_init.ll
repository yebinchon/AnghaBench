; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GC320 = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_TIME = common dso_local global i32 0, align 4
@VIVS_MC_DEBUG_MEMORY = common dso_local global i32 0, align 4
@VIVS_HI_AXI_CONFIG = common dso_local global i32 0, align 4
@GC2000 = common dso_local global i32 0, align 4
@VIVS_MC_BUS_CONFIG = common dso_local global i32 0, align 4
@VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG__MASK = common dso_local global i32 0, align 4
@VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG__MASK = common dso_local global i32 0, align 4
@ETNA_SEC_KERNEL = common dso_local global i64 0, align 8
@VIVS_MMUv2_AHB_CONTROL = common dso_local global i32 0, align 4
@VIVS_MMUv2_AHB_CONTROL_NONSEC_ACCESS = common dso_local global i32 0, align 4
@VIVS_HI_INTR_ENBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*)* @etnaviv_gpu_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gpu_hw_init(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %6 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %7 = load i32, i32* @GC320, align 4
  %8 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %6, i32 %7, i32 20487)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %12 = load i32, i32* @GC320, align 4
  %13 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %11, i32 %12, i32 21024)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %10, %1
  %16 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %17 = load i32, i32* @VIVS_HI_CHIP_TIME, align 4
  %18 = call i32 @gpu_read(%struct.etnaviv_gpu* %16, i32 %17)
  %19 = icmp ne i32 %18, 33956864
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %22 = load i32, i32* @VIVS_MC_DEBUG_MEMORY, align 4
  %23 = call i32 @gpu_read(%struct.etnaviv_gpu* %21, i32 %22)
  %24 = and i32 %23, -256
  store i32 %24, i32* %3, align 4
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 20487
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 12
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, 8
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %38 = load i32, i32* @VIVS_MC_DEBUG_MEMORY, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @gpu_write(%struct.etnaviv_gpu* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %15, %10
  %42 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %43 = call i32 @etnaviv_gpu_enable_mlcg(%struct.etnaviv_gpu* %42)
  %44 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %45 = load i32, i32* @VIVS_HI_AXI_CONFIG, align 4
  %46 = call i32 @VIVS_HI_AXI_CONFIG_AWCACHE(i32 2)
  %47 = call i32 @VIVS_HI_AXI_CONFIG_ARCACHE(i32 2)
  %48 = or i32 %46, %47
  %49 = call i32 @gpu_write(%struct.etnaviv_gpu* %44, i32 %45, i32 %48)
  %50 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %51 = load i32, i32* @GC2000, align 4
  %52 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %50, i32 %51, i32 20744)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %41
  %55 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %56 = load i32, i32* @VIVS_MC_BUS_CONFIG, align 4
  %57 = call i32 @gpu_read(%struct.etnaviv_gpu* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG__MASK, align 4
  %59 = load i32, i32* @VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG__MASK, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = call i32 @VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG(i32 1)
  %65 = call i32 @VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG(i32 0)
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %70 = load i32, i32* @VIVS_MC_BUS_CONFIG, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @gpu_write(%struct.etnaviv_gpu* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %54, %41
  %74 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %75 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ETNA_SEC_KERNEL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %81 = load i32, i32* @VIVS_MMUv2_AHB_CONTROL, align 4
  %82 = call i32 @gpu_read(%struct.etnaviv_gpu* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @VIVS_MMUv2_AHB_CONTROL_NONSEC_ACCESS, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %87 = load i32, i32* @VIVS_MMUv2_AHB_CONTROL, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @gpu_write(%struct.etnaviv_gpu* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %73
  %91 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %92 = call i32 @etnaviv_gpu_setup_pulse_eater(%struct.etnaviv_gpu* %91)
  %93 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %94 = load i32, i32* @VIVS_HI_INTR_ENBL, align 4
  %95 = call i32 @gpu_write(%struct.etnaviv_gpu* %93, i32 %94, i32 -1)
  ret void
}

declare dso_local i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @etnaviv_gpu_enable_mlcg(%struct.etnaviv_gpu*) #1

declare dso_local i32 @VIVS_HI_AXI_CONFIG_AWCACHE(i32) #1

declare dso_local i32 @VIVS_HI_AXI_CONFIG_ARCACHE(i32) #1

declare dso_local i32 @VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG(i32) #1

declare dso_local i32 @VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG(i32) #1

declare dso_local i32 @etnaviv_gpu_setup_pulse_eater(%struct.etnaviv_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
