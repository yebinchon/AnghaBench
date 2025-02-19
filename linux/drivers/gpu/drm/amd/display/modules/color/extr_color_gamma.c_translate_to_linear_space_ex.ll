; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_translate_to_linear_space_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_translate_to_linear_space_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gamma_coefficients = type { i32*, i32*, i32*, i32*, i32* }
%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gamma_coefficients*, i64)* @translate_to_linear_space_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_to_linear_space_ex(i32 %0, %struct.gamma_coefficients* %1, i64 %2) #0 {
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.gamma_coefficients*, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store %struct.gamma_coefficients* %1, %struct.gamma_coefficients** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %10 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %16 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %22 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %28 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %34 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @translate_to_linear_space(i32 %40, i32 %14, i32 %20, i32 %26, i32 %32, i32 %38)
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  ret i32 %44
}

declare dso_local i32 @translate_to_linear_space(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
