; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr_clk.c_rv1_dump_clk_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr_clk.c_rv1_dump_clk_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_state_registers = type { i32, i32, i32, i32, i32 }
%struct.clk_bypass = type { i32, i32, i32 }
%struct.clk_mgr = type { i32 }
%struct.clk_mgr_internal = type { i32 }

@CLK0_CLK8_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK0_CLK8_BYPASS_CNTL = common dso_local global i32 0, align 4
@CLK0_CLK8_DS_CNTL = common dso_local global i32 0, align 4
@CLK0_CLK8_ALLOW_DS = common dso_local global i32 0, align 4
@CLK0_CLK10_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK0_CLK10_BYPASS_CNTL = common dso_local global i32 0, align 4
@CLK0_CLK11_CURRENT_CNT = common dso_local global i32 0, align 4
@CLK0_CLK11_BYPASS_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv1_dump_clk_registers(%struct.clk_state_registers* %0, %struct.clk_bypass* %1, %struct.clk_mgr* %2) #0 {
  %4 = alloca %struct.clk_state_registers*, align 8
  %5 = alloca %struct.clk_bypass*, align 8
  %6 = alloca %struct.clk_mgr*, align 8
  %7 = alloca %struct.clk_mgr_internal*, align 8
  store %struct.clk_state_registers* %0, %struct.clk_state_registers** %4, align 8
  store %struct.clk_bypass* %1, %struct.clk_bypass** %5, align 8
  store %struct.clk_mgr* %2, %struct.clk_mgr** %6, align 8
  %8 = load %struct.clk_mgr*, %struct.clk_mgr** %6, align 8
  %9 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %8)
  store %struct.clk_mgr_internal* %9, %struct.clk_mgr_internal** %7, align 8
  %10 = load i32, i32* @CLK0_CLK8_CURRENT_CNT, align 4
  %11 = call i32 @REG_READ(i32 %10)
  %12 = sdiv i32 %11, 10
  %13 = load %struct.clk_state_registers*, %struct.clk_state_registers** %4, align 8
  %14 = getelementptr inbounds %struct.clk_state_registers, %struct.clk_state_registers* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @CLK0_CLK8_BYPASS_CNTL, align 4
  %16 = call i32 @REG_READ(i32 %15)
  %17 = and i32 %16, 7
  %18 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %19 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %21 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %26 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %3
  %30 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %31 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* @CLK0_CLK8_DS_CNTL, align 4
  %34 = call i32 @REG_READ(i32 %33)
  %35 = sdiv i32 %34, 10
  %36 = load %struct.clk_state_registers*, %struct.clk_state_registers** %4, align 8
  %37 = getelementptr inbounds %struct.clk_state_registers, %struct.clk_state_registers* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @CLK0_CLK8_ALLOW_DS, align 4
  %39 = call i32 @REG_READ(i32 %38)
  %40 = load %struct.clk_state_registers*, %struct.clk_state_registers** %4, align 8
  %41 = getelementptr inbounds %struct.clk_state_registers, %struct.clk_state_registers* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @CLK0_CLK10_CURRENT_CNT, align 4
  %43 = call i32 @REG_READ(i32 %42)
  %44 = sdiv i32 %43, 10
  %45 = load %struct.clk_state_registers*, %struct.clk_state_registers** %4, align 8
  %46 = getelementptr inbounds %struct.clk_state_registers, %struct.clk_state_registers* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @CLK0_CLK10_BYPASS_CNTL, align 4
  %48 = call i32 @REG_READ(i32 %47)
  %49 = and i32 %48, 7
  %50 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %51 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %53 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %32
  %57 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %58 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %32
  %62 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %63 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @CLK0_CLK11_CURRENT_CNT, align 4
  %66 = call i32 @REG_READ(i32 %65)
  %67 = sdiv i32 %66, 10
  %68 = load %struct.clk_state_registers*, %struct.clk_state_registers** %4, align 8
  %69 = getelementptr inbounds %struct.clk_state_registers, %struct.clk_state_registers* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @CLK0_CLK11_BYPASS_CNTL, align 4
  %71 = call i32 @REG_READ(i32 %70)
  %72 = and i32 %71, 7
  %73 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %74 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %76 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %64
  %80 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %81 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %64
  %85 = load %struct.clk_bypass*, %struct.clk_bypass** %5, align 8
  %86 = getelementptr inbounds %struct.clk_bypass, %struct.clk_bypass* %85, i32 0, i32 2
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
