; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_gr.c_ls_ucode_img_load_gr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_gr.c_ls_ucode_img_load_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.ls_ucode_img = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"gr/%s_bl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gr/%s_inst\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gr/%s_data\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gr/%s_sig\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*, i32, %struct.ls_ucode_img*, i8*)* @ls_ucode_img_load_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_ucode_img_load_gr(%struct.nvkm_subdev* %0, i32 %1, %struct.ls_ucode_img* %2, i8* %3) #0 {
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ls_ucode_img*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ls_ucode_img* %2, %struct.ls_ucode_img** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @snprintf(i8* %15, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %20 = call i32 @nvkm_firmware_get(%struct.nvkm_subdev* %18, i8* %19, %struct.firmware** %9)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %119

24:                                               ; preds = %4
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %30 = call i32 @nvkm_firmware_get(%struct.nvkm_subdev* %28, i8* %29, %struct.firmware** %10)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %116

34:                                               ; preds = %24
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @snprintf(i8* %35, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %40 = call i32 @nvkm_firmware_get(%struct.nvkm_subdev* %38, i8* %39, %struct.firmware** %11)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %113

44:                                               ; preds = %34
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @snprintf(i8* %45, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %50 = call i32 @nvkm_firmware_get(%struct.nvkm_subdev* %48, i8* %49, %struct.firmware** %12)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %110

54:                                               ; preds = %44
  %55 = load %struct.firmware*, %struct.firmware** %12, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.firmware*, %struct.firmware** %12, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @kmemdup(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %64 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %66 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %107

72:                                               ; preds = %54
  %73 = load %struct.firmware*, %struct.firmware** %12, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %77 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.firmware*, %struct.firmware** %9, align 8
  %79 = load %struct.firmware*, %struct.firmware** %10, align 8
  %80 = load %struct.firmware*, %struct.firmware** %11, align 8
  %81 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %82 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %81, i32 0, i32 0
  %83 = call i32 @ls_ucode_img_build(%struct.firmware* %78, %struct.firmware* %79, %struct.firmware* %80, %struct.TYPE_2__* %82)
  %84 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %85 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %87 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %72
  %92 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %93 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @kfree(i32 %94)
  %96 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %97 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %14, align 4
  br label %107

100:                                              ; preds = %72
  %101 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %102 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %106 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %91, %69
  %108 = load %struct.firmware*, %struct.firmware** %12, align 8
  %109 = call i32 @nvkm_firmware_put(%struct.firmware* %108)
  br label %110

110:                                              ; preds = %107, %53
  %111 = load %struct.firmware*, %struct.firmware** %11, align 8
  %112 = call i32 @nvkm_firmware_put(%struct.firmware* %111)
  br label %113

113:                                              ; preds = %110, %43
  %114 = load %struct.firmware*, %struct.firmware** %10, align 8
  %115 = call i32 @nvkm_firmware_put(%struct.firmware* %114)
  br label %116

116:                                              ; preds = %113, %33
  %117 = load %struct.firmware*, %struct.firmware** %9, align 8
  %118 = call i32 @nvkm_firmware_put(%struct.firmware* %117)
  br label %119

119:                                              ; preds = %116, %23
  %120 = load i32, i32* %14, align 4
  ret i32 %120
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @nvkm_firmware_get(%struct.nvkm_subdev*, i8*, %struct.firmware**) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @ls_ucode_img_build(%struct.firmware*, %struct.firmware*, %struct.firmware*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nvkm_firmware_put(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
