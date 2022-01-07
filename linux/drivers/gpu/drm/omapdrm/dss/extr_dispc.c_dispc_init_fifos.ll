; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_init_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_init_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@FEAT_REG_FIFOSIZE = common dso_local global i32 0, align 4
@DISPC_GLOBAL_BUFFER = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i64 0, align 8
@OMAP_DSS_GFX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_init_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_init_fifos(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %18 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %19 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %24 = load i32, i32* @FEAT_REG_FIFOSIZE, align 4
  %25 = call i32 @dispc_get_reg_field(%struct.dispc_device* %23, i32 %24, i32* %5, i32* %6)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %58, %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %29 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %26
  %35 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DISPC_OVL_FIFO_SIZE_STATUS(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @REG_GET(%struct.dispc_device* %35, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %46 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %53 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %34
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %63 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %61
  %69 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %70 = load i32, i32* @DISPC_GLOBAL_BUFFER, align 4
  %71 = call i32 @dispc_read_reg(%struct.dispc_device* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @FLD_MOD(i32 %72, i32 4, i32 2, i32 0)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @FLD_MOD(i32 %74, i32 4, i32 5, i32 3)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @FLD_MOD(i32 %76, i32 0, i32 26, i32 24)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @FLD_MOD(i32 %78, i32 0, i32 29, i32 27)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %81 = load i32, i32* @DISPC_GLOBAL_BUFFER, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dispc_write_reg(%struct.dispc_device* %80, i32 %81, i32 %82)
  %84 = load i64, i64* @OMAP_DSS_WB, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %87 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @OMAP_DSS_GFX, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i64, i64* @OMAP_DSS_GFX, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %94 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @OMAP_DSS_WB, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %68, %61
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %115, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %102 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %105 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 @dispc_ovl_compute_fifo_thresholds(%struct.dispc_device* %105, i64 %107, i32* %10, i32* %11, i32 0, i32 0)
  %109 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @dispc_ovl_set_fifo_threshold(%struct.dispc_device* %109, i64 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %99

118:                                              ; preds = %99
  %119 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %120 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %126 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %127 = load i64, i64* @OMAP_DSS_WB, align 8
  %128 = call i32 @dispc_ovl_compute_fifo_thresholds(%struct.dispc_device* %126, i64 %127, i32* %14, i32* %15, i32 0, i32 0)
  %129 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %130 = load i64, i64* @OMAP_DSS_WB, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @dispc_ovl_set_fifo_threshold(%struct.dispc_device* %129, i64 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %125, %118
  ret void
}

declare dso_local i32 @dispc_get_reg_field(%struct.dispc_device*, i32, i32*, i32*) #1

declare dso_local i32 @REG_GET(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_FIFO_SIZE_STATUS(i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_get_num_ovls(%struct.dispc_device*) #1

declare dso_local i32 @dispc_ovl_compute_fifo_thresholds(%struct.dispc_device*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_fifo_threshold(%struct.dispc_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
