; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_init_arb_table_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_init_arb_table_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.fiji_smumgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMC_RAM_END = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_init_arb_table_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_init_arb_table_index(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.fiji_smumgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %10, %struct.fiji_smumgr** %4, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %13 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SMC_RAM_END, align 4
  %17 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %11, i32 %15, i32* %5, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 16777215
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* @MC_CG_ARB_FREQ_F1, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 24
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %32 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SMC_RAM_END, align 4
  %37 = call i32 @smu7_write_smc_sram_dword(%struct.pp_hwmgr* %30, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %22, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr*, i32, i32*, i32) #1

declare dso_local i32 @smu7_write_smc_sram_dword(%struct.pp_hwmgr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
