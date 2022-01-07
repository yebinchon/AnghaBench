; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_compute_hlg_eotf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_compute_hlg_eotf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fixed31_32*, i32, i32)* @compute_hlg_eotf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_hlg_eotf(i32 %0, %struct.fixed31_32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.fixed31_32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca %struct.fixed31_32, align 4
  %11 = alloca %struct.fixed31_32, align 4
  %12 = alloca %struct.fixed31_32, align 4
  %13 = alloca %struct.fixed31_32, align 4
  %14 = alloca %struct.fixed31_32, align 4
  %15 = alloca %struct.fixed31_32, align 4
  %16 = alloca %struct.fixed31_32, align 4
  %17 = alloca %struct.fixed31_32, align 4
  %18 = alloca %struct.fixed31_32, align 4
  %19 = alloca %struct.fixed31_32, align 4
  %20 = alloca %struct.fixed31_32, align 4
  %21 = alloca %struct.fixed31_32, align 4
  %22 = alloca %struct.fixed31_32, align 4
  %23 = alloca %struct.fixed31_32, align 4
  %24 = alloca %struct.fixed31_32, align 4
  %25 = alloca %struct.fixed31_32, align 4
  %26 = alloca %struct.fixed31_32, align 4
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %0, i32* %27, align 4
  store %struct.fixed31_32* %1, %struct.fixed31_32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dc_fixpt_from_fraction(i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = call i32 @dc_fixpt_from_fraction(i32 17883277, i32 100000000)
  %33 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.fixed31_32* %9 to i8*
  %35 = bitcast %struct.fixed31_32* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = call i32 @dc_fixpt_from_fraction(i32 28466892, i32 100000000)
  %37 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.fixed31_32* %10 to i8*
  %39 = bitcast %struct.fixed31_32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = call i32 @dc_fixpt_from_fraction(i32 55991073, i32 100000000)
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.fixed31_32* %11 to i8*
  %43 = bitcast %struct.fixed31_32* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = call i32 @dc_fixpt_from_fraction(i32 1, i32 2)
  %45 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.fixed31_32* %12 to i8*
  %47 = bitcast %struct.fixed31_32* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @dc_fixpt_lt(i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %4
  %55 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dc_fixpt_mul(i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = bitcast %struct.fixed31_32* %13 to i8*
  %62 = bitcast %struct.fixed31_32* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dc_fixpt_div_int(i32 %64, i32 3)
  %66 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = bitcast %struct.fixed31_32* %13 to i8*
  %68 = bitcast %struct.fixed31_32* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %106

69:                                               ; preds = %4
  %70 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dc_fixpt_sub(i32 %71, i32 %73)
  %75 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = bitcast %struct.fixed31_32* %13 to i8*
  %77 = bitcast %struct.fixed31_32* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dc_fixpt_div(i32 %79, i32 %81)
  %83 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = bitcast %struct.fixed31_32* %13 to i8*
  %85 = bitcast %struct.fixed31_32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dc_fixpt_exp(i32 %87)
  %89 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = bitcast %struct.fixed31_32* %13 to i8*
  %91 = bitcast %struct.fixed31_32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dc_fixpt_add(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = bitcast %struct.fixed31_32* %13 to i8*
  %99 = bitcast %struct.fixed31_32* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dc_fixpt_div_int(i32 %101, i32 12)
  %103 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = bitcast %struct.fixed31_32* %13 to i8*
  %105 = bitcast %struct.fixed31_32* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  br label %106

106:                                              ; preds = %69, %54
  %107 = load %struct.fixed31_32*, %struct.fixed31_32** %6, align 8
  %108 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dc_fixpt_mul(i32 %109, i32 %111)
  %113 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = bitcast %struct.fixed31_32* %107 to i8*
  %115 = bitcast %struct.fixed31_32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @dc_fixpt_lt(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_div(i32, i32) #1

declare dso_local i32 @dc_fixpt_exp(i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
