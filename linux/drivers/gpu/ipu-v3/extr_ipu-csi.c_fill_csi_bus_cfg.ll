; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_fill_csi_bus_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_fill_csi_bus_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi_bus_config = type { i32, i32, i32, i32, i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@IPU_CSI_CLK_MODE_GATED_CLK = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@IPU_CSI_CLK_MODE_CCIR656_INTERLACED = common dso_local global i32 0, align 4
@IPU_CSI_CLK_MODE_CCIR656_PROGRESSIVE = common dso_local global i32 0, align 4
@IPU_CSI_CLK_MODE_NONGATED_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_csi_bus_config*, %struct.v4l2_mbus_config*, %struct.v4l2_mbus_framefmt*)* @fill_csi_bus_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_csi_bus_cfg(%struct.ipu_csi_bus_config* %0, %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_framefmt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_csi_bus_config*, align 8
  %6 = alloca %struct.v4l2_mbus_config*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32, align 4
  store %struct.ipu_csi_bus_config* %0, %struct.ipu_csi_bus_config** %5, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %6, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %7, align 8
  %9 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %10 = call i32 @memset(%struct.ipu_csi_bus_config* %9, i32 0, i32 20)
  %11 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mbus_code_to_bus_cfg(%struct.ipu_csi_bus_config* %11, i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %92

23:                                               ; preds = %3
  %24 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %90 [
    i32 128, label %27
    i32 130, label %63
    i32 129, label %86
  ]

27:                                               ; preds = %23
  %28 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %29 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %39 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %49 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %59 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @IPU_CSI_CLK_MODE_GATED_CLK, align 4
  %61 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %62 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  br label %91

63:                                               ; preds = %23
  %64 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %65 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %63
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71, %63
  %78 = load i32, i32* @IPU_CSI_CLK_MODE_CCIR656_INTERLACED, align 4
  %79 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %80 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @IPU_CSI_CLK_MODE_CCIR656_PROGRESSIVE, align 4
  %83 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %84 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %91

86:                                               ; preds = %23
  %87 = load i32, i32* @IPU_CSI_CLK_MODE_NONGATED_CLK, align 4
  %88 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %89 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  br label %91

90:                                               ; preds = %23
  br label %91

91:                                               ; preds = %90, %86, %85, %27
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.ipu_csi_bus_config*, i32, i32) #1

declare dso_local i32 @mbus_code_to_bus_cfg(%struct.ipu_csi_bus_config*, i32, i32) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
