; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_ucode_load_msgqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_ucode_load_msgqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.ls_ucode_img = type { i8*, i32, %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s/image\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/desc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s/sig\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*, i8*, i32, %struct.ls_ucode_img*)* @acr_ls_ucode_load_msgqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acr_ls_ucode_load_msgqueue(%struct.nvkm_subdev* %0, i8* %1, i32 %2, %struct.ls_ucode_img* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ls_ucode_img*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ls_ucode_img* %3, %struct.ls_ucode_img** %9, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @snprintf(i8* %16, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @nvkm_firmware_get_version(%struct.nvkm_subdev* %19, i8* %20, i32 0, i32 %21, %struct.firmware** %10)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %120

27:                                               ; preds = %4
  %28 = load %struct.firmware*, %struct.firmware** %10, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.firmware*, %struct.firmware** %10, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmemdup(i32 %30, i32 %33, i32 %34)
  %36 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %37 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.firmware*, %struct.firmware** %10, align 8
  %39 = call i32 @nvkm_firmware_put(%struct.firmware* %38)
  %40 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %41 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %27
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %120

47:                                               ; preds = %27
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @snprintf(i8* %48, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @nvkm_firmware_get_version(%struct.nvkm_subdev* %51, i8* %52, i32 %53, i32 %54, %struct.firmware** %11)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %5, align 4
  br label %120

60:                                               ; preds = %47
  %61 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %62 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %61, i32 0, i32 2
  %63 = load %struct.firmware*, %struct.firmware** %11, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(%struct.TYPE_2__* %62, i32 %65, i32 16)
  %67 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %68 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %72 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = call i32 @ALIGN(i64 %75, i32 256)
  %77 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %78 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.firmware*, %struct.firmware** %11, align 8
  %80 = call i32 @nvkm_firmware_put(%struct.firmware* %79)
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @snprintf(i8* %81, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @nvkm_firmware_get_version(%struct.nvkm_subdev* %84, i8* %85, i32 %86, i32 %87, %struct.firmware** %12)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %60
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %5, align 4
  br label %120

93:                                               ; preds = %60
  %94 = load %struct.firmware*, %struct.firmware** %12, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %98 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.firmware*, %struct.firmware** %12, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.firmware*, %struct.firmware** %12, align 8
  %103 = getelementptr inbounds %struct.firmware, %struct.firmware* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kmemdup(i32 %101, i32 %104, i32 %105)
  %107 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %108 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.firmware*, %struct.firmware** %12, align 8
  %110 = call i32 @nvkm_firmware_put(%struct.firmware* %109)
  %111 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %9, align 8
  %112 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %93
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %120

118:                                              ; preds = %93
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %115, %91, %58, %44, %25
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @nvkm_firmware_get_version(%struct.nvkm_subdev*, i8*, i32, i32, %struct.firmware**) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @nvkm_firmware_put(%struct.firmware*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
