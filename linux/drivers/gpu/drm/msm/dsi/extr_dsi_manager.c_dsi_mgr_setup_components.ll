; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_setup_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_setup_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { i32, i32 }
%struct.msm_dsi_pll = type { i32 }

@DSI_CLOCK_MASTER = common dso_local global i32 0, align 4
@DSI_CLOCK_SLAVE = common dso_local global i32 0, align 4
@MSM_DSI_PHY_STANDALONE = common dso_local global i32 0, align 4
@MSM_DSI_PHY_MASTER = common dso_local global i32 0, align 4
@MSM_DSI_PHY_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dsi_mgr_setup_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_mgr_setup_components(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi*, align 8
  %5 = alloca %struct.msm_dsi*, align 8
  %6 = alloca %struct.msm_dsi*, align 8
  %7 = alloca %struct.msm_dsi*, align 8
  %8 = alloca %struct.msm_dsi_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_dsi*, align 8
  %11 = alloca %struct.msm_dsi*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %12)
  store %struct.msm_dsi* %13, %struct.msm_dsi** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.msm_dsi* @dsi_mgr_get_other_dsi(i32 %14)
  store %struct.msm_dsi* %15, %struct.msm_dsi** %5, align 8
  %16 = load i32, i32* @DSI_CLOCK_MASTER, align 4
  %17 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %16)
  store %struct.msm_dsi* %17, %struct.msm_dsi** %6, align 8
  %18 = load i32, i32* @DSI_CLOCK_SLAVE, align 4
  %19 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %18)
  store %struct.msm_dsi* %19, %struct.msm_dsi** %7, align 8
  %20 = call i32 (...) @IS_DUAL_DSI()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %1
  %23 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %24 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @msm_dsi_host_register(i32 %25, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %133

31:                                               ; preds = %22
  %32 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %33 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MSM_DSI_PHY_STANDALONE, align 4
  %36 = call i32 @msm_dsi_phy_set_usecase(i32 %34, i32 %35)
  %37 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %38 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.msm_dsi_pll* @msm_dsi_phy_get_pll(i32 %39)
  store %struct.msm_dsi_pll* %40, %struct.msm_dsi_pll** %8, align 8
  %41 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %42 = call i64 @IS_ERR(%struct.msm_dsi_pll* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.msm_dsi_pll* %45)
  store i32 %46, i32* %2, align 4
  br label %133

47:                                               ; preds = %31
  %48 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %49 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %52 = call i32 @msm_dsi_host_set_src_pll(i32 %50, %struct.msm_dsi_pll* %51)
  store i32 %52, i32* %9, align 4
  br label %131

53:                                               ; preds = %1
  %54 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  %55 = icmp ne %struct.msm_dsi* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %130

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @IS_MASTER_DSI_LINK(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  br label %65

63:                                               ; preds = %57
  %64 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi %struct.msm_dsi* [ %62, %61 ], [ %64, %63 ]
  store %struct.msm_dsi* %66, %struct.msm_dsi** %10, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @IS_MASTER_DSI_LINK(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  br label %74

72:                                               ; preds = %65
  %73 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi %struct.msm_dsi* [ %71, %70 ], [ %73, %72 ]
  store %struct.msm_dsi* %75, %struct.msm_dsi** %11, align 8
  %76 = load %struct.msm_dsi*, %struct.msm_dsi** %11, align 8
  %77 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @msm_dsi_host_register(i32 %78, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %2, align 4
  br label %133

84:                                               ; preds = %74
  %85 = load %struct.msm_dsi*, %struct.msm_dsi** %10, align 8
  %86 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @msm_dsi_host_register(i32 %87, i32 1)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %133

93:                                               ; preds = %84
  %94 = load %struct.msm_dsi*, %struct.msm_dsi** %6, align 8
  %95 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MSM_DSI_PHY_MASTER, align 4
  %98 = call i32 @msm_dsi_phy_set_usecase(i32 %96, i32 %97)
  %99 = load %struct.msm_dsi*, %struct.msm_dsi** %7, align 8
  %100 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MSM_DSI_PHY_SLAVE, align 4
  %103 = call i32 @msm_dsi_phy_set_usecase(i32 %101, i32 %102)
  %104 = load %struct.msm_dsi*, %struct.msm_dsi** %6, align 8
  %105 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.msm_dsi_pll* @msm_dsi_phy_get_pll(i32 %106)
  store %struct.msm_dsi_pll* %107, %struct.msm_dsi_pll** %8, align 8
  %108 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %109 = call i64 @IS_ERR(%struct.msm_dsi_pll* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %93
  %112 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %113 = call i32 @PTR_ERR(%struct.msm_dsi_pll* %112)
  store i32 %113, i32* %2, align 4
  br label %133

114:                                              ; preds = %93
  %115 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %116 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %119 = call i32 @msm_dsi_host_set_src_pll(i32 %117, %struct.msm_dsi_pll* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %2, align 4
  br label %133

124:                                              ; preds = %114
  %125 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  %126 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %129 = call i32 @msm_dsi_host_set_src_pll(i32 %127, %struct.msm_dsi_pll* %128)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %124, %56
  br label %131

131:                                              ; preds = %130, %47
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %122, %111, %91, %82, %44, %29
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local %struct.msm_dsi* @dsi_mgr_get_other_dsi(i32) #1

declare dso_local i32 @IS_DUAL_DSI(...) #1

declare dso_local i32 @msm_dsi_host_register(i32, i32) #1

declare dso_local i32 @msm_dsi_phy_set_usecase(i32, i32) #1

declare dso_local %struct.msm_dsi_pll* @msm_dsi_phy_get_pll(i32) #1

declare dso_local i64 @IS_ERR(%struct.msm_dsi_pll*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_dsi_pll*) #1

declare dso_local i32 @msm_dsi_host_set_src_pll(i32, %struct.msm_dsi_pll*) #1

declare dso_local i64 @IS_MASTER_DSI_LINK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
