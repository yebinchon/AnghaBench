; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cio_enable_lane_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cio_enable_lane_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSI_DSIPHY_CFG10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*, i32, i32)* @dsi_cio_enable_lane_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_cio_enable_lane_override(%struct.dsi_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %12 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 3
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 22, i32 26
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %66, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %17
  %24 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %25 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 1
  %44 = add nsw i32 %39, %43
  %45 = shl i32 1, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %37, %23
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 2
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = add nsw i32 %56, %60
  %62 = shl i32 1, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %54, %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %17

69:                                               ; preds = %17
  %70 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %71 = load i32, i32* @DSI_DSIPHY_CFG10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @REG_FLD_MOD(%struct.dsi_data* %70, i32 %71, i32 %72, i32 %73, i32 17)
  %75 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %76 = load i32, i32* @DSI_DSIPHY_CFG10, align 4
  %77 = call i32 @REG_FLD_MOD(%struct.dsi_data* %75, i32 %76, i32 1, i32 27, i32 27)
  ret void
}

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
