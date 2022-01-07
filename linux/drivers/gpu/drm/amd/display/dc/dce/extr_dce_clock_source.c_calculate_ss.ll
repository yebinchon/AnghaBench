; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calculate_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calculate_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_settings = type { i32, i32, i32, i32 }
%struct.spread_spectrum_data = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.delta_sigma_data = type { i8*, i8*, i8*, i8* }
%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_settings*, %struct.spread_spectrum_data*, %struct.delta_sigma_data*)* @calculate_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_ss(%struct.pll_settings* %0, %struct.spread_spectrum_data* %1, %struct.delta_sigma_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pll_settings*, align 8
  %6 = alloca %struct.spread_spectrum_data*, align 8
  %7 = alloca %struct.delta_sigma_data*, align 8
  %8 = alloca %struct.fixed31_32, align 4
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
  store %struct.pll_settings* %0, %struct.pll_settings** %5, align 8
  store %struct.spread_spectrum_data* %1, %struct.spread_spectrum_data** %6, align 8
  store %struct.delta_sigma_data* %2, %struct.delta_sigma_data** %7, align 8
  %27 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %28 = icmp eq %struct.delta_sigma_data* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %184

30:                                               ; preds = %3
  %31 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %6, align 8
  %32 = icmp eq %struct.spread_spectrum_data* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %184

34:                                               ; preds = %30
  %35 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %6, align 8
  %36 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %184

40:                                               ; preds = %34
  %41 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %42 = icmp eq %struct.pll_settings* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %184

44:                                               ; preds = %40
  %45 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %46 = call i32 @memset(%struct.delta_sigma_data* %45, i32 0, i32 32)
  %47 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %48 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dc_fixpt_from_fraction(i32 %49, i32 1000000)
  %51 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.fixed31_32* %8 to i8*
  %53 = bitcast %struct.fixed31_32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %55 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dc_fixpt_add_int(i32 %58, i32 %56)
  %60 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = bitcast %struct.fixed31_32* %8 to i8*
  %62 = bitcast %struct.fixed31_32* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %64 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %63, i32 0, i32 1
  store i8* null, i8** %64, align 8
  %65 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %6, align 8
  %66 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %6, align 8
  %70 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 100, %71
  %73 = call i32 @dc_fixpt_from_fraction(i32 %68, i32 %72)
  %74 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dc_fixpt_mul(i32 %76, i32 %78)
  %80 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = bitcast %struct.fixed31_32* %9 to i8*
  %82 = bitcast %struct.fixed31_32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @dc_fixpt_floor(i32 %84)
  %86 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %87 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %89 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @dc_fixpt_from_int(i8* %90)
  %92 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dc_fixpt_sub(i32 %93, i32 %91)
  %95 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = bitcast %struct.fixed31_32* %10 to i8*
  %97 = bitcast %struct.fixed31_32* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dc_fixpt_mul_int(i32 %99, i32 10)
  %101 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = bitcast %struct.fixed31_32* %10 to i8*
  %103 = bitcast %struct.fixed31_32* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @dc_fixpt_floor(i32 %105)
  %107 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %108 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %110 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @dc_fixpt_from_int(i8* %111)
  %113 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dc_fixpt_sub(i32 %114, i32 %112)
  %116 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = bitcast %struct.fixed31_32* %11 to i8*
  %118 = bitcast %struct.fixed31_32* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 4, i1 false)
  %119 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dc_fixpt_mul_int(i32 %120, i32 65536)
  %122 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = bitcast %struct.fixed31_32* %11 to i8*
  %124 = bitcast %struct.fixed31_32* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  %125 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @dc_fixpt_floor(i32 %126)
  %128 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %129 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %131 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 1000
  %134 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %135 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %6, align 8
  %138 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = call i32 @dc_fixpt_from_fraction(i32 %133, i32 %140)
  %142 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = bitcast %struct.fixed31_32* %13 to i8*
  %144 = bitcast %struct.fixed31_32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 4, i1 false)
  %145 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %6, align 8
  %146 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %44
  %151 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dc_fixpt_div_int(i32 %152, i32 4)
  %154 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = bitcast %struct.fixed31_32* %13 to i8*
  %156 = bitcast %struct.fixed31_32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 4, i1 false)
  br label %164

157:                                              ; preds = %44
  %158 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dc_fixpt_div_int(i32 %159, i32 2)
  %161 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = bitcast %struct.fixed31_32* %13 to i8*
  %163 = bitcast %struct.fixed31_32* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 4, i1 false)
  br label %164

164:                                              ; preds = %157, %150
  %165 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dc_fixpt_div(i32 %166, i32 %168)
  %170 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  %171 = bitcast %struct.fixed31_32* %12 to i8*
  %172 = bitcast %struct.fixed31_32* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 4, i1 false)
  %173 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dc_fixpt_mul_int(i32 %174, i32 655360)
  %176 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = bitcast %struct.fixed31_32* %12 to i8*
  %178 = bitcast %struct.fixed31_32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 4, i1 false)
  %179 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @dc_fixpt_floor(i32 %180)
  %182 = load %struct.delta_sigma_data*, %struct.delta_sigma_data** %7, align 8
  %183 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  store i32 1, i32* %4, align 4
  br label %184

184:                                              ; preds = %164, %43, %39, %33, %29
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @memset(%struct.delta_sigma_data*, i32, i32) #1

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_add_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

declare dso_local i8* @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_int(i8*) #1

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
