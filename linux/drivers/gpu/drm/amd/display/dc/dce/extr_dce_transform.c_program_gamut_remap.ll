; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_gamut_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_gamut_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@GAMUT_REMAP_C11_C12 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C11 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C12 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C13_C14 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C13 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C14 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C21_C22 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C21 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C22 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C23_C24 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C23 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C24 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C31_C32 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C31 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C32 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C33_C34 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C33 = common dso_local global i32 0, align 4
@GAMUT_REMAP_C34 = common dso_local global i32 0, align 4
@GAMUT_REMAP_CONTROL = common dso_local global i32 0, align 4
@GRPH_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32*)* @program_gamut_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_gamut_remap(%struct.dce_transform* %0, i32* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca i32*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %71

7:                                                ; preds = %2
  %8 = load i32, i32* @GAMUT_REMAP_C11_C12, align 4
  %9 = load i32, i32* @GAMUT_REMAP_C11, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GAMUT_REMAP_C12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @REG_SET_2(i32 %8, i32 0, i32 %9, i32 %12, i32 %13, i32 %16)
  %18 = load i32, i32* @GAMUT_REMAP_C13_C14, align 4
  %19 = load i32, i32* @GAMUT_REMAP_C13, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GAMUT_REMAP_C14, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_SET_2(i32 %18, i32 0, i32 %19, i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* @GAMUT_REMAP_C21_C22, align 4
  %29 = load i32, i32* @GAMUT_REMAP_C21, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GAMUT_REMAP_C22, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @REG_SET_2(i32 %28, i32 0, i32 %29, i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* @GAMUT_REMAP_C23_C24, align 4
  %39 = load i32, i32* @GAMUT_REMAP_C23, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GAMUT_REMAP_C24, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @REG_SET_2(i32 %38, i32 0, i32 %39, i32 %42, i32 %43, i32 %46)
  %48 = load i32, i32* @GAMUT_REMAP_C31_C32, align 4
  %49 = load i32, i32* @GAMUT_REMAP_C31, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GAMUT_REMAP_C32, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REG_SET_2(i32 %48, i32 0, i32 %49, i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* @GAMUT_REMAP_C33_C34, align 4
  %59 = load i32, i32* @GAMUT_REMAP_C33, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 10
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GAMUT_REMAP_C34, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 11
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_SET_2(i32 %58, i32 0, i32 %59, i32 %62, i32 %63, i32 %66)
  %68 = load i32, i32* @GAMUT_REMAP_CONTROL, align 4
  %69 = load i32, i32* @GRPH_GAMUT_REMAP_MODE, align 4
  %70 = call i32 @REG_SET(i32 %68, i32 0, i32 %69, i32 1)
  br label %75

71:                                               ; preds = %2
  %72 = load i32, i32* @GAMUT_REMAP_CONTROL, align 4
  %73 = load i32, i32* @GRPH_GAMUT_REMAP_MODE, align 4
  %74 = call i32 @REG_SET(i32 %72, i32 0, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71, %7
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
