; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_pkg_sender_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_pkg_sender_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_connector = type { %struct.mdfld_dsi_pkg_sender* }
%struct.mdfld_dsi_pkg_sender = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.mdfld_dsi_connector*, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset* }
%struct.psb_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.mdfld_dsi_config = type { %struct.drm_device* }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Create DSI pkg sender failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MDFLD_DSI_PKG_SENDER_FREE = common dso_local global i32 0, align 4
@TC35876X = common dso_local global i64 0, align 8
@PASS_FROM_SPHY_TO_AFE = common dso_local global i32 0, align 4
@SEL_FLOPPED_HSTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_dsi_pkg_sender_init(%struct.mdfld_dsi_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdfld_dsi_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %7 = alloca %struct.mdfld_dsi_config*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_psb_private*, align 8
  %10 = alloca %struct.psb_offset*, align 8
  %11 = alloca i32, align 4
  store %struct.mdfld_dsi_connector* %0, %struct.mdfld_dsi_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %4, align 8
  %13 = call %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector* %12)
  store %struct.mdfld_dsi_config* %13, %struct.mdfld_dsi_config** %7, align 8
  %14 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %15 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %18, align 8
  store %struct.drm_psb_private* %19, %struct.drm_psb_private** %9, align 8
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  %21 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %20, i32 0, i32 0
  %22 = load %struct.psb_offset*, %struct.psb_offset** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %22, i64 %24
  store %struct.psb_offset* %25, %struct.psb_offset** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %4, align 8
  %27 = icmp ne %struct.mdfld_dsi_connector* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %173

32:                                               ; preds = %2
  %33 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %4, align 8
  %34 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %33, i32 0, i32 0
  %35 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %34, align 8
  store %struct.mdfld_dsi_pkg_sender* %35, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %36 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %37 = icmp ne %struct.mdfld_dsi_pkg_sender* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %40 = call i64 @IS_ERR(%struct.mdfld_dsi_pkg_sender* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38, %32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.mdfld_dsi_pkg_sender* @kzalloc(i32 112, i32 %43)
  store %struct.mdfld_dsi_pkg_sender* %44, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %45 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %46 = icmp ne %struct.mdfld_dsi_pkg_sender* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %173

51:                                               ; preds = %42
  %52 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %53 = bitcast %struct.mdfld_dsi_pkg_sender* %52 to i8*
  %54 = bitcast i8* %53 to %struct.mdfld_dsi_pkg_sender*
  %55 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %4, align 8
  %56 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %55, i32 0, i32 0
  store %struct.mdfld_dsi_pkg_sender* %54, %struct.mdfld_dsi_pkg_sender** %56, align 8
  br label %57

57:                                               ; preds = %51, %38
  %58 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %59 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %60 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %59, i32 0, i32 22
  store %struct.drm_device* %58, %struct.drm_device** %60, align 8
  %61 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %4, align 8
  %62 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %63 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %62, i32 0, i32 21
  store %struct.mdfld_dsi_connector* %61, %struct.mdfld_dsi_connector** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %66 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %68 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %67, i32 0, i32 20
  store i64 0, i64* %68, align 8
  %69 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %70 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %69, i32 0, i32 19
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @MDFLD_DSI_PKG_SENDER_FREE, align 4
  %72 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %73 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %72, i32 0, i32 18
  store i32 %71, i32* %73, align 8
  %74 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %75 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %78 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %77, i32 0, i32 17
  store i32 %76, i32* %78, align 4
  %79 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %80 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %83 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %82, i32 0, i32 16
  store i32 %81, i32* %83, align 8
  %84 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %85 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %88 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %87, i32 0, i32 15
  store i32 %86, i32* %88, align 4
  %89 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %90 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %93 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 8
  %94 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %95 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %98 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 4
  %99 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %100 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %103 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @MIPI_INTR_STAT_REG(i32 %104)
  %106 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %107 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %106, i32 0, i32 11
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @MIPI_LP_GEN_DATA_REG(i32 %108)
  %110 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %111 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @MIPI_HS_GEN_DATA_REG(i32 %112)
  %114 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %115 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @MIPI_LP_GEN_CTRL_REG(i32 %116)
  %118 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %119 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @MIPI_HS_GEN_CTRL_REG(i32 %120)
  %122 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %123 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @MIPI_GEN_FIFO_STAT_REG(i32 %124)
  %126 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %127 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @MIPI_DATA_ADD_REG(i32 %128)
  %130 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %131 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @MIPI_DATA_LEN_REG(i32 %132)
  %134 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %135 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @MIPI_CMD_ADD_REG(i32 %136)
  %138 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %139 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @MIPI_CMD_LEN_REG(i32 %140)
  %142 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %143 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %145 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %144, i32 0, i32 1
  %146 = call i32 @spin_lock_init(i32* %145)
  %147 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @mdfld_get_panel_type(%struct.drm_device* %147, i32 %148)
  %150 = load i64, i64* @TC35876X, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %57
  %153 = load i32, i32* @PASS_FROM_SPHY_TO_AFE, align 4
  %154 = load i32, i32* @SEL_FLOPPED_HSTX, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, 2
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158, %152
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @MIPI_PORT_CONTROL(i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @REG_WRITE(i32 %163, i32 %164)
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @MIPI_PORT_CONTROL(i32 %166)
  %168 = call i32 @REG_READ(i32 %167)
  %169 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @mdfld_dsi_controller_init(%struct.mdfld_dsi_config* %169, i32 %170)
  br label %172

172:                                              ; preds = %161, %57
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %47, %28
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @IS_ERR(%struct.mdfld_dsi_pkg_sender*) #1

declare dso_local %struct.mdfld_dsi_pkg_sender* @kzalloc(i32, i32) #1

declare dso_local i32 @MIPI_INTR_STAT_REG(i32) #1

declare dso_local i32 @MIPI_LP_GEN_DATA_REG(i32) #1

declare dso_local i32 @MIPI_HS_GEN_DATA_REG(i32) #1

declare dso_local i32 @MIPI_LP_GEN_CTRL_REG(i32) #1

declare dso_local i32 @MIPI_HS_GEN_CTRL_REG(i32) #1

declare dso_local i32 @MIPI_GEN_FIFO_STAT_REG(i32) #1

declare dso_local i32 @MIPI_DATA_ADD_REG(i32) #1

declare dso_local i32 @MIPI_DATA_LEN_REG(i32) #1

declare dso_local i32 @MIPI_CMD_ADD_REG(i32) #1

declare dso_local i32 @MIPI_CMD_LEN_REG(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @mdfld_get_panel_type(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_PORT_CONTROL(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @mdfld_dsi_controller_init(%struct.mdfld_dsi_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
