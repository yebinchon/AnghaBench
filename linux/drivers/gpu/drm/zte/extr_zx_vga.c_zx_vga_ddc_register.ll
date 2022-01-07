; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_ddc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_ddc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vga = type { %struct.zx_vga_i2c*, %struct.device* }
%struct.zx_vga_i2c = type { %struct.i2c_adapter, i32 }
%struct.i2c_adapter = type { i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@zx_vga_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"zx vga i2c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to add I2C adapter: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_vga*)* @zx_vga_ddc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_ddc_register(%struct.zx_vga* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zx_vga*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.zx_vga_i2c*, align 8
  %7 = alloca i32, align 4
  store %struct.zx_vga* %0, %struct.zx_vga** %3, align 8
  %8 = load %struct.zx_vga*, %struct.zx_vga** %3, align 8
  %9 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.zx_vga_i2c* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.zx_vga_i2c* %13, %struct.zx_vga_i2c** %6, align 8
  %14 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %6, align 8
  %15 = icmp ne %struct.zx_vga_i2c* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %6, align 8
  %21 = load %struct.zx_vga*, %struct.zx_vga** %3, align 8
  %22 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %21, i32 0, i32 0
  store %struct.zx_vga_i2c* %20, %struct.zx_vga_i2c** %22, align 8
  %23 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %6, align 8
  %24 = getelementptr inbounds %struct.zx_vga_i2c, %struct.zx_vga_i2c* %23, i32 0, i32 1
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.zx_vga_i2c*, %struct.zx_vga_i2c** %6, align 8
  %27 = getelementptr inbounds %struct.zx_vga_i2c, %struct.zx_vga_i2c* %26, i32 0, i32 0
  store %struct.i2c_adapter* %27, %struct.i2c_adapter** %5, align 8
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @I2C_CLASS_DDC, align 4
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.device* %34, %struct.device** %37, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 1
  store i32* @zx_vga_algorithm, i32** %39, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %45 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %19
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @DRM_DEV_ERROR(%struct.device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %19
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %55 = load %struct.zx_vga*, %struct.zx_vga** %3, align 8
  %56 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %54, %struct.zx_vga* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %48, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.zx_vga_i2c* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.zx_vga*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
