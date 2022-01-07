; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.cdns_dsi_input = type { i32 }
%struct.cdns_dsi = type { %struct.TYPE_2__, %struct.cdns_dsi_output }
%struct.TYPE_2__ = type { i32 }
%struct.cdns_dsi_output = type { i32 }

@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"cdns-dsi driver is only compatible with DRM devices supporting atomic updates\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @cdns_dsi_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.cdns_dsi_input*, align 8
  %5 = alloca %struct.cdns_dsi*, align 8
  %6 = alloca %struct.cdns_dsi_output*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %8 = call %struct.cdns_dsi_input* @bridge_to_cdns_dsi_input(%struct.drm_bridge* %7)
  store %struct.cdns_dsi_input* %8, %struct.cdns_dsi_input** %4, align 8
  %9 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %4, align 8
  %10 = call %struct.cdns_dsi* @input_to_dsi(%struct.cdns_dsi_input* %9)
  store %struct.cdns_dsi* %10, %struct.cdns_dsi** %5, align 8
  %11 = load %struct.cdns_dsi*, %struct.cdns_dsi** %5, align 8
  %12 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %11, i32 0, i32 1
  store %struct.cdns_dsi_output* %12, %struct.cdns_dsi_output** %6, align 8
  %13 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DRIVER_ATOMIC, align 4
  %17 = call i32 @drm_core_check_feature(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.cdns_dsi*, %struct.cdns_dsi** %5, align 8
  %21 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %29 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %6, align 8
  %32 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %35 = call i32 @drm_bridge_attach(i32 %30, i32 %33, %struct.drm_bridge* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.cdns_dsi_input* @bridge_to_cdns_dsi_input(%struct.drm_bridge*) #1

declare dso_local %struct.cdns_dsi* @input_to_dsi(%struct.cdns_dsi_input*) #1

declare dso_local i32 @drm_core_check_feature(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_bridge_attach(i32, i32, %struct.drm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
