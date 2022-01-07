; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_ddc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_ddc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_hdmi = type { i32, %struct.zx_hdmi_i2c* }
%struct.zx_hdmi_i2c = type { %struct.i2c_adapter, i32 }
%struct.i2c_adapter = type { i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@zx_hdmi_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"zx hdmi i2c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to add I2C adapter: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_hdmi*)* @zx_hdmi_ddc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_ddc_register(%struct.zx_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zx_hdmi*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.zx_hdmi_i2c*, align 8
  %6 = alloca i32, align 4
  store %struct.zx_hdmi* %0, %struct.zx_hdmi** %3, align 8
  %7 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.zx_hdmi_i2c* @devm_kzalloc(i32 %9, i32 40, i32 %10)
  store %struct.zx_hdmi_i2c* %11, %struct.zx_hdmi_i2c** %5, align 8
  %12 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %5, align 8
  %13 = icmp ne %struct.zx_hdmi_i2c* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %5, align 8
  %19 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %20 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %19, i32 0, i32 1
  store %struct.zx_hdmi_i2c* %18, %struct.zx_hdmi_i2c** %20, align 8
  %21 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.zx_hdmi_i2c, %struct.zx_hdmi_i2c* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.zx_hdmi_i2c, %struct.zx_hdmi_i2c* %24, i32 0, i32 0
  store %struct.i2c_adapter* %25, %struct.i2c_adapter** %4, align 8
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @I2C_CLASS_DDC, align 4
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %33 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 1
  store i32* @zx_hdmi_algorithm, i32** %39, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %45 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %17
  %49 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %50 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %17
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %57 = load %struct.zx_hdmi*, %struct.zx_hdmi** %3, align 8
  %58 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %56, %struct.zx_hdmi* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %48, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.zx_hdmi_i2c* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.zx_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
