; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32 }

@SUN6I_DSI_INST_JUMP_SEL_REG = common dso_local global i32 0, align 4
@DSI_INST_ID_LPDT = common dso_local global i32 0, align 4
@DSI_INST_ID_LP11 = common dso_local global i32 0, align 4
@DSI_INST_ID_END = common dso_local global i32 0, align 4
@DSI_INST_ID_DLY = common dso_local global i32 0, align 4
@DSI_INST_ID_TBA = common dso_local global i32 0, align 4
@DSI_INST_ID_HSC = common dso_local global i32 0, align 4
@DSI_INST_ID_NOP = common dso_local global i32 0, align 4
@DSI_INST_ID_HSD = common dso_local global i32 0, align 4
@DSI_INST_ID_HSCEXIT = common dso_local global i32 0, align 4
@SUN6I_DSI_INST_FUNC_LANE_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_dsi*, i32)* @sun6i_dsi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_start(%struct.sun6i_dsi* %0, i32 %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %91 [
    i32 128, label %6
    i32 129, label %21
    i32 131, label %46
    i32 130, label %61
  ]

6:                                                ; preds = %2
  %7 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SUN6I_DSI_INST_JUMP_SEL_REG, align 4
  %11 = load i32, i32* @DSI_INST_ID_LPDT, align 4
  %12 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %13 = mul nsw i32 4, %12
  %14 = shl i32 %11, %13
  %15 = load i32, i32* @DSI_INST_ID_END, align 4
  %16 = load i32, i32* @DSI_INST_ID_LPDT, align 4
  %17 = mul nsw i32 4, %16
  %18 = shl i32 %15, %17
  %19 = or i32 %14, %18
  %20 = call i32 @regmap_write(i32 %9, i32 %10, i32 %19)
  br label %101

21:                                               ; preds = %2
  %22 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %23 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SUN6I_DSI_INST_JUMP_SEL_REG, align 4
  %26 = load i32, i32* @DSI_INST_ID_LPDT, align 4
  %27 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %28 = mul nsw i32 4, %27
  %29 = shl i32 %26, %28
  %30 = load i32, i32* @DSI_INST_ID_DLY, align 4
  %31 = load i32, i32* @DSI_INST_ID_LPDT, align 4
  %32 = mul nsw i32 4, %31
  %33 = shl i32 %30, %32
  %34 = or i32 %29, %33
  %35 = load i32, i32* @DSI_INST_ID_TBA, align 4
  %36 = load i32, i32* @DSI_INST_ID_DLY, align 4
  %37 = mul nsw i32 4, %36
  %38 = shl i32 %35, %37
  %39 = or i32 %34, %38
  %40 = load i32, i32* @DSI_INST_ID_END, align 4
  %41 = load i32, i32* @DSI_INST_ID_TBA, align 4
  %42 = mul nsw i32 4, %41
  %43 = shl i32 %40, %42
  %44 = or i32 %39, %43
  %45 = call i32 @regmap_write(i32 %24, i32 %25, i32 %44)
  br label %101

46:                                               ; preds = %2
  %47 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %48 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SUN6I_DSI_INST_JUMP_SEL_REG, align 4
  %51 = load i32, i32* @DSI_INST_ID_HSC, align 4
  %52 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %53 = mul nsw i32 4, %52
  %54 = shl i32 %51, %53
  %55 = load i32, i32* @DSI_INST_ID_END, align 4
  %56 = load i32, i32* @DSI_INST_ID_HSC, align 4
  %57 = mul nsw i32 4, %56
  %58 = shl i32 %55, %57
  %59 = or i32 %54, %58
  %60 = call i32 @regmap_write(i32 %49, i32 %50, i32 %59)
  br label %101

61:                                               ; preds = %2
  %62 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %63 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SUN6I_DSI_INST_JUMP_SEL_REG, align 4
  %66 = load i32, i32* @DSI_INST_ID_NOP, align 4
  %67 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %68 = mul nsw i32 4, %67
  %69 = shl i32 %66, %68
  %70 = load i32, i32* @DSI_INST_ID_HSD, align 4
  %71 = load i32, i32* @DSI_INST_ID_NOP, align 4
  %72 = mul nsw i32 4, %71
  %73 = shl i32 %70, %72
  %74 = or i32 %69, %73
  %75 = load i32, i32* @DSI_INST_ID_DLY, align 4
  %76 = load i32, i32* @DSI_INST_ID_HSD, align 4
  %77 = mul nsw i32 4, %76
  %78 = shl i32 %75, %77
  %79 = or i32 %74, %78
  %80 = load i32, i32* @DSI_INST_ID_NOP, align 4
  %81 = load i32, i32* @DSI_INST_ID_DLY, align 4
  %82 = mul nsw i32 4, %81
  %83 = shl i32 %80, %82
  %84 = or i32 %79, %83
  %85 = load i32, i32* @DSI_INST_ID_END, align 4
  %86 = load i32, i32* @DSI_INST_ID_HSCEXIT, align 4
  %87 = mul nsw i32 4, %86
  %88 = shl i32 %85, %87
  %89 = or i32 %84, %88
  %90 = call i32 @regmap_write(i32 %64, i32 %65, i32 %89)
  br label %101

91:                                               ; preds = %2
  %92 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %93 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SUN6I_DSI_INST_JUMP_SEL_REG, align 4
  %96 = load i32, i32* @DSI_INST_ID_END, align 4
  %97 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %98 = mul nsw i32 4, %97
  %99 = shl i32 %96, %98
  %100 = call i32 @regmap_write(i32 %94, i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %91, %61, %46, %21, %6
  %102 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %103 = call i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi* %102)
  %104 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %105 = call i32 @sun6i_dsi_inst_commit(%struct.sun6i_dsi* %104)
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 131
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %110 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %113 = call i32 @SUN6I_DSI_INST_FUNC_REG(i32 %112)
  %114 = load i32, i32* @SUN6I_DSI_INST_FUNC_LANE_CEN, align 4
  %115 = call i32 @regmap_write_bits(i32 %111, i32 %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %108, %101
  ret i32 0
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi*) #1

declare dso_local i32 @sun6i_dsi_inst_commit(%struct.sun6i_dsi*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_INST_FUNC_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
