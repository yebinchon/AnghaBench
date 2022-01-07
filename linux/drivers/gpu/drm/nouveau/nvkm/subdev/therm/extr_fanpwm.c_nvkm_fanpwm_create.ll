; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fanpwm.c_nvkm_fanpwm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fanpwm.c_nvkm_fanpwm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.nvkm_therm*, i32, i32*, i32*)*, i32 }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.dcb_gpio_func = type { i32, i32 }
%struct.nvkm_fanpwm = type { %struct.dcb_gpio_func, %struct.TYPE_6__ }
%struct.nvbios_therm_fan = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"NvFanPWM\00", align 1
@NVBIOS_THERM_FAN_TOGGLE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@nvkm_fanpwm_get = common dso_local global i32 0, align 4
@nvkm_fanpwm_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_fanpwm_create(%struct.nvkm_therm* %0, %struct.dcb_gpio_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_therm*, align 8
  %5 = alloca %struct.dcb_gpio_func*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca %struct.nvkm_fanpwm*, align 8
  %9 = alloca %struct.nvbios_therm_fan, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %4, align 8
  store %struct.dcb_gpio_func* %1, %struct.dcb_gpio_func** %5, align 8
  %12 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %6, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 1
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %7, align 8
  %19 = bitcast %struct.nvbios_therm_fan* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %21 = call i32 @nvbios_fan_parse(%struct.nvkm_bios* %20, %struct.nvbios_therm_fan* %9)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %26 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvkm_boolopt(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %2
  %31 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NVBIOS_THERM_FAN_TOGGLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.nvkm_therm*, i32, i32*, i32*)*, i32 (%struct.nvkm_therm*, i32, i32*, i32*)** %46, align 8
  %48 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %49 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %50 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %47(%struct.nvkm_therm* %48, i32 %51, i32* %10, i32* %11)
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %42, %37, %30, %2
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %42
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.nvkm_fanpwm* @kzalloc(i32 24, i32 %60)
  store %struct.nvkm_fanpwm* %61, %struct.nvkm_fanpwm** %8, align 8
  %62 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %8, align 8
  %63 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %62, i32 0, i32 1
  %64 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %65 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %64, i32 0, i32 0
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %8, align 8
  %67 = icmp ne %struct.nvkm_fanpwm* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %88

71:                                               ; preds = %59
  %72 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %8, align 8
  %73 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @nvkm_fanpwm_get, align 4
  %76 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %8, align 8
  %77 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @nvkm_fanpwm_set, align 4
  %80 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %8, align 8
  %81 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.nvkm_fanpwm*, %struct.nvkm_fanpwm** %8, align 8
  %84 = getelementptr inbounds %struct.nvkm_fanpwm, %struct.nvkm_fanpwm* %83, i32 0, i32 0
  %85 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %86 = bitcast %struct.dcb_gpio_func* %84 to i8*
  %87 = bitcast %struct.dcb_gpio_func* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 4 %87, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %71, %68, %56
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvbios_fan_parse(%struct.nvkm_bios*, %struct.nvbios_therm_fan*) #2

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #2

declare dso_local %struct.nvkm_fanpwm* @kzalloc(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
