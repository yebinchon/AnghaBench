; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_set_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { i32, %struct.tegra_dc* }
%struct.tegra_dc = type { i32, %struct.device* }
%struct.device = type { i32 }

@DC_WIN_CORE_WINDOWGROUP_SET_CONTROL = common dso_local global i32 0, align 4
@OWNER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"window %u owned by head %u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"window %u not owned by head %u but %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_plane*, %struct.tegra_dc*)* @tegra_shared_plane_set_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_shared_plane_set_owner(%struct.tegra_plane* %0, %struct.tegra_dc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_plane*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_dc*, align 8
  %8 = alloca %struct.tegra_dc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tegra_plane* %0, %struct.tegra_plane** %4, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %5, align 8
  %13 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %14 = load i32, i32* @DC_WIN_CORE_WINDOWGROUP_SET_CONTROL, align 4
  %15 = call i32 @tegra_plane_offset(%struct.tegra_plane* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %16, i32 0, i32 1
  %18 = load %struct.tegra_dc*, %struct.tegra_dc** %17, align 8
  store %struct.tegra_dc* %18, %struct.tegra_dc** %7, align 8
  %19 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %20 = icmp ne %struct.tegra_dc* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi %struct.tegra_dc* [ %22, %21 ], [ %24, %23 ]
  store %struct.tegra_dc* %26, %struct.tegra_dc** %8, align 8
  %27 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %28 = icmp ne %struct.tegra_dc* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %30, i32 0, i32 1
  %32 = load %struct.device*, %struct.device** %31, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %35 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi %struct.device* [ %32, %29 ], [ %36, %33 ]
  store %struct.device* %38, %struct.device** %9, align 8
  %39 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.tegra_dc*, %struct.tegra_dc** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @tegra_dc_readl(%struct.tegra_dc* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @OWNER_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %49 = icmp ne %struct.tegra_dc* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @OWNER_MASK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dev_WARN(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %108

67:                                               ; preds = %54, %50, %37
  %68 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %69 = icmp ne %struct.tegra_dc* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @OWNER_MASK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.device*, %struct.device** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %78 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %70, %67
  %83 = load i32, i32* @OWNER_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %88 = icmp ne %struct.tegra_dc* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %91 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @OWNER(i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %100

96:                                               ; preds = %82
  %97 = load i32, i32* @OWNER_MASK, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.tegra_dc*, %struct.tegra_dc** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @tegra_dc_writel(%struct.tegra_dc* %101, i32 %102, i32 %103)
  %105 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %106 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %106, i32 0, i32 1
  store %struct.tegra_dc* %105, %struct.tegra_dc** %107, align 8
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %100, %60
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @tegra_plane_offset(%struct.tegra_plane*, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @OWNER(i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
