; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_i2c.c_mgag200_i2c_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_i2c.c_mgag200_i2c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_i2c_chan = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.drm_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.mga_i2c_chan* }
%struct.drm_device = type { %struct.TYPE_7__*, %struct.mga_device* }
%struct.TYPE_7__ = type { i32 }
%struct.mga_device = type { i32 }

@MGA1064_GEN_IO_CTL2 = common dso_local global i32 0, align 4
@MGA1064_GEN_IO_DATA = common dso_local global i32 0, align 4
@MGA1064_GEN_IO_CTL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mga i2c\00", align 1
@mga_gpio_setsda = common dso_local global i32 0, align 4
@mga_gpio_setscl = common dso_local global i32 0, align 4
@mga_gpio_getsda = common dso_local global i32 0, align 4
@mga_gpio_getscl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mga_i2c_chan* @mgag200_i2c_create(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.mga_i2c_chan*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mga_device*, align 8
  %5 = alloca %struct.mga_i2c_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.mga_device*, %struct.mga_device** %10, align 8
  store %struct.mga_device* %11, %struct.mga_device** %4, align 8
  %12 = load i32, i32* @MGA1064_GEN_IO_CTL2, align 4
  %13 = call i32 @WREG_DAC(i32 %12, i32 1)
  %14 = load i32, i32* @MGA1064_GEN_IO_DATA, align 4
  %15 = call i32 @WREG_DAC(i32 %14, i32 255)
  %16 = load i32, i32* @MGA1064_GEN_IO_CTL, align 4
  %17 = call i32 @WREG_DAC(i32 %16, i32 0)
  %18 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %19 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %23 [
    i32 130, label %21
    i32 129, label %21
    i32 132, label %21
    i32 128, label %21
    i32 131, label %21
    i32 135, label %22
    i32 134, label %22
    i32 133, label %22
  ]

21:                                               ; preds = %1, %1, %1, %1, %1
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %24

22:                                               ; preds = %1, %1, %1
  store i32 2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %24

23:                                               ; preds = %1
  store i32 2, i32* %7, align 4
  store i32 8, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %22, %21
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mga_i2c_chan* @kzalloc(i32 80, i32 %25)
  store %struct.mga_i2c_chan* %26, %struct.mga_i2c_chan** %5, align 8
  %27 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %28 = icmp ne %struct.mga_i2c_chan* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.mga_i2c_chan* null, %struct.mga_i2c_chan** %2, align 8
  br label %106

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %33 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %36 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %39 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @I2C_CLASS_DDC, align 4
  %42 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %43 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %50 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32* %48, i32** %52, align 8
  %53 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %54 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %55 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %54, i32 0, i32 4
  store %struct.drm_device* %53, %struct.drm_device** %55, align 8
  %56 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %57 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %56, i32 0, i32 2
  %58 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %59 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %57, %struct.mga_i2c_chan* %58)
  %60 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %61 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @snprintf(i32 %63, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %66 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %65, i32 0, i32 3
  %67 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %68 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %69, align 8
  %70 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %71 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 10, i32* %72, align 8
  %73 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %74 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 2, i32* %75, align 4
  %76 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %77 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %78 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store %struct.mga_i2c_chan* %76, %struct.mga_i2c_chan** %79, align 8
  %80 = load i32, i32* @mga_gpio_setsda, align 4
  %81 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %82 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @mga_gpio_setscl, align 4
  %85 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %86 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @mga_gpio_getsda, align 4
  %89 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %90 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @mga_gpio_getscl, align 4
  %93 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %94 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %97 = getelementptr inbounds %struct.mga_i2c_chan, %struct.mga_i2c_chan* %96, i32 0, i32 2
  %98 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %30
  %102 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  %103 = call i32 @kfree(%struct.mga_i2c_chan* %102)
  store %struct.mga_i2c_chan* null, %struct.mga_i2c_chan** %5, align 8
  br label %104

104:                                              ; preds = %101, %30
  %105 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %5, align 8
  store %struct.mga_i2c_chan* %105, %struct.mga_i2c_chan** %2, align 8
  br label %106

106:                                              ; preds = %104, %29
  %107 = load %struct.mga_i2c_chan*, %struct.mga_i2c_chan** %2, align 8
  ret %struct.mga_i2c_chan* %107
}

declare dso_local i32 @WREG_DAC(i32, i32) #1

declare dso_local %struct.mga_i2c_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.mga_i2c_chan*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.mga_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
