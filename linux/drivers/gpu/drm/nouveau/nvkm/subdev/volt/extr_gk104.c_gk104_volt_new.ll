; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk104.c_gk104_volt_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk104.c_gk104_volt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt_func = type { i32 }
%struct.nvkm_device = type { i32, i32 }
%struct.nvkm_volt = type { i32 }
%struct.dcb_gpio_func = type { i32 }
%struct.nvbios_volt = type { i64 }
%struct.gk104_volt = type { %struct.nvkm_volt, %struct.nvbios_volt }

@gk104_volt_gpio = common dso_local global %struct.nvkm_volt_func zeroinitializer, align 4
@DCB_GPIO_VID_PWM = common dso_local global i32 0, align 4
@NVBIOS_VOLT_PWM = common dso_local global i64 0, align 8
@gk104_volt_pwm = common dso_local global %struct.nvkm_volt_func zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Type mismatch between the voltage table type and the GPIO table. Fallback to GPIO mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Using %s mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_volt_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_volt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_volt**, align 8
  %8 = alloca %struct.nvkm_volt_func*, align 8
  %9 = alloca %struct.dcb_gpio_func, align 4
  %10 = alloca %struct.nvbios_volt, align 8
  %11 = alloca %struct.gk104_volt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_volt** %2, %struct.nvkm_volt*** %7, align 8
  store %struct.nvkm_volt_func* @gk104_volt_gpio, %struct.nvkm_volt_func** %8, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nvbios_volt_parse(i32 %19, i32* %12, i32* %13, i32* %14, i32* %15, %struct.nvbios_volt* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DCB_GPIO_VID_PWM, align 4
  %28 = call i32 @nvkm_gpio_find(i32 %26, i32 0, i32 %27, i32 255, %struct.dcb_gpio_func* %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NVBIOS_VOLT_PWM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.nvkm_volt_func* @gk104_volt_pwm, %struct.nvkm_volt_func** %8, align 8
  br label %36

36:                                               ; preds = %35, %30, %23
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.gk104_volt* @kzalloc(i32 16, i32 %37)
  store %struct.gk104_volt* %38, %struct.gk104_volt** %11, align 8
  %39 = icmp ne %struct.gk104_volt* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %83

43:                                               ; preds = %36
  %44 = load %struct.nvkm_volt_func*, %struct.nvkm_volt_func** %8, align 8
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.gk104_volt*, %struct.gk104_volt** %11, align 8
  %48 = getelementptr inbounds %struct.gk104_volt, %struct.gk104_volt* %47, i32 0, i32 0
  %49 = call i32 @nvkm_volt_ctor(%struct.nvkm_volt_func* %44, %struct.nvkm_device* %45, i32 %46, %struct.nvkm_volt* %48)
  %50 = load %struct.gk104_volt*, %struct.gk104_volt** %11, align 8
  %51 = getelementptr inbounds %struct.gk104_volt, %struct.gk104_volt* %50, i32 0, i32 0
  %52 = load %struct.nvkm_volt**, %struct.nvkm_volt*** %7, align 8
  store %struct.nvkm_volt* %51, %struct.nvkm_volt** %52, align 8
  %53 = load %struct.gk104_volt*, %struct.gk104_volt** %11, align 8
  %54 = getelementptr inbounds %struct.gk104_volt, %struct.gk104_volt* %53, i32 0, i32 1
  %55 = bitcast %struct.nvbios_volt* %54 to i8*
  %56 = bitcast %struct.nvbios_volt* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NVBIOS_VOLT_PWM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %43
  %62 = load %struct.nvkm_volt_func*, %struct.nvkm_volt_func** %8, align 8
  %63 = icmp ne %struct.nvkm_volt_func* %62, @gk104_volt_pwm
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.gk104_volt*, %struct.gk104_volt** %11, align 8
  %66 = getelementptr inbounds %struct.gk104_volt, %struct.gk104_volt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %66, i32 0, i32 0
  %68 = call i32 @nvkm_error(i32* %67, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %61, %43
  %70 = load %struct.nvkm_volt_func*, %struct.nvkm_volt_func** %8, align 8
  %71 = icmp eq %struct.nvkm_volt_func* %70, @gk104_volt_gpio
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.gk104_volt*, %struct.gk104_volt** %11, align 8
  %74 = getelementptr inbounds %struct.gk104_volt, %struct.gk104_volt* %73, i32 0, i32 0
  %75 = call i32 @nvkm_voltgpio_init(%struct.nvkm_volt* %74)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %77

76:                                               ; preds = %69
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %77

77:                                               ; preds = %76, %72
  %78 = load %struct.gk104_volt*, %struct.gk104_volt** %11, align 8
  %79 = getelementptr inbounds %struct.gk104_volt, %struct.gk104_volt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %79, i32 0, i32 0
  %81 = load i8*, i8** %16, align 8
  %82 = call i32 @nvkm_debug(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %40, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @nvbios_volt_parse(i32, i32*, i32*, i32*, i32*, %struct.nvbios_volt*) #1

declare dso_local i32 @nvkm_gpio_find(i32, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local %struct.gk104_volt* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_volt_ctor(%struct.nvkm_volt_func*, %struct.nvkm_device*, i32, %struct.nvkm_volt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvkm_error(i32*, i8*) #1

declare dso_local i32 @nvkm_voltgpio_init(%struct.nvkm_volt*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
