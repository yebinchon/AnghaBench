; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dpi.c_vc4_dpi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dpi.c_vc4_dpi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.vc4_dpi* }
%struct.vc4_dpi = type { i8*, i32*, %struct.TYPE_4__, i8*, i8*, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.vc4_dpi_encoder = type { %struct.TYPE_3__, %struct.vc4_dpi* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC4_ENCODER_TYPE_DPI = common dso_local global i32 0, align 4
@dpi_regs = common dso_local global i32 0, align 4
@DPI_ID = common dso_local global i32 0, align 4
@DPI_ID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Port returned 0x%08x for ID instead of 0x%08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get core clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to get pixel clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to turn on core clock: %d\0A\00", align 1
@vc4_dpi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPI = common dso_local global i32 0, align 4
@vc4_dpi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"dpi_regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_dpi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dpi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_dpi*, align 8
  %12 = alloca %struct.vc4_dpi_encoder*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %8, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %16)
  store %struct.drm_device* %17, %struct.drm_device** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %19 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %18)
  store %struct.vc4_dev* %19, %struct.vc4_dev** %10, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 56, i32 %21)
  %23 = bitcast i8* %22 to %struct.vc4_dpi*
  store %struct.vc4_dpi* %23, %struct.vc4_dpi** %11, align 8
  %24 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %25 = icmp ne %struct.vc4_dpi* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %192

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.device* %30, i32 16, i32 %31)
  %33 = bitcast i8* %32 to %struct.vc4_dpi_encoder*
  store %struct.vc4_dpi_encoder* %33, %struct.vc4_dpi_encoder** %12, align 8
  %34 = load %struct.vc4_dpi_encoder*, %struct.vc4_dpi_encoder** %12, align 8
  %35 = icmp ne %struct.vc4_dpi_encoder* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %192

39:                                               ; preds = %29
  %40 = load i32, i32* @VC4_ENCODER_TYPE_DPI, align 4
  %41 = load %struct.vc4_dpi_encoder*, %struct.vc4_dpi_encoder** %12, align 8
  %42 = getelementptr inbounds %struct.vc4_dpi_encoder, %struct.vc4_dpi_encoder* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %45 = load %struct.vc4_dpi_encoder*, %struct.vc4_dpi_encoder** %12, align 8
  %46 = getelementptr inbounds %struct.vc4_dpi_encoder, %struct.vc4_dpi_encoder* %45, i32 0, i32 1
  store %struct.vc4_dpi* %44, %struct.vc4_dpi** %46, align 8
  %47 = load %struct.vc4_dpi_encoder*, %struct.vc4_dpi_encoder** %12, align 8
  %48 = getelementptr inbounds %struct.vc4_dpi_encoder, %struct.vc4_dpi_encoder* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %51 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %53 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %54 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %53, i32 0, i32 5
  store %struct.platform_device* %52, %struct.platform_device** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %56 = call i8* @vc4_ioremap_regs(%struct.platform_device* %55, i32 0)
  %57 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %58 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %60 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %39
  %65 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %66 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %4, align 4
  br label %192

69:                                               ; preds = %39
  %70 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %71 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %74 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @dpi_regs, align 4
  %77 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %78 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @dpi_regs, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %83 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @DPI_ID, align 4
  %86 = call i64 @DPI_READ(i32 %85)
  %87 = load i64, i64* @DPI_ID_VALUE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %69
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load i32, i32* @DPI_ID, align 4
  %92 = call i64 @DPI_READ(i32 %91)
  %93 = load i64, i64* @DPI_ID_VALUE, align 8
  %94 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %192

97:                                               ; preds = %69
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = call i8* @devm_clk_get(%struct.device* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %101 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %103 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %97
  %108 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %109 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @PTR_ERR(i8* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @EPROBE_DEFER, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %107
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %4, align 4
  br label %192

121:                                              ; preds = %97
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i8* @devm_clk_get(%struct.device* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %124 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %125 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %127 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %121
  %132 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %133 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @PTR_ERR(i8* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @EPROBE_DEFER, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %131
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %192

145:                                              ; preds = %121
  %146 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %147 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @clk_prepare_enable(i8* %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %152, %145
  %156 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %157 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %158 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @DRM_MODE_ENCODER_DPI, align 4
  %161 = call i32 @drm_encoder_init(%struct.drm_device* %156, i32* %159, i32* @vc4_dpi_encoder_funcs, i32 %160, i32* null)
  %162 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %163 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @drm_encoder_helper_add(i32* %164, i32* @vc4_dpi_encoder_helper_funcs)
  %166 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %167 = call i32 @vc4_dpi_init_bridge(%struct.vc4_dpi* %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %155
  br label %182

171:                                              ; preds = %155
  %172 = load %struct.device*, %struct.device** %5, align 8
  %173 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %174 = call i32 @dev_set_drvdata(%struct.device* %172, %struct.vc4_dpi* %173)
  %175 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %176 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %177 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %176, i32 0, i32 0
  store %struct.vc4_dpi* %175, %struct.vc4_dpi** %177, align 8
  %178 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %179 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %180 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %179, i32 0, i32 2
  %181 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_4__* %180)
  store i32 0, i32* %4, align 4
  br label %192

182:                                              ; preds = %170
  %183 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %184 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @drm_encoder_cleanup(i32* %185)
  %187 = load %struct.vc4_dpi*, %struct.vc4_dpi** %11, align 8
  %188 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @clk_disable_unprepare(i8* %189)
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %182, %171, %143, %119, %89, %64, %36, %26
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @DPI_READ(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, i32*) #1

declare dso_local i32 @vc4_dpi_init_bridge(%struct.vc4_dpi*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vc4_dpi*) #1

declare dso_local i32 @vc4_debugfs_add_regset32(%struct.drm_device*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
