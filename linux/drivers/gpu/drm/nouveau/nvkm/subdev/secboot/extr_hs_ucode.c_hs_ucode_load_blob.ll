; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_hs_ucode.c_hs_ucode_load_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_hs_ucode.c_hs_ucode_load_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_falcon = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"unknown header for HS blob %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hs_ucode_load_blob(%struct.nvkm_subdev* %0, %struct.nvkm_falcon* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_falcon*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %5, align 8
  store %struct.nvkm_falcon* %1, %struct.nvkm_falcon** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @nvkm_acr_load_firmware(%struct.nvkm_subdev* %10, i8* %11, i32 0)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %4, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %25 [
    i32 991761648, label %23
    i32 4318, label %24
  ]

23:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %32

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @nvkm_error(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i8* @ERR_PTR(i32 %30)
  store i8* %31, i8** %4, align 8
  br label %38

32:                                               ; preds = %24, %23
  %33 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @hs_ucode_patch_signature(%struct.nvkm_falcon* %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %32, %25, %16
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i8* @nvkm_acr_load_firmware(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @hs_ucode_patch_signature(%struct.nvkm_falcon*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
