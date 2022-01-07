; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_color_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_color_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }
%struct.out_csc_color_matrix = type { i32* }

@OUTPUT_CSC_C11_C12 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C11 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C12 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C13_C14 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C21_C22 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C23_C24 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C31_C32 = common dso_local global i32 0, align 4
@OUTPUT_CSC_C33_C34 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.out_csc_color_matrix*, i32)* @program_color_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_color_matrix(%struct.dce_transform* %0, %struct.out_csc_color_matrix* %1, i32 %2) #0 {
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca %struct.out_csc_color_matrix*, align 8
  %6 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store %struct.out_csc_color_matrix* %1, %struct.out_csc_color_matrix** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @OUTPUT_CSC_C11_C12, align 4
  %8 = load i32, i32* @OUTPUT_CSC_C11, align 4
  %9 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %10 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OUTPUT_CSC_C12, align 4
  %15 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %16 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @REG_SET_2(i32 %7, i32 0, i32 %8, i32 %13, i32 %14, i32 %19)
  %21 = load i32, i32* @OUTPUT_CSC_C13_C14, align 4
  %22 = load i32, i32* @OUTPUT_CSC_C11, align 4
  %23 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %24 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OUTPUT_CSC_C12, align 4
  %29 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %30 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @REG_SET_2(i32 %21, i32 0, i32 %22, i32 %27, i32 %28, i32 %33)
  %35 = load i32, i32* @OUTPUT_CSC_C21_C22, align 4
  %36 = load i32, i32* @OUTPUT_CSC_C11, align 4
  %37 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %38 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OUTPUT_CSC_C12, align 4
  %43 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %44 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REG_SET_2(i32 %35, i32 0, i32 %36, i32 %41, i32 %42, i32 %47)
  %49 = load i32, i32* @OUTPUT_CSC_C23_C24, align 4
  %50 = load i32, i32* @OUTPUT_CSC_C11, align 4
  %51 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %52 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OUTPUT_CSC_C12, align 4
  %57 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %58 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @REG_SET_2(i32 %49, i32 0, i32 %50, i32 %55, i32 %56, i32 %61)
  %63 = load i32, i32* @OUTPUT_CSC_C31_C32, align 4
  %64 = load i32, i32* @OUTPUT_CSC_C11, align 4
  %65 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %66 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OUTPUT_CSC_C12, align 4
  %71 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %72 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 9
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @REG_SET_2(i32 %63, i32 0, i32 %64, i32 %69, i32 %70, i32 %75)
  %77 = load i32, i32* @OUTPUT_CSC_C33_C34, align 4
  %78 = load i32, i32* @OUTPUT_CSC_C11, align 4
  %79 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %80 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 10
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @OUTPUT_CSC_C12, align 4
  %85 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %5, align 8
  %86 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 11
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @REG_SET_2(i32 %77, i32 0, i32 %78, i32 %83, i32 %84, i32 %89)
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
