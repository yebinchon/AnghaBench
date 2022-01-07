; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_copy_and_switch_arb_sets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_copy_and_switch_arb_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@mmMC_ARB_DRAM_TIMING = common dso_local global i32 0, align 4
@mmMC_ARB_DRAM_TIMING2 = common dso_local global i32 0, align 4
@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@STATE0 = common dso_local global i32 0, align 4
@mmMC_ARB_DRAM_TIMING_1 = common dso_local global i32 0, align 4
@mmMC_ARB_DRAM_TIMING2_1 = common dso_local global i32 0, align 4
@STATE1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mmMC_CG_CONFIG = common dso_local global i32 0, align 4
@MC_ARB_CG = common dso_local global i32 0, align 4
@CG_ARB_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu7_copy_and_switch_arb_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_copy_and_switch_arb_sets(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %47 [
    i32 129, label %13
    i32 128, label %30
  ]

13:                                               ; preds = %3
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @mmMC_ARB_DRAM_TIMING, align 4
  %18 = call i32 @cgs_read_register(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @mmMC_ARB_DRAM_TIMING2, align 4
  %23 = call i32 @cgs_read_register(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %28 = load i32, i32* @STATE0, align 4
  %29 = call i32 @PHM_READ_FIELD(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @mmMC_ARB_DRAM_TIMING_1, align 4
  %35 = call i32 @cgs_read_register(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @mmMC_ARB_DRAM_TIMING2_1, align 4
  %40 = call i32 @cgs_read_register(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %42 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %45 = load i32, i32* @STATE1, align 4
  %46 = call i32 @PHM_READ_FIELD(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %116

50:                                               ; preds = %30, %13
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %92 [
    i32 129, label %52
    i32 128, label %72
  ]

52:                                               ; preds = %50
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @mmMC_ARB_DRAM_TIMING, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @cgs_write_register(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @mmMC_ARB_DRAM_TIMING2, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @cgs_write_register(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %69 = load i32, i32* @STATE0, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @PHM_WRITE_FIELD(i32 %67, i32 %68, i32 %69, i32 %70)
  br label %95

72:                                               ; preds = %50
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @mmMC_ARB_DRAM_TIMING_1, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @cgs_write_register(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @mmMC_ARB_DRAM_TIMING2_1, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @cgs_write_register(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %86 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %89 = load i32, i32* @STATE1, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @PHM_WRITE_FIELD(i32 %87, i32 %88, i32 %89, i32 %90)
  br label %95

92:                                               ; preds = %50
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %116

95:                                               ; preds = %72, %52
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %97 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @mmMC_CG_CONFIG, align 4
  %100 = call i32 @cgs_read_register(i32 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, 15
  store i32 %102, i32* %11, align 4
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %104 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @mmMC_CG_CONFIG, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @cgs_write_register(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MC_ARB_CG, align 4
  %113 = load i32, i32* @CG_ARB_REQ, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @PHM_WRITE_FIELD(i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %95, %92, %47
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @cgs_read_register(i32, i32) #1

declare dso_local i32 @PHM_READ_FIELD(i32, i32, i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @PHM_WRITE_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
