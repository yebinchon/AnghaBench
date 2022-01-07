; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr_vbios_smu.c_rn_vbios_smu_set_dispclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr_vbios_smu.c_rn_vbios_smu_set_dispclk.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rn_vbios_smu_set_dispclk(%struct.clk_mgr_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dmcu*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %9 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %10 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.dc*, %struct.dc** %13, align 8
  store %struct.dc* %14, %struct.dc** %6, align 8
  %15 = load %struct.dc*, %struct.dc** %6, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.dmcu*, %struct.dmcu** %18, align 8
  store %struct.dmcu* %19, %struct.dmcu** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 100
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 101, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %27 = load i32, i32* @VBIOSSMC_MSG_SetDispclkFreq, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @rn_vbios_smu_send_msg_with_param(%struct.clk_mgr_internal* %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.dc*, %struct.dc** %6, align 8
  %31 = getelementptr inbounds %struct.dc, %struct.dc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %25
  %38 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %39 = icmp ne %struct.dmcu* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %42 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %44, align 8
  %46 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %47 = call i64 %45(%struct.dmcu* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %40
  %50 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %51 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %57 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %59, align 8
  %61 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %62, 7
  %64 = call i32 %60(%struct.dmcu* %61, i32 %63)
  br label %65

65:                                               ; preds = %55, %49
  br label %66

66:                                               ; preds = %65, %40, %37
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 1000
  ret i32 %69
}

declare dso_local i32 @rn_vbios_smu_send_msg_with_param(%struct.clk_mgr_internal*, i32, i32) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
