; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_dw_hdmi-imx.c_dw_hdmi_imx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_dw_hdmi-imx.c_dw_hdmi_imx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_hdmi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unable to get gpr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_hdmi*)* @dw_hdmi_imx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_imx_parse_dt(%struct.imx_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_hdmi*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.imx_hdmi* %0, %struct.imx_hdmi** %3, align 8
  %5 = load %struct.imx_hdmi*, %struct.imx_hdmi** %3, align 8
  %6 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.imx_hdmi*, %struct.imx_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.imx_hdmi*, %struct.imx_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.imx_hdmi*, %struct.imx_hdmi** %3, align 8
  %21 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.imx_hdmi*, %struct.imx_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
