; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_scale_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_scale_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_float_data = type { i8*, i8*, i8* }
%struct.dc_gamma = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.dividers = type { i32, i32, i32 }
%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwl_float_data*, %struct.dc_gamma*, i64, i32)* @scale_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_gamma(%struct.pwl_float_data* %0, %struct.dc_gamma* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dividers, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.pwl_float_data*, align 8
  %8 = alloca %struct.dc_gamma*, align 8
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca %struct.fixed31_32, align 4
  %11 = alloca %struct.fixed31_32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.pwl_float_data*, align 8
  %14 = alloca %struct.pwl_float_data*, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %2, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %3, i32* %16, align 4
  %17 = bitcast %struct.dividers* %5 to i8*
  %18 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  store %struct.pwl_float_data* %0, %struct.pwl_float_data** %7, align 8
  store %struct.dc_gamma* %1, %struct.dc_gamma** %8, align 8
  %19 = call i32 @dc_fixpt_from_int(i32 65535)
  %20 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = call i32 @dc_fixpt_from_int(i32 65280)
  %22 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.fixed31_32* %11 to i8*
  %24 = bitcast %struct.fixed31_32* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.pwl_float_data*, %struct.pwl_float_data** %7, align 8
  store %struct.pwl_float_data* %25, %struct.pwl_float_data** %13, align 8
  %26 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %27 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %28 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %26, i64 %30
  %32 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %31, i64 -1
  store %struct.pwl_float_data* %32, %struct.pwl_float_data** %14, align 8
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %75, %4
  %34 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %35 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @dc_fixpt_lt(i32 %42, i32 %40)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %33
  %46 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %47 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @dc_fixpt_lt(i32 %54, i32 %52)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %45
  %58 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %59 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @dc_fixpt_lt(i32 %66, i32 %64)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57, %45, %33
  %70 = bitcast %struct.fixed31_32* %11 to i8*
  %71 = bitcast %struct.fixed31_32* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %82

72:                                               ; preds = %57
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %78 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %33, label %82

82:                                               ; preds = %75, %69
  store i64 0, i64* %12, align 8
  br label %83

83:                                               ; preds = %124, %82
  %84 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %85 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @dc_fixpt_div(i32 %90, i32 %92)
  %94 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %95 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %97 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @dc_fixpt_div(i32 %102, i32 %104)
  %106 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %107 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %109 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @dc_fixpt_div(i32 %114, i32 %116)
  %118 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %119 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %121 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %120, i32 1
  store %struct.pwl_float_data* %121, %struct.pwl_float_data** %13, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %83
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %127 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = icmp ne i64 %125, %129
  br i1 %130, label %83, label %131

131:                                              ; preds = %124
  %132 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %133 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @dc_fixpt_mul(i8* %134, i32 %136)
  %138 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %139 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %141 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @dc_fixpt_mul(i8* %142, i32 %144)
  %146 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %147 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %149 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @dc_fixpt_mul(i8* %150, i32 %152)
  %154 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %155 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %157 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %156, i32 1
  store %struct.pwl_float_data* %157, %struct.pwl_float_data** %13, align 8
  %158 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %159 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @dc_fixpt_mul(i8* %160, i32 %162)
  %164 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %165 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %167 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @dc_fixpt_mul(i8* %168, i32 %170)
  %172 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %173 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %175 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @dc_fixpt_mul(i8* %176, i32 %178)
  %180 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %181 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %183 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %182, i32 1
  store %struct.pwl_float_data* %183, %struct.pwl_float_data** %13, align 8
  %184 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %185 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @dc_fixpt_mul(i8* %186, i32 %188)
  %190 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %191 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %193 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @dc_fixpt_mul(i8* %194, i32 %196)
  %198 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %199 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load %struct.pwl_float_data*, %struct.pwl_float_data** %14, align 8
  %201 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds %struct.dividers, %struct.dividers* %5, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @dc_fixpt_mul(i8* %202, i32 %204)
  %206 = load %struct.pwl_float_data*, %struct.pwl_float_data** %13, align 8
  %207 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #2

declare dso_local i64 @dc_fixpt_lt(i32, i32) #2

declare dso_local i8* @dc_fixpt_div(i32, i32) #2

declare dso_local i8* @dc_fixpt_mul(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
