; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.vc4_vec* }
%struct.vc4_vec = type { i32*, %struct.TYPE_4__, i32, i32, i32, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vc4_vec_encoder = type { %struct.TYPE_3__, %struct.vc4_vec* }
%struct.TYPE_3__ = type { i32, i32 }

@tv_mode_names = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC4_ENCODER_TYPE_VEC = common dso_local global i32 0, align 4
@vec_regs = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get clock: %d\0A\00", align 1
@vc4_vec_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@vc4_vec_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vec_regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_vec_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_vec_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_vec*, align 8
  %12 = alloca %struct.vc4_vec_encoder*, align 8
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
  %20 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %21 = load i32, i32* @tv_mode_names, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load i32, i32* @tv_mode_names, align 4
  %24 = call i32 @drm_mode_create_tv_properties(%struct.drm_device* %20, i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %165

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.device* %30, i32 40, i32 %31)
  %33 = bitcast i8* %32 to %struct.vc4_vec*
  store %struct.vc4_vec* %33, %struct.vc4_vec** %11, align 8
  %34 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %35 = icmp ne %struct.vc4_vec* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %165

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(%struct.device* %40, i32 16, i32 %41)
  %43 = bitcast i8* %42 to %struct.vc4_vec_encoder*
  store %struct.vc4_vec_encoder* %43, %struct.vc4_vec_encoder** %12, align 8
  %44 = load %struct.vc4_vec_encoder*, %struct.vc4_vec_encoder** %12, align 8
  %45 = icmp ne %struct.vc4_vec_encoder* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %165

49:                                               ; preds = %39
  %50 = load i32, i32* @VC4_ENCODER_TYPE_VEC, align 4
  %51 = load %struct.vc4_vec_encoder*, %struct.vc4_vec_encoder** %12, align 8
  %52 = getelementptr inbounds %struct.vc4_vec_encoder, %struct.vc4_vec_encoder* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %55 = load %struct.vc4_vec_encoder*, %struct.vc4_vec_encoder** %12, align 8
  %56 = getelementptr inbounds %struct.vc4_vec_encoder, %struct.vc4_vec_encoder* %55, i32 0, i32 1
  store %struct.vc4_vec* %54, %struct.vc4_vec** %56, align 8
  %57 = load %struct.vc4_vec_encoder*, %struct.vc4_vec_encoder** %12, align 8
  %58 = getelementptr inbounds %struct.vc4_vec_encoder, %struct.vc4_vec_encoder* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %61 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %63 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %64 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %63, i32 0, i32 5
  store %struct.platform_device* %62, %struct.platform_device** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %66 = call i32 @vc4_ioremap_regs(%struct.platform_device* %65, i32 0)
  %67 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %68 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %70 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %49
  %75 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %76 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %4, align 4
  br label %165

79:                                               ; preds = %49
  %80 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %81 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %84 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @vec_regs, align 4
  %87 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %88 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @vec_regs, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %93 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @devm_clk_get(%struct.device* %95, i32* null)
  %97 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %98 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %100 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %79
  %105 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %106 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @EPROBE_DEFER, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %104
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  br label %165

118:                                              ; preds = %79
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = call i32 @pm_runtime_enable(%struct.device* %119)
  %121 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %122 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %123 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %126 = call i32 @drm_encoder_init(%struct.drm_device* %121, i32* %124, i32* @vc4_vec_encoder_funcs, i32 %125, i32* null)
  %127 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %128 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @drm_encoder_helper_add(i32* %129, i32* @vc4_vec_encoder_helper_funcs)
  %131 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %132 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %133 = call i32 @vc4_vec_connector_init(%struct.drm_device* %131, %struct.vc4_vec* %132)
  %134 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %135 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %137 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %118
  %142 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %143 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @PTR_ERR(i32 %144)
  store i32 %145, i32* %13, align 4
  br label %157

146:                                              ; preds = %118
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %149 = call i32 @dev_set_drvdata(%struct.device* %147, %struct.vc4_vec* %148)
  %150 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %151 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %152 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %151, i32 0, i32 0
  store %struct.vc4_vec* %150, %struct.vc4_vec** %152, align 8
  %153 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %154 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %155 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %154, i32 0, i32 1
  %156 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %155)
  store i32 0, i32* %4, align 4
  br label %165

157:                                              ; preds = %141
  %158 = load %struct.vc4_vec*, %struct.vc4_vec** %11, align 8
  %159 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @drm_encoder_cleanup(i32* %160)
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = call i32 @pm_runtime_disable(%struct.device* %162)
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %157, %146, %116, %74, %46, %36, %27
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, i32*) #1

declare dso_local i32 @vc4_vec_connector_init(%struct.drm_device*, %struct.vc4_vec*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vc4_vec*) #1

declare dso_local i32 @vc4_debugfs_add_regset32(%struct.drm_device*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
