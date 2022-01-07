; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.vc4_txp* }
%struct.vc4_txp = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, %struct.platform_device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@txp_regs = common dso_local global i32 0, align 4
@vc4_txp_connector_helper_funcs = common dso_local global i32 0, align 4
@vc4_txp_connector_funcs = common dso_local global i32 0, align 4
@vc4_txp_encoder_helper_funcs = common dso_local global i32 0, align 4
@drm_fmts = common dso_local global i32 0, align 4
@vc4_txp_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"txp_regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_txp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_txp_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_txp*, align 8
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
  %20 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %107

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.vc4_txp* @devm_kzalloc(%struct.device* %27, i32 32, i32 %28)
  store %struct.vc4_txp* %29, %struct.vc4_txp** %11, align 8
  %30 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %31 = icmp ne %struct.vc4_txp* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %107

35:                                               ; preds = %26
  %36 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %37 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %38 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %37, i32 0, i32 3
  store %struct.platform_device* %36, %struct.platform_device** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %40 = call i32 @vc4_ioremap_regs(%struct.platform_device* %39, i32 0)
  %41 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %42 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %44 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %50 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %4, align 4
  br label %107

53:                                               ; preds = %35
  %54 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %55 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %58 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @txp_regs, align 4
  %61 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %62 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @txp_regs, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %67 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %70 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @drm_connector_helper_add(i32* %71, i32* @vc4_txp_connector_helper_funcs)
  %73 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %74 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %75 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %74, i32 0, i32 1
  %76 = load i32, i32* @drm_fmts, align 4
  %77 = load i32, i32* @drm_fmts, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = call i32 @drm_writeback_connector_init(%struct.drm_device* %73, %struct.TYPE_4__* %75, i32* @vc4_txp_connector_funcs, i32* @vc4_txp_encoder_helper_funcs, i32 %76, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %53
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %107

84:                                               ; preds = %53
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @vc4_txp_interrupt, align 4
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @dev_name(%struct.device* %88)
  %90 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %91 = call i32 @devm_request_irq(%struct.device* %85, i32 %86, i32 %87, i32 0, i32 %89, %struct.vc4_txp* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %107

96:                                               ; preds = %84
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %99 = call i32 @dev_set_drvdata(%struct.device* %97, %struct.vc4_txp* %98)
  %100 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %101 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %102 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %101, i32 0, i32 0
  store %struct.vc4_txp* %100, %struct.vc4_txp** %102, align 8
  %103 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %104 = load %struct.vc4_txp*, %struct.vc4_txp** %11, align 8
  %105 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %104, i32 0, i32 0
  %106 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %96, %94, %82, %48, %32, %24
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.vc4_txp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_writeback_connector_init(%struct.drm_device*, %struct.TYPE_4__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.vc4_txp*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vc4_txp*) #1

declare dso_local i32 @vc4_debugfs_add_regset32(%struct.drm_device*, i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
