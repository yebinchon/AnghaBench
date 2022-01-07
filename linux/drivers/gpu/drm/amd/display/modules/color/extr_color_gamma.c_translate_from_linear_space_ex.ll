; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_translate_from_linear_space_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_translate_from_linear_space_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i32 }
%struct.gamma_coefficients = type { i32*, i32*, i32*, i32*, i32* }

@scratch_gamma_args = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gamma_coefficients*, i64)* @translate_from_linear_space_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_from_linear_space_ex(i32 %0, %struct.gamma_coefficients* %1, i64 %2) #0 {
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.gamma_coefficients*, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store %struct.gamma_coefficients* %1, %struct.gamma_coefficients** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = bitcast %struct.fixed31_32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.fixed31_32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scratch_gamma_args, i32 0, i32 5) to i8*), i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %11 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scratch_gamma_args, i32 0, i32 4), align 4
  %16 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %17 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scratch_gamma_args, i32 0, i32 3), align 4
  %22 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %23 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scratch_gamma_args, i32 0, i32 2), align 4
  %28 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %29 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scratch_gamma_args, i32 0, i32 1), align 4
  %34 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %6, align 8
  %35 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scratch_gamma_args, i32 0, i32 0), align 4
  %40 = call i32 @translate_from_linear_space(%struct.TYPE_3__* @scratch_gamma_args)
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @translate_from_linear_space(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
