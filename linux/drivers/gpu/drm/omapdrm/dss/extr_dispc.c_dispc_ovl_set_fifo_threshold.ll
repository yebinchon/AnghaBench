; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_fifo_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_fifo_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@FEAT_REG_FIFOHIGHTHRESHOLD = common dso_local global i32 0, align 4
@FEAT_REG_FIFOLOWTHRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fifo(%d) threshold (bytes), old %u/%u, new %u/%u\0A\00", align 1
@FEAT_PRELOAD = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_ovl_set_fifo_threshold(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dispc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %15 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %13, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %13, align 4
  %27 = srem i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %38 = load i32, i32* @FEAT_REG_FIFOHIGHTHRESHOLD, align 4
  %39 = call i32 @dispc_get_reg_field(%struct.dispc_device* %37, i32 %38, i32* %9, i32* %10)
  %40 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %41 = load i32, i32* @FEAT_REG_FIFOLOWTHRESHOLD, align 4
  %42 = call i32 @dispc_get_reg_field(%struct.dispc_device* %40, i32 %41, i32* %11, i32* %12)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DISPC_OVL_FIFO_THRESHOLD(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @REG_GET(%struct.dispc_device* %44, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @DISPC_OVL_FIFO_THRESHOLD(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @REG_GET(%struct.dispc_device* %52, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i32 @DSSDBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %51, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @DISPC_OVL_FIFO_THRESHOLD(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @FLD_VAL(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @FLD_VAL(i32 %74, i32 %75, i32 %76)
  %78 = or i32 %73, %77
  %79 = call i32 @dispc_write_reg(%struct.dispc_device* %67, i32 %69, i32 %78)
  %80 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %81 = load i32, i32* @FEAT_PRELOAD, align 4
  %82 = call i64 @dispc_has_feature(%struct.dispc_device* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %4
  %85 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %86 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @OMAP_DSS_WB, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @DISPC_OVL_PRELOAD(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @min(i32 %99, i32 4095)
  %101 = call i32 @dispc_write_reg(%struct.dispc_device* %96, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %95, %91, %84, %4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dispc_get_reg_field(%struct.dispc_device*, i32, i32*, i32*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_FIFO_THRESHOLD(i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_OVL_PRELOAD(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
