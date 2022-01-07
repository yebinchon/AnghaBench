; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_te_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_te_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.mcde_dsi = type { i64 }

@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_TE_REQ = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_MAIN_SETTINGS = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_CLR_TE_RECEIVED_CLR = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_STS_CLR_ACKNOWLEDGE_WITH_ERR_RECEIVED_CLR = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_STS_CLR = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_CTL = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_CTL_TE_RECEIVED_EN = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_STS_CTL_ACKNOWLEDGE_WITH_ERR_EN = common dso_local global i32 0, align 4
@DSI_CMD_MODE_STS_CLR_ERR_NO_TE_CLR = common dso_local global i32 0, align 4
@DSI_CMD_MODE_STS_CLR_ERR_TE_MISS_CLR = common dso_local global i32 0, align 4
@DSI_CMD_MODE_STS_CLR = common dso_local global i64 0, align 8
@DSI_CMD_MODE_STS_CTL = common dso_local global i64 0, align 8
@DSI_CMD_MODE_STS_CTL_ERR_NO_TE_EN = common dso_local global i32 0, align 4
@DSI_CMD_MODE_STS_CTL_ERR_TE_MISS_EN = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_SEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcde_dsi_te_request(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.mcde_dsi*, align 8
  %4 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %5 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mcde_dsi* @host_to_mcde_dsi(i32 %7)
  store %struct.mcde_dsi* %8, %struct.mcde_dsi** %3, align 8
  %9 = load i32, i32* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_TE_REQ, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT, align 4
  %11 = shl i32 0, %10
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT, align 4
  %15 = shl i32 2, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1, align 4
  %22 = load i32, i32* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %28 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* @DSI_DIRECT_CMD_STS_CLR_TE_RECEIVED_CLR, align 4
  %34 = load i32, i32* @DSI_DIRECT_CMD_STS_CLR_ACKNOWLEDGE_WITH_ERR_RECEIVED_CLR, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %37 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DSI_DIRECT_CMD_STS_CLR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %43 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DSI_DIRECT_CMD_STS_CTL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @DSI_DIRECT_CMD_STS_CTL_TE_RECEIVED_EN, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @DSI_DIRECT_CMD_STS_CTL_ACKNOWLEDGE_WITH_ERR_EN, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %56 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DSI_DIRECT_CMD_STS_CTL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load i32, i32* @DSI_CMD_MODE_STS_CLR_ERR_NO_TE_CLR, align 4
  %62 = load i32, i32* @DSI_CMD_MODE_STS_CLR_ERR_TE_MISS_CLR, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %65 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DSI_CMD_MODE_STS_CLR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %71 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DSI_CMD_MODE_STS_CTL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl(i64 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @DSI_CMD_MODE_STS_CTL_ERR_NO_TE_EN, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @DSI_CMD_MODE_STS_CTL_ERR_TE_MISS_EN, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %84 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DSI_CMD_MODE_STS_CTL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %90 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DSI_DIRECT_CMD_SEND, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 1, i64 %93)
  ret void
}

declare dso_local %struct.mcde_dsi* @host_to_mcde_dsi(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
