; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_rv1_determine_dppclk_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_rv1_determine_dppclk_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dc_clocks = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_mgr_internal*, %struct.dc_clocks*)* @rv1_determine_dppclk_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv1_determine_dppclk_threshold(%struct.clk_mgr_internal* %0, %struct.dc_clocks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_mgr_internal*, align 8
  %5 = alloca %struct.dc_clocks*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %4, align 8
  store %struct.dc_clocks* %1, %struct.dc_clocks** %5, align 8
  %10 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %11 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %14 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %19 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %22 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %20, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %29 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %32 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %37 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %35, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %2
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %50 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %45
  %53 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %54 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %60 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %99

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %67 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %99

69:                                               ; preds = %62
  br label %97

70:                                               ; preds = %2
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %75 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  br label %99

77:                                               ; preds = %70
  %78 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %79 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %87 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %3, align 4
  br label %99

89:                                               ; preds = %77
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.dc_clocks*, %struct.dc_clocks** %5, align 8
  %94 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %3, align 4
  br label %99

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %92, %85, %73, %65, %58, %48
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
