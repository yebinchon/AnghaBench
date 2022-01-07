; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_read_clock_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_read_clock_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixCG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@ixCG_SPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@ixCG_SPLL_FUNC_CNTL_3 = common dso_local global i32 0, align 4
@ixCG_SPLL_FUNC_CNTL_4 = common dso_local global i32 0, align 4
@ixCG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@ixCG_SPLL_SPREAD_SPECTRUM_2 = common dso_local global i32 0, align 4
@mmDLL_CNTL = common dso_local global i32 0, align 4
@mmMCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@mmMPLL_AD_FUNC_CNTL = common dso_local global i32 0, align 4
@mmMPLL_DQ_FUNC_CNTL = common dso_local global i32 0, align 4
@mmMPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@mmMPLL_FUNC_CNTL_1 = common dso_local global i32 0, align 4
@mmMPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@mmMPLL_SS1 = common dso_local global i32 0, align 4
@mmMPLL_SS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_read_clock_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_read_clock_registers(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %7, %struct.smu7_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %12 = load i32, i32* @ixCG_SPLL_FUNC_CNTL, align 4
  %13 = call i8* @cgs_read_ind_register(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 14
  store i8* %13, i8** %16, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %21 = load i32, i32* @ixCG_SPLL_FUNC_CNTL_2, align 4
  %22 = call i8* @cgs_read_ind_register(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 13
  store i8* %22, i8** %25, align 8
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %30 = load i32, i32* @ixCG_SPLL_FUNC_CNTL_3, align 4
  %31 = call i8* @cgs_read_ind_register(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 12
  store i8* %31, i8** %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %39 = load i32, i32* @ixCG_SPLL_FUNC_CNTL_4, align 4
  %40 = call i8* @cgs_read_ind_register(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %42 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 11
  store i8* %40, i8** %43, align 8
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %48 = load i32, i32* @ixCG_SPLL_SPREAD_SPECTRUM, align 4
  %49 = call i8* @cgs_read_ind_register(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 10
  store i8* %49, i8** %52, align 8
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %57 = load i32, i32* @ixCG_SPLL_SPREAD_SPECTRUM_2, align 4
  %58 = call i8* @cgs_read_ind_register(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %60 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 9
  store i8* %58, i8** %61, align 8
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %63 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @mmDLL_CNTL, align 4
  %66 = call i8* @cgs_read_register(i32 %64, i32 %65)
  %67 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %68 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 8
  store i8* %66, i8** %69, align 8
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @mmMCLK_PWRMGT_CNTL, align 4
  %74 = call i8* @cgs_read_register(i32 %72, i32 %73)
  %75 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %76 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 7
  store i8* %74, i8** %77, align 8
  %78 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %79 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @mmMPLL_AD_FUNC_CNTL, align 4
  %82 = call i8* @cgs_read_register(i32 %80, i32 %81)
  %83 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %84 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  store i8* %82, i8** %85, align 8
  %86 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %87 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @mmMPLL_DQ_FUNC_CNTL, align 4
  %90 = call i8* @cgs_read_register(i32 %88, i32 %89)
  %91 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %92 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  store i8* %90, i8** %93, align 8
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %95 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @mmMPLL_FUNC_CNTL, align 4
  %98 = call i8* @cgs_read_register(i32 %96, i32 %97)
  %99 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %100 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  store i8* %98, i8** %101, align 8
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %103 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @mmMPLL_FUNC_CNTL_1, align 4
  %106 = call i8* @cgs_read_register(i32 %104, i32 %105)
  %107 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %108 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i8* %106, i8** %109, align 8
  %110 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %111 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @mmMPLL_FUNC_CNTL_2, align 4
  %114 = call i8* @cgs_read_register(i32 %112, i32 %113)
  %115 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %119 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @mmMPLL_SS1, align 4
  %122 = call i8* @cgs_read_register(i32 %120, i32 %121)
  %123 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %124 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %127 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @mmMPLL_SS2, align 4
  %130 = call i8* @cgs_read_register(i32 %128, i32 %129)
  %131 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %132 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  ret i32 0
}

declare dso_local i8* @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i8* @cgs_read_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
