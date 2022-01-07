; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hvs.c_vc4_hvs_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hvs.c_vc4_hvs_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.vc4_dev* }
%struct.vc4_dev = type { %struct.vc4_hvs* }
%struct.vc4_hvs = type { %struct.TYPE_2__, i32, i32, i32, i32, i64, i64, %struct.platform_device* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hvs_regs = common dso_local global i32 0, align 4
@SCALER_DLIST_START = common dso_local global i64 0, align 8
@HVS_BOOTLOADER_DLIST_END = common dso_local global i32 0, align 4
@SCALER_DLIST_SIZE = common dso_local global i32 0, align 4
@mitchell_netravali_1_3_1_3_kernel = common dso_local global i32 0, align 4
@SCALER_DISPCTRL = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_ENABLE = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_DSP3_MUX_MASK = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_DMAEIRQ = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_SLVWREIRQ = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_SLVRDEIRQ = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_SCLEIRQ = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_DSP3_MUX = common dso_local global i32 0, align 4
@vc4_hvs_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vc4 hvs\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hvs_regs\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hvs_underrun\00", align 1
@vc4_hvs_debugfs_underrun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_hvs_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hvs_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_hvs*, align 8
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
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.vc4_dev*, %struct.vc4_dev** %19, align 8
  store %struct.vc4_dev* %20, %struct.vc4_dev** %10, align 8
  store %struct.vc4_hvs* null, %struct.vc4_hvs** %11, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.vc4_hvs* @devm_kzalloc(i32* %22, i32 56, i32 %23)
  store %struct.vc4_hvs* %24, %struct.vc4_hvs** %11, align 8
  %25 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %26 = icmp ne %struct.vc4_hvs* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %167

30:                                               ; preds = %3
  %31 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %32 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %33 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %32, i32 0, i32 7
  store %struct.platform_device* %31, %struct.platform_device** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %35 = call i64 @vc4_ioremap_regs(%struct.platform_device* %34, i32 0)
  %36 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %37 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %36, i32 0, i32 5
  store i64 %35, i64* %37, align 8
  %38 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %39 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @IS_ERR(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %45 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @PTR_ERR(i64 %46)
  store i32 %47, i32* %4, align 4
  br label %167

48:                                               ; preds = %30
  %49 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %50 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %53 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @hvs_regs, align 4
  %56 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %57 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @hvs_regs, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %62 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %65 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SCALER_DLIST_START, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %70 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %69, i32 0, i32 6
  store i64 %68, i64* %70, align 8
  %71 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %72 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %71, i32 0, i32 4
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %75 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %74, i32 0, i32 3
  %76 = load i32, i32* @HVS_BOOTLOADER_DLIST_END, align 4
  %77 = load i32, i32* @SCALER_DLIST_SIZE, align 4
  %78 = ashr i32 %77, 2
  %79 = load i32, i32* @HVS_BOOTLOADER_DLIST_END, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @drm_mm_init(i32* %75, i32 %76, i32 %80)
  %82 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %83 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %82, i32 0, i32 2
  %84 = call i32 @drm_mm_init(i32* %83, i32 0, i32 98304)
  %85 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %86 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %87 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %86, i32 0, i32 1
  %88 = load i32, i32* @mitchell_netravali_1_3_1_3_kernel, align 4
  %89 = call i32 @vc4_hvs_upload_linear_kernel(%struct.vc4_hvs* %85, i32* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %48
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %167

94:                                               ; preds = %48
  %95 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %96 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %97 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %96, i32 0, i32 0
  store %struct.vc4_hvs* %95, %struct.vc4_hvs** %97, align 8
  %98 = load i32, i32* @SCALER_DISPCTRL, align 4
  %99 = call i32 @HVS_READ(i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* @SCALER_DISPCTRL_ENABLE, align 4
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = call i32 @SCALER_DISPCTRL_DISPEIRQ(i32 0)
  %104 = call i32 @SCALER_DISPCTRL_DISPEIRQ(i32 1)
  %105 = or i32 %103, %104
  %106 = call i32 @SCALER_DISPCTRL_DISPEIRQ(i32 2)
  %107 = or i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* @SCALER_DISPCTRL_DSP3_MUX_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %13, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* @SCALER_DISPCTRL_DMAEIRQ, align 4
  %115 = load i32, i32* @SCALER_DISPCTRL_SLVWREIRQ, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SCALER_DISPCTRL_SLVRDEIRQ, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @SCALER_DISPCTRL_DSPEIEOF(i32 0)
  %120 = or i32 %118, %119
  %121 = call i32 @SCALER_DISPCTRL_DSPEIEOF(i32 1)
  %122 = or i32 %120, %121
  %123 = call i32 @SCALER_DISPCTRL_DSPEIEOF(i32 2)
  %124 = or i32 %122, %123
  %125 = call i32 @SCALER_DISPCTRL_DSPEIEOLN(i32 0)
  %126 = or i32 %124, %125
  %127 = call i32 @SCALER_DISPCTRL_DSPEIEOLN(i32 1)
  %128 = or i32 %126, %127
  %129 = call i32 @SCALER_DISPCTRL_DSPEIEOLN(i32 2)
  %130 = or i32 %128, %129
  %131 = call i32 @SCALER_DISPCTRL_DSPEISLUR(i32 0)
  %132 = or i32 %130, %131
  %133 = call i32 @SCALER_DISPCTRL_DSPEISLUR(i32 1)
  %134 = or i32 %132, %133
  %135 = call i32 @SCALER_DISPCTRL_DSPEISLUR(i32 2)
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SCALER_DISPCTRL_SCLEIRQ, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* @SCALER_DISPCTRL_DSP3_MUX, align 4
  %143 = call i32 @VC4_SET_FIELD(i32 2, i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* @SCALER_DISPCTRL, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @HVS_WRITE(i32 %146, i32 %147)
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %151 = call i32 @platform_get_irq(%struct.platform_device* %150, i32 0)
  %152 = load i32, i32* @vc4_hvs_irq_handler, align 4
  %153 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %154 = call i32 @devm_request_irq(%struct.device* %149, i32 %151, i32 %152, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %94
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %4, align 4
  br label %167

159:                                              ; preds = %94
  %160 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %161 = load %struct.vc4_hvs*, %struct.vc4_hvs** %11, align 8
  %162 = getelementptr inbounds %struct.vc4_hvs, %struct.vc4_hvs* %161, i32 0, i32 0
  %163 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %162)
  %164 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %165 = load i32, i32* @vc4_hvs_debugfs_underrun, align 4
  %166 = call i32 @vc4_debugfs_add_file(%struct.drm_device* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32* null)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %159, %157, %92, %43, %27
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_hvs* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i32 @vc4_hvs_upload_linear_kernel(%struct.vc4_hvs*, i32*, i32) #1

declare dso_local i32 @HVS_READ(i32) #1

declare dso_local i32 @SCALER_DISPCTRL_DISPEIRQ(i32) #1

declare dso_local i32 @SCALER_DISPCTRL_DSPEIEOF(i32) #1

declare dso_local i32 @SCALER_DISPCTRL_DSPEIEOLN(i32) #1

declare dso_local i32 @SCALER_DISPCTRL_DSPEISLUR(i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.drm_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @vc4_debugfs_add_regset32(%struct.drm_device*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @vc4_debugfs_add_file(%struct.drm_device*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
