; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_translate_to_linear_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_translate_to_linear_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @translate_to_linear_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_to_linear_space(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fixed31_32, align 4
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
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i32 %1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  store i32 %2, i32* %29, align 4
  %30 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  store i32 %3, i32* %30, align 4
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  store i32 %4, i32* %31, align 4
  %32 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  store i32 %5, i32* %32, align 4
  %33 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dc_fixpt_mul(i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.fixed31_32* %9 to i8*
  %40 = bitcast %struct.fixed31_32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dc_fixpt_neg(i32 %42)
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @dc_fixpt_le(i32 %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %6
  %52 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dc_fixpt_sub(i32 %53, i32 %55)
  %57 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %59 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dc_fixpt_add(i32 %58, i32 %60)
  %62 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dc_fixpt_div(i32 %64, i32 %66)
  %68 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dc_fixpt_pow(i32 %70, i32 %72)
  %74 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dc_fixpt_neg(i32 %76)
  %78 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = bitcast %struct.fixed31_32* %7 to i8*
  %80 = bitcast %struct.fixed31_32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  br label %135

81:                                               ; preds = %6
  %82 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dc_fixpt_neg(i32 %83)
  %85 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @dc_fixpt_le(i32 %87, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @dc_fixpt_le(i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dc_fixpt_div(i32 %101, i32 %103)
  %105 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = bitcast %struct.fixed31_32* %7 to i8*
  %107 = bitcast %struct.fixed31_32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 4, i1 false)
  br label %134

108:                                              ; preds = %92, %81
  %109 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dc_fixpt_add(i32 %110, i32 %112)
  %114 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %116 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dc_fixpt_add(i32 %115, i32 %117)
  %119 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dc_fixpt_div(i32 %121, i32 %123)
  %125 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dc_fixpt_pow(i32 %127, i32 %129)
  %131 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = bitcast %struct.fixed31_32* %7 to i8*
  %133 = bitcast %struct.fixed31_32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 4, i1 false)
  br label %134

134:                                              ; preds = %108, %99
  br label %135

135:                                              ; preds = %134, %51
  %136 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  ret i32 %137
}

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @dc_fixpt_le(i32, i32) #1

declare dso_local i32 @dc_fixpt_neg(i32) #1

declare dso_local i32 @dc_fixpt_pow(i32, i32) #1

declare dso_local i32 @dc_fixpt_div(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
