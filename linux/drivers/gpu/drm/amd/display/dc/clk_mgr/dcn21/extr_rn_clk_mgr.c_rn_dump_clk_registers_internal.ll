; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_dump_clk_registers_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_dump_clk_registers_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rn_clk_internal = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.clk_mgr = type { i32 }
%struct.clk_mgr_internal = type { i32 }

@CLK1_CLK3_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK1_CLK3_BYPASS_CNTL = common dso_local global i32 0, align 4
@CLK1_CLK3_DS_CNTL = common dso_local global i32 0, align 4
@CLK1_CLK3_ALLOW_DS = common dso_local global i32 0, align 4
@CLK1_CLK1_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK1_CLK1_BYPASS_CNTL = common dso_local global i32 0, align 4
@CLK1_CLK2_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK1_CLK2_BYPASS_CNTL = common dso_local global i32 0, align 4
@CLK1_CLK0_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK1_CLK0_BYPASS_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rn_clk_internal*, %struct.clk_mgr*)* @rn_dump_clk_registers_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rn_dump_clk_registers_internal(%struct.rn_clk_internal* %0, %struct.clk_mgr* %1) #0 {
  %3 = alloca %struct.rn_clk_internal*, align 8
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.clk_mgr_internal*, align 8
  store %struct.rn_clk_internal* %0, %struct.rn_clk_internal** %3, align 8
  store %struct.clk_mgr* %1, %struct.clk_mgr** %4, align 8
  %6 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %7 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %6)
  store %struct.clk_mgr_internal* %7, %struct.clk_mgr_internal** %5, align 8
  %8 = load i32, i32* @CLK1_CLK3_CURRENT_CNT, align 4
  %9 = call i8* @REG_READ(i32 %8)
  %10 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %11 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %10, i32 0, i32 9
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @CLK1_CLK3_BYPASS_CNTL, align 4
  %13 = call i8* @REG_READ(i32 %12)
  %14 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %15 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @CLK1_CLK3_DS_CNTL, align 4
  %17 = call i8* @REG_READ(i32 %16)
  %18 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %19 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @CLK1_CLK3_ALLOW_DS, align 4
  %21 = call i8* @REG_READ(i32 %20)
  %22 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %23 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @CLK1_CLK1_CURRENT_CNT, align 4
  %25 = call i8* @REG_READ(i32 %24)
  %26 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %27 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @CLK1_CLK1_BYPASS_CNTL, align 4
  %29 = call i8* @REG_READ(i32 %28)
  %30 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %31 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @CLK1_CLK2_CURRENT_CNT, align 4
  %33 = call i8* @REG_READ(i32 %32)
  %34 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %35 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @CLK1_CLK2_BYPASS_CNTL, align 4
  %37 = call i8* @REG_READ(i32 %36)
  %38 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %39 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @CLK1_CLK0_CURRENT_CNT, align 4
  %41 = call i8* @REG_READ(i32 %40)
  %42 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %43 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @CLK1_CLK0_BYPASS_CNTL, align 4
  %45 = call i8* @REG_READ(i32 %44)
  %46 = load %struct.rn_clk_internal*, %struct.rn_clk_internal** %3, align 8
  %47 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i8* @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
