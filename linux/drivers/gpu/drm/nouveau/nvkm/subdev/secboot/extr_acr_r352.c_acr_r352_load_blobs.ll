; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_load_blobs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_load_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acr_r352 = type { i32, i32*, i32*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nvkm_secboot = type { i64, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"acr/ucode_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"acr/ucode_unload\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"acr/bl\00", align 1
@NVKM_SECBOOT_FALCON_PMU = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"acr/unload_bl\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"LS blob successfully created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acr_r352_load_blobs(%struct.acr_r352* %0, %struct.nvkm_secboot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acr_r352*, align 8
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.acr_r352* %0, %struct.acr_r352** %4, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %5, align 8
  %8 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %8, i32 0, i32 1
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %6, align 8
  %10 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %11 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %17 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %18 = call i32 @acr_r352_prepare_ls_blob(%struct.acr_r352* %16, %struct.nvkm_secboot* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %123

23:                                               ; preds = %15
  %24 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %25 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %30 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %31 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %32 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %31, i32 0, i32 7
  %33 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %34 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %33, i32 0, i32 6
  %35 = call i32 @acr_r352_prepare_hs_blob(%struct.acr_r352* %29, %struct.nvkm_secboot* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %32, i32* %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %123

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %48 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %49 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %50 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %49, i32 0, i32 5
  %51 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %52 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %51, i32 0, i32 4
  %53 = call i32 @acr_r352_prepare_hs_blob(%struct.acr_r352* %47, %struct.nvkm_secboot* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32* %52, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %123

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %61 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %117, label %64

64:                                               ; preds = %59
  %65 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %66 = call i8* @nvkm_acr_load_firmware(%struct.nvkm_subdev* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %69 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %71 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %77 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %81 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %123

83:                                               ; preds = %64
  %84 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %85 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NVKM_SECBOOT_FALCON_PMU, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %92 = call i8* @nvkm_acr_load_firmware(%struct.nvkm_subdev* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %95 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  %96 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %97 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @IS_ERR(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %103 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @PTR_ERR(i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %107 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %123

109:                                              ; preds = %90
  br label %116

110:                                              ; preds = %83
  %111 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %112 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %115 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  br label %116

116:                                              ; preds = %110, %109
  br label %117

117:                                              ; preds = %116, %59
  %118 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %119 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %121 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %120, i32 0, i32 1
  %122 = call i32 @nvkm_debug(%struct.nvkm_subdev* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %101, %75, %56, %38, %21, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @acr_r352_prepare_ls_blob(%struct.acr_r352*, %struct.nvkm_secboot*) #1

declare dso_local i32 @acr_r352_prepare_hs_blob(%struct.acr_r352*, %struct.nvkm_secboot*, i8*, i32*, i32*, i32) #1

declare dso_local i8* @nvkm_acr_load_firmware(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
