; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_mbus_code_to_bus_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_mbus_code_to_bus_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi_bus_config = type { i8*, i8*, i8* }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_FMT_RGB565 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_BAYER = common dso_local global i8* null, align 8
@MIPI_DT_RGB565 = common dso_local global i8* null, align 8
@IPU_CSI_DATA_WIDTH_8 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_RGB444 = common dso_local global i8* null, align 8
@MIPI_DT_RGB444 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_RGB555 = common dso_local global i8* null, align 8
@MIPI_DT_RGB555 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_RGB_YUV444 = common dso_local global i8* null, align 8
@MIPI_DT_RGB888 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_YUV422_UYVY = common dso_local global i8* null, align 8
@MIPI_DT_YUV422 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_YUV422_YUYV = common dso_local global i8* null, align 8
@IPU_CSI_DATA_WIDTH_16 = common dso_local global i8* null, align 8
@MIPI_DT_RAW8 = common dso_local global i8* null, align 8
@MIPI_DT_RAW10 = common dso_local global i8* null, align 8
@IPU_CSI_DATA_WIDTH_10 = common dso_local global i8* null, align 8
@MIPI_DT_RAW12 = common dso_local global i8* null, align 8
@IPU_CSI_DATA_WIDTH_12 = common dso_local global i8* null, align 8
@CSI_SENS_CONF_DATA_FMT_JPEG = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_csi_bus_config*, i32, i32)* @mbus_code_to_bus_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbus_code_to_bus_cfg(%struct.ipu_csi_bus_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_csi_bus_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipu_csi_bus_config* %0, %struct.ipu_csi_bus_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %138 [
    i32 165, label %9
    i32 164, label %9
    i32 157, label %9
    i32 156, label %9
    i32 161, label %28
    i32 160, label %28
    i32 159, label %38
    i32 158, label %38
    i32 155, label %48
    i32 163, label %48
    i32 133, label %58
    i32 128, label %68
    i32 134, label %78
    i32 129, label %78
    i32 147, label %88
    i32 143, label %88
    i32 139, label %88
    i32 135, label %88
    i32 130, label %88
    i32 149, label %98
    i32 145, label %98
    i32 141, label %98
    i32 137, label %98
    i32 153, label %98
    i32 152, label %98
    i32 151, label %98
    i32 150, label %98
    i32 154, label %108
    i32 146, label %108
    i32 142, label %108
    i32 138, label %108
    i32 132, label %108
    i32 148, label %118
    i32 144, label %118
    i32 140, label %118
    i32 136, label %118
    i32 131, label %118
    i32 162, label %128
  ]

9:                                                ; preds = %3, %3, %3, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_RGB565, align 8
  %15 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %16 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  br label %21

17:                                               ; preds = %9
  %18 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_BAYER, align 8
  %19 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %20 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i8*, i8** @MIPI_DT_RGB565, align 8
  %23 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %24 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %26 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %27 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %141

28:                                               ; preds = %3, %3
  %29 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_RGB444, align 8
  %30 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %31 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @MIPI_DT_RGB444, align 8
  %33 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %36 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %37 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %141

38:                                               ; preds = %3, %3
  %39 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_RGB555, align 8
  %40 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %41 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @MIPI_DT_RGB555, align 8
  %43 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %44 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %46 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %47 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %141

48:                                               ; preds = %3, %3
  %49 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_RGB_YUV444, align 8
  %50 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %51 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @MIPI_DT_RGB888, align 8
  %53 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %54 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %56 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %57 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %141

58:                                               ; preds = %3
  %59 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_YUV422_UYVY, align 8
  %60 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %61 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @MIPI_DT_YUV422, align 8
  %63 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %64 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %66 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %67 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %141

68:                                               ; preds = %3
  %69 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_YUV422_YUYV, align 8
  %70 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %71 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @MIPI_DT_YUV422, align 8
  %73 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %74 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %76 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %77 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %141

78:                                               ; preds = %3, %3
  %79 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_BAYER, align 8
  %80 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %81 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @MIPI_DT_YUV422, align 8
  %83 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %84 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @IPU_CSI_DATA_WIDTH_16, align 8
  %86 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %87 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %141

88:                                               ; preds = %3, %3, %3, %3, %3
  %89 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_BAYER, align 8
  %90 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %91 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @MIPI_DT_RAW8, align 8
  %93 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %94 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %96 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %97 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %141

98:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %99 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_BAYER, align 8
  %100 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %101 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @MIPI_DT_RAW10, align 8
  %103 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %104 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %106 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %107 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %141

108:                                              ; preds = %3, %3, %3, %3, %3
  %109 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_BAYER, align 8
  %110 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %111 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** @MIPI_DT_RAW10, align 8
  %113 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %114 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @IPU_CSI_DATA_WIDTH_10, align 8
  %116 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %117 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %141

118:                                              ; preds = %3, %3, %3, %3, %3
  %119 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_BAYER, align 8
  %120 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %121 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @MIPI_DT_RAW12, align 8
  %123 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %124 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @IPU_CSI_DATA_WIDTH_12, align 8
  %126 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %127 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  br label %141

128:                                              ; preds = %3
  %129 = load i8*, i8** @CSI_SENS_CONF_DATA_FMT_JPEG, align 8
  %130 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %131 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @MIPI_DT_RAW8, align 8
  %133 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %134 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** @IPU_CSI_DATA_WIDTH_8, align 8
  %136 = load %struct.ipu_csi_bus_config*, %struct.ipu_csi_bus_config** %5, align 8
  %137 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %141

138:                                              ; preds = %3
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %142

141:                                              ; preds = %128, %118, %108, %98, %88, %78, %68, %58, %48, %38, %28, %21
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
