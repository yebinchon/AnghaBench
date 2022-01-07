; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r367.c_acr_r367_ls_ucode_img_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r367.c_acr_r367_ls_ucode_img_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_ucode_img = type { i32, i32, %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367* }
%struct.ls_ucode_img_r367 = type { %struct.ls_ucode_img, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.acr_r352 = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.acr_r352_ls_func** }
%struct.acr_r352_ls_func = type { i32 (%struct.nvkm_secboot*, i32, %struct.ls_ucode_img*)*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_secboot = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid signature size for %s falcon!\0A\00", align 1
@nvkm_secboot_falcon_name = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ls_ucode_img* @acr_r367_ls_ucode_img_load(%struct.acr_r352* %0, %struct.nvkm_secboot* %1, i32 %2) #0 {
  %4 = alloca %struct.ls_ucode_img*, align 8
  %5 = alloca %struct.acr_r352*, align 8
  %6 = alloca %struct.nvkm_secboot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.acr_r352_ls_func*, align 8
  %10 = alloca %struct.ls_ucode_img_r367*, align 8
  %11 = alloca i32, align 4
  store %struct.acr_r352* %0, %struct.acr_r352** %5, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.acr_r352*, %struct.acr_r352** %5, align 8
  %13 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %14, align 8
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %8, align 8
  %16 = load %struct.acr_r352*, %struct.acr_r352** %5, align 8
  %17 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.acr_r352_ls_func**, %struct.acr_r352_ls_func*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.acr_r352_ls_func*, %struct.acr_r352_ls_func** %20, i64 %22
  %24 = load %struct.acr_r352_ls_func*, %struct.acr_r352_ls_func** %23, align 8
  store %struct.acr_r352_ls_func* %24, %struct.acr_r352_ls_func** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ls_ucode_img_r367* @kzalloc(i32 32, i32 %25)
  store %struct.ls_ucode_img_r367* %26, %struct.ls_ucode_img_r367** %10, align 8
  %27 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %28 = icmp ne %struct.ls_ucode_img_r367* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.ls_ucode_img* @ERR_PTR(i32 %31)
  store %struct.ls_ucode_img* %32, %struct.ls_ucode_img** %4, align 8
  br label %112

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %36 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.acr_r352_ls_func*, %struct.acr_r352_ls_func** %9, align 8
  %39 = getelementptr inbounds %struct.acr_r352_ls_func, %struct.acr_r352_ls_func* %38, i32 0, i32 0
  %40 = load i32 (%struct.nvkm_secboot*, i32, %struct.ls_ucode_img*)*, i32 (%struct.nvkm_secboot*, i32, %struct.ls_ucode_img*)** %39, align 8
  %41 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %6, align 8
  %42 = load %struct.acr_r352_ls_func*, %struct.acr_r352_ls_func** %9, align 8
  %43 = getelementptr inbounds %struct.acr_r352_ls_func, %struct.acr_r352_ls_func* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %46 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %45, i32 0, i32 0
  %47 = call i32 %40(%struct.nvkm_secboot* %41, i32 %44, %struct.ls_ucode_img* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %33
  %51 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %52 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %52, i32 0, i32 3
  %54 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %53, align 8
  %55 = call i32 @kfree(%struct.ls_ucode_img_r367* %54)
  %56 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %57 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %57, i32 0, i32 2
  %59 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %58, align 8
  %60 = call i32 @kfree(%struct.ls_ucode_img_r367* %59)
  %61 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %62 = call i32 @kfree(%struct.ls_ucode_img_r367* %61)
  %63 = load i32, i32* %11, align 4
  %64 = call %struct.ls_ucode_img* @ERR_PTR(i32 %63)
  store %struct.ls_ucode_img* %64, %struct.ls_ucode_img** %4, align 8
  br label %112

65:                                               ; preds = %33
  %66 = load %struct.acr_r352_ls_func*, %struct.acr_r352_ls_func** %9, align 8
  %67 = getelementptr inbounds %struct.acr_r352_ls_func, %struct.acr_r352_ls_func* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %74 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %76 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 4
  br i1 %80, label %81, label %92

81:                                               ; preds = %65
  %82 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %83 = load i32*, i32** @nvkm_secboot_falcon_name, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @nvkm_error(%struct.nvkm_subdev* %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.ls_ucode_img* @ERR_PTR(i32 %90)
  store %struct.ls_ucode_img* %91, %struct.ls_ucode_img** %4, align 8
  br label %112

92:                                               ; preds = %65
  %93 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %94 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %97 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %97, i32 0, i32 2
  %99 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %98, align 8
  %100 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %101 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(%struct.TYPE_8__* %95, %struct.ls_ucode_img_r367* %99, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %107 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.ls_ucode_img_r367*, %struct.ls_ucode_img_r367** %10, align 8
  %111 = getelementptr inbounds %struct.ls_ucode_img_r367, %struct.ls_ucode_img_r367* %110, i32 0, i32 0
  store %struct.ls_ucode_img* %111, %struct.ls_ucode_img** %4, align 8
  br label %112

112:                                              ; preds = %92, %81, %50, %29
  %113 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %4, align 8
  ret %struct.ls_ucode_img* %113
}

declare dso_local %struct.ls_ucode_img_r367* @kzalloc(i32, i32) #1

declare dso_local %struct.ls_ucode_img* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.ls_ucode_img_r367*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.ls_ucode_img_r367*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
