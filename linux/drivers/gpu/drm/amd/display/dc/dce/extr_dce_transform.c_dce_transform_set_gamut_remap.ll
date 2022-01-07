; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_set_gamut_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_set_gamut_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.xfm_grph_csc_adjustment = type { i64, %struct.fixed31_32* }
%struct.fixed31_32 = type { i32 }
%struct.dce_transform = type { i32 }

@GRAPHICS_GAMUT_ADJUST_TYPE_SW = common dso_local global i64 0, align 8
@GAMUT_MATRIX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform*, %struct.xfm_grph_csc_adjustment*)* @dce_transform_set_gamut_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_transform_set_gamut_remap(%struct.transform* %0, %struct.xfm_grph_csc_adjustment* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.xfm_grph_csc_adjustment*, align 8
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.xfm_grph_csc_adjustment* %1, %struct.xfm_grph_csc_adjustment** %4, align 8
  %10 = load %struct.transform*, %struct.transform** %3, align 8
  %11 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %10)
  store %struct.dce_transform* %11, %struct.dce_transform** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.xfm_grph_csc_adjustment*, %struct.xfm_grph_csc_adjustment** %4, align 8
  %13 = getelementptr inbounds %struct.xfm_grph_csc_adjustment, %struct.xfm_grph_csc_adjustment* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GRAPHICS_GAMUT_ADJUST_TYPE_SW, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %19 = call i32 @program_gamut_remap(%struct.dce_transform* %18, i32* null)
  br label %53

20:                                               ; preds = %2
  %21 = load i32, i32* @GAMUT_MATRIX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca %struct.fixed31_32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32, i32* @GAMUT_MATRIX_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %44, %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GAMUT_MATRIX_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i64 %34
  %36 = load %struct.xfm_grph_csc_adjustment*, %struct.xfm_grph_csc_adjustment** %4, align 8
  %37 = getelementptr inbounds %struct.xfm_grph_csc_adjustment, %struct.xfm_grph_csc_adjustment* %36, i32 0, i32 1
  %38 = load %struct.fixed31_32*, %struct.fixed31_32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %38, i64 %40
  %42 = bitcast %struct.fixed31_32* %35 to i8*
  %43 = bitcast %struct.fixed31_32* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i32, i32* @GAMUT_MATRIX_SIZE, align 4
  %49 = call i32 @convert_float_matrix(i32* %27, %struct.fixed31_32* %24, i32 %48)
  %50 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %51 = call i32 @program_gamut_remap(%struct.dce_transform* %50, i32* %27)
  %52 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %53

53:                                               ; preds = %47, %17
  ret void
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i32 @program_gamut_remap(%struct.dce_transform*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @convert_float_matrix(i32*, %struct.fixed31_32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
