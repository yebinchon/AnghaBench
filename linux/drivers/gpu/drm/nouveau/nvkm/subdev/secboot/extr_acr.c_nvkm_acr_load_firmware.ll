; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr.c_nvkm_acr_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr.c_nvkm_acr_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.firmware = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s is smaller than expected size %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvkm_acr_load_firmware(%struct.nvkm_subdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @nvkm_firmware_get(%struct.nvkm_subdev* %11, i8* %12, %struct.firmware** %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %4, align 8
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.firmware*, %struct.firmware** %8, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @nvkm_error(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %27, i64 %28)
  %30 = load %struct.firmware*, %struct.firmware** %8, align 8
  %31 = call i32 @nvkm_firmware_put(%struct.firmware* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i8* @ERR_PTR(i32 %33)
  store i8* %34, i8** %4, align 8
  br label %54

35:                                               ; preds = %19
  %36 = load %struct.firmware*, %struct.firmware** %8, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.firmware*, %struct.firmware** %8, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmemdup(i32 %38, i64 %41, i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load %struct.firmware*, %struct.firmware** %8, align 8
  %45 = call i32 @nvkm_firmware_put(%struct.firmware* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i8* @ERR_PTR(i32 %50)
  store i8* %51, i8** %4, align 8
  br label %54

52:                                               ; preds = %35
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %48, %25, %16
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i32 @nvkm_firmware_get(%struct.nvkm_subdev*, i8*, %struct.firmware**) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i8*, i64) #1

declare dso_local i32 @nvkm_firmware_put(%struct.firmware*) #1

declare dso_local i8* @kmemdup(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
