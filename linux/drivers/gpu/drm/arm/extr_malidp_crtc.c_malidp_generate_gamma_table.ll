; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_generate_gamma_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_generate_gamma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_property_blob = type { i64 }
%struct.drm_color_lut = type { i32 }

@MALIDP_COEFFTAB_NUM_COEFFS = common dso_local global i32 0, align 4
@segments = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_property_blob*, i32*)* @malidp_generate_gamma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_generate_gamma_table(%struct.drm_property_blob* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_property_blob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_color_lut*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_property_blob* %0, %struct.drm_property_blob** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @MALIDP_COEFFTAB_NUM_COEFFS, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.drm_property_blob*, %struct.drm_property_blob** %3, align 8
  %15 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.drm_color_lut*
  store %struct.drm_color_lut* %17, %struct.drm_color_lut** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %80, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MALIDP_COEFFTAB_NUM_COEFFS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segments, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segments, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %28, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.drm_color_lut*, %struct.drm_color_lut** %5, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segments, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %36, i64 %43
  %45 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @drm_color_lut_extract(i32 %46, i32 12)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.drm_color_lut*, %struct.drm_color_lut** %5, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segments, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %48, i64 %55
  %57 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @drm_color_lut_extract(i32 %58, i32 12)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %22
  br label %70

63:                                               ; preds = %22
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  %67 = mul nsw i32 %66, 256
  %68 = load i32, i32* %9, align 4
  %69 = sdiv i32 %67, %68
  br label %70

70:                                               ; preds = %63, %62
  %71 = phi i32 [ 0, %62 ], [ %69, %63 ]
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @DE_COEFTAB_DATA(i32 %73, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %18

83:                                               ; preds = %18
  ret void
}

declare dso_local i32 @drm_color_lut_extract(i32, i32) #1

declare dso_local i32 @DE_COEFTAB_DATA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
