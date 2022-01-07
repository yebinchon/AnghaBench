; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr_vbios_smu.c_rv1_vbios_smu_set_dispclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr_vbios_smu.c_rv1_vbios_smu_set_dispclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.dmcu*, i32)*, i64 (%struct.dmcu*)* }

@VBIOSSMC_MSG_SetDispclkFreq = common dso_local global i32 0, align 4
@MP1_SMN_C2PMSG_83 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv1_vbios_smu_set_dispclk(%struct.clk_mgr_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dmcu*, align 8
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %8 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %9 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.dc*, %struct.dc** %12, align 8
  store %struct.dc* %13, %struct.dc** %6, align 8
  %14 = load %struct.dc*, %struct.dc** %6, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.dmcu*, %struct.dmcu** %17, align 8
  store %struct.dmcu* %18, %struct.dmcu** %7, align 8
  %19 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %20 = load i32, i32* @VBIOSSMC_MSG_SetDispclkFreq, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 1000
  %23 = call i32 @rv1_vbios_smu_send_msg_with_param(%struct.clk_mgr_internal* %19, i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @MP1_SMN_C2PMSG_83, align 4
  %25 = call i32 @REG_READ(i32 %24)
  %26 = mul nsw i32 %25, 1000
  store i32 %26, i32* %5, align 4
  %27 = load %struct.dc*, %struct.dc** %6, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %2
  %35 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %36 = icmp ne %struct.dmcu* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %39 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %41, align 8
  %43 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %44 = call i64 %42(%struct.dmcu* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %37
  %47 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %48 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %54 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %56, align 8
  %58 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 %59, 7
  %61 = call i32 %57(%struct.dmcu* %58, i32 %60)
  br label %62

62:                                               ; preds = %52, %46
  br label %63

63:                                               ; preds = %62, %37, %34
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 1000
  ret i32 %66
}

declare dso_local i32 @rv1_vbios_smu_send_msg_with_param(%struct.clk_mgr_internal*, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
