; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_compute_hlg_oetf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_compute_hlg_oetf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@dc_fixpt_half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fixed31_32*, i32, i32)* @compute_hlg_oetf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_hlg_oetf(i32 %0, %struct.fixed31_32* %1, i32 %2, i32 %3) #0 {
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
  %27 = alloca %struct.fixed31_32, align 4
  %28 = alloca %struct.fixed31_32, align 4
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %0, i32* %29, align 4
  store %struct.fixed31_32* %1, %struct.fixed31_32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dc_fixpt_from_fraction(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = call i32 @dc_fixpt_from_fraction(i32 17883277, i32 100000000)
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = bitcast %struct.fixed31_32* %9 to i8*
  %37 = bitcast %struct.fixed31_32* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = call i32 @dc_fixpt_from_fraction(i32 28466892, i32 100000000)
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.fixed31_32* %10 to i8*
  %41 = bitcast %struct.fixed31_32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = call i32 @dc_fixpt_from_fraction(i32 55991073, i32 100000000)
  %43 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.fixed31_32* %11 to i8*
  %45 = bitcast %struct.fixed31_32* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = call i32 @dc_fixpt_from_fraction(i32 1, i32 12)
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = bitcast %struct.fixed31_32* %12 to i8*
  %49 = bitcast %struct.fixed31_32* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dc_fixpt_mul(i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = bitcast %struct.fixed31_32* %13 to i8*
  %57 = bitcast %struct.fixed31_32* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @dc_fixpt_lt(i32 %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %4
  %65 = call i32 @dc_fixpt_from_fraction(i32 3, i32 1)
  %66 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dc_fixpt_mul(i32 %68, i32 %70)
  %72 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = bitcast %struct.fixed31_32* %13 to i8*
  %74 = bitcast %struct.fixed31_32* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.fixed31_32*, %struct.fixed31_32** %6, align 8
  %76 = load i32, i32* @dc_fixpt_half, align 4
  %77 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dc_fixpt_pow(i32 %78, i32 %76)
  %80 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = bitcast %struct.fixed31_32* %75 to i8*
  %82 = bitcast %struct.fixed31_32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  br label %125

83:                                               ; preds = %4
  %84 = call i32 @dc_fixpt_from_fraction(i32 12, i32 1)
  %85 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dc_fixpt_mul(i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = bitcast %struct.fixed31_32* %13 to i8*
  %93 = bitcast %struct.fixed31_32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dc_fixpt_sub(i32 %95, i32 %97)
  %99 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = bitcast %struct.fixed31_32* %13 to i8*
  %101 = bitcast %struct.fixed31_32* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dc_fixpt_log(i32 %103)
  %105 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = bitcast %struct.fixed31_32* %13 to i8*
  %107 = bitcast %struct.fixed31_32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dc_fixpt_mul(i32 %109, i32 %111)
  %113 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %27, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = bitcast %struct.fixed31_32* %13 to i8*
  %115 = bitcast %struct.fixed31_32* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.fixed31_32*, %struct.fixed31_32** %6, align 8
  %117 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dc_fixpt_add(i32 %118, i32 %120)
  %122 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %28, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = bitcast %struct.fixed31_32* %116 to i8*
  %124 = bitcast %struct.fixed31_32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  br label %125

125:                                              ; preds = %83, %64
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

declare dso_local i64 @dc_fixpt_lt(i32, i32) #1

declare dso_local i32 @dc_fixpt_pow(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_log(i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
