; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.vc4_v3d* }
%struct.vc4_v3d = type { %struct.TYPE_2__, i32*, %struct.vc4_dev*, i32*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v3d_regs = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get V3D clock: %d\0A\00", align 1
@V3D_IDENT0 = common dso_local global i32 0, align 4
@V3D_EXPECTED_IDENT0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"V3D_IDENT0 read 0x%08x instead of 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V3D_BPOA = common dso_local global i32 0, align 4
@V3D_BPOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to install IRQ handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"v3d_ident\00", align 1
@vc4_v3d_debugfs_ident = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"v3d_regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_v3d_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_v3d_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_v3d*, align 8
  %12 = alloca i32, align 4
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
  store %struct.vc4_v3d* null, %struct.vc4_v3d** %11, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vc4_v3d* @devm_kzalloc(i32* %21, i32 48, i32 %22)
  store %struct.vc4_v3d* %23, %struct.vc4_v3d** %11, align 8
  %24 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %25 = icmp ne %struct.vc4_v3d* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %158

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %32 = call i32 @dev_set_drvdata(%struct.device* %30, %struct.vc4_v3d* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %35 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %34, i32 0, i32 4
  store %struct.platform_device* %33, %struct.platform_device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %37 = call i32* @vc4_ioremap_regs(%struct.platform_device* %36, i32 0)
  %38 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %39 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %41 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %47 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  store i32 %49, i32* %4, align 4
  br label %158

50:                                               ; preds = %29
  %51 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %52 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %55 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* @v3d_regs, align 4
  %58 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %59 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @v3d_regs, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %64 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %67 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %68 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %67, i32 0, i32 0
  store %struct.vc4_v3d* %66, %struct.vc4_v3d** %68, align 8
  %69 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %70 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %71 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %70, i32 0, i32 2
  store %struct.vc4_dev* %69, %struct.vc4_dev** %71, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = call i32* @devm_clk_get(%struct.device* %72, i32* null)
  %74 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %75 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %77 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @IS_ERR(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %50
  %82 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %83 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  store i32 0, i32* %13, align 4
  %91 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %92 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  br label %104

93:                                               ; preds = %81
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %4, align 4
  br label %158

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %50
  %106 = load i32, i32* @V3D_IDENT0, align 4
  %107 = call i64 @V3D_READ(i32 %106)
  %108 = load i64, i64* @V3D_EXPECTED_IDENT0, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i32, i32* @V3D_IDENT0, align 4
  %112 = call i64 @V3D_READ(i32 %111)
  %113 = load i64, i64* @V3D_EXPECTED_IDENT0, align 8
  %114 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %112, i64 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %158

117:                                              ; preds = %105
  %118 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %119 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @clk_prepare_enable(i32* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %158

126:                                              ; preds = %117
  %127 = load i32, i32* @V3D_BPOA, align 4
  %128 = call i32 @V3D_WRITE(i32 %127, i32 0)
  %129 = load i32, i32* @V3D_BPOS, align 4
  %130 = call i32 @V3D_WRITE(i32 %129, i32 0)
  %131 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %132 = call i32 @vc4_v3d_init_hw(%struct.drm_device* %131)
  %133 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %135 = call i32 @platform_get_irq(%struct.platform_device* %134, i32 0)
  %136 = call i32 @drm_irq_install(%struct.drm_device* %133, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %126
  %140 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %4, align 4
  br label %158

142:                                              ; preds = %126
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = call i32 @pm_runtime_set_active(%struct.device* %143)
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = call i32 @pm_runtime_use_autosuspend(%struct.device* %145)
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %147, i32 40)
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @pm_runtime_enable(%struct.device* %149)
  %151 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %152 = load i32, i32* @vc4_v3d_debugfs_ident, align 4
  %153 = call i32 @vc4_debugfs_add_file(%struct.drm_device* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32* null)
  %154 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %155 = load %struct.vc4_v3d*, %struct.vc4_v3d** %11, align 8
  %156 = getelementptr inbounds %struct.vc4_v3d, %struct.vc4_v3d* %155, i32 0, i32 0
  %157 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_2__* %156)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %142, %139, %124, %110, %102, %45, %26
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_v3d* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vc4_v3d*) #1

declare dso_local i32* @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @V3D_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @vc4_v3d_init_hw(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @vc4_debugfs_add_file(%struct.drm_device*, i8*, i32, i32*) #1

declare dso_local i32 @vc4_debugfs_add_regset32(%struct.drm_device*, i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
