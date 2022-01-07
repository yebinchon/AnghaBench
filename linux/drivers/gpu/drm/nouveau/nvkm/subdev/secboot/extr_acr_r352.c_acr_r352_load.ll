; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { i32 }
%struct.nvkm_falcon = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nvkm_gpuobj = type { i32 }
%struct.acr_r352 = type { %struct.TYPE_4__*, i8*, %struct.hsf_load_header, %struct.nvkm_gpuobj*, i8*, %struct.hsf_load_header, %struct.nvkm_gpuobj* }
%struct.TYPE_4__ = type { i32 (%struct.hsf_load_header*, i8*, i32)*, i64 }
%struct.hsf_load_header = type { i32 }
%struct.fw_bin_header = type { i32, i32 }
%struct.fw_bl_desc = type { i32, i32, i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid secure boot blob!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_acr*, %struct.nvkm_falcon*, %struct.nvkm_gpuobj*, i32)* @acr_r352_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acr_r352_load(%struct.nvkm_acr* %0, %struct.nvkm_falcon* %1, %struct.nvkm_gpuobj* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_acr*, align 8
  %7 = alloca %struct.nvkm_falcon*, align 8
  %8 = alloca %struct.nvkm_gpuobj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acr_r352*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hsf_load_header*, align 8
  %13 = alloca %struct.fw_bin_header*, align 8
  %14 = alloca %struct.fw_bl_desc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %6, align 8
  store %struct.nvkm_falcon* %1, %struct.nvkm_falcon** %7, align 8
  store %struct.nvkm_gpuobj* %2, %struct.nvkm_gpuobj** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.nvkm_acr*, %struct.nvkm_acr** %6, align 8
  %22 = call %struct.acr_r352* @acr_r352(%struct.nvkm_acr* %21)
  store %struct.acr_r352* %22, %struct.acr_r352** %10, align 8
  %23 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %24 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i64 %28, i32 %29)
  store i8* %30, i8** %20, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %143

36:                                               ; preds = %4
  %37 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %38 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %39 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %38, i32 0, i32 6
  %40 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %39, align 8
  %41 = icmp eq %struct.nvkm_gpuobj* %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %44 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %43, i32 0, i32 5
  store %struct.hsf_load_header* %44, %struct.hsf_load_header** %12, align 8
  %45 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %46 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %15, align 8
  br label %70

48:                                               ; preds = %36
  %49 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %50 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %51 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %50, i32 0, i32 3
  %52 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %51, align 8
  %53 = icmp eq %struct.nvkm_gpuobj* %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %56 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %55, i32 0, i32 2
  store %struct.hsf_load_header* %56, %struct.hsf_load_header** %12, align 8
  %57 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %58 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %15, align 8
  br label %69

60:                                               ; preds = %48
  %61 = load %struct.nvkm_acr*, %struct.nvkm_acr** %6, align 8
  %62 = getelementptr inbounds %struct.nvkm_acr, %struct.nvkm_acr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nvkm_error(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %65 = load i8*, i8** %20, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %143

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %42
  %71 = load i8*, i8** %15, align 8
  %72 = bitcast i8* %71 to %struct.fw_bin_header*
  store %struct.fw_bin_header* %72, %struct.fw_bin_header** %13, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load %struct.fw_bin_header*, %struct.fw_bin_header** %13, align 8
  %75 = getelementptr inbounds %struct.fw_bin_header, %struct.fw_bin_header* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %73, i64 %77
  %79 = bitcast i8* %78 to %struct.fw_bl_desc*
  store %struct.fw_bl_desc* %79, %struct.fw_bl_desc** %14, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load %struct.fw_bin_header*, %struct.fw_bin_header** %13, align 8
  %82 = getelementptr inbounds %struct.fw_bin_header, %struct.fw_bin_header* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr i8, i8* %80, i64 %84
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %88 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %86, i64 %90
  store i8* %91, i8** %17, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %94 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %92, i64 %96
  store i8* %97, i8** %18, align 8
  %98 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %99 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @ALIGN(i32 %100, i32 256)
  store i64 %101, i64* %19, align 8
  %102 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %105 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon* %102, i8* %103, i32 0, i64 %106, i32 0)
  %108 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %111 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %19, align 8
  %115 = sub nsw i64 %113, %114
  %116 = load i64, i64* %19, align 8
  %117 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %118 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @nvkm_falcon_load_imem(%struct.nvkm_falcon* %108, i8* %109, i64 %115, i64 %116, i32 %119, i32 0, i32 0)
  %121 = load %struct.acr_r352*, %struct.acr_r352** %10, align 8
  %122 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32 (%struct.hsf_load_header*, i8*, i32)*, i32 (%struct.hsf_load_header*, i8*, i32)** %124, align 8
  %126 = load %struct.hsf_load_header*, %struct.hsf_load_header** %12, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 %125(%struct.hsf_load_header* %126, i8* %127, i32 %128)
  %130 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %133 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon* %130, i8* %131, i32 %134, i64 %135, i32 0)
  %137 = load i8*, i8** %20, align 8
  %138 = call i32 @kfree(i8* %137)
  %139 = load %struct.fw_bl_desc*, %struct.fw_bl_desc** %14, align 8
  %140 = getelementptr inbounds %struct.fw_bl_desc, %struct.fw_bl_desc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %141, 8
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %70, %60, %33
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.acr_r352* @acr_r352(%struct.nvkm_acr*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @nvkm_error(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon*, i8*, i32, i64, i32) #1

declare dso_local i32 @nvkm_falcon_load_imem(%struct.nvkm_falcon*, i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
