; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_set_plane_afbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_set_plane_afbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32, i32 }
%struct.malidp_plane = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@MALIDP_AD_CROP_RIGHT_OFFSET = common dso_local global i32 0, align 4
@MALIDP_AD_CROP_H = common dso_local global i64 0, align 8
@MALIDP_AD_CROP_BOTTOM_OFFSET = common dso_local global i32 0, align 4
@MALIDP_AD_CROP_V = common dso_local global i64 0, align 8
@MALIDP_AD_EN = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_SPLIT = common dso_local global i32 0, align 4
@MALIDP_AD_BS = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_YTR = common dso_local global i32 0, align 4
@MALIDP_AD_YTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @malidp_de_set_plane_afbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_de_set_plane_afbc(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.malidp_plane*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %9, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %16 = call %struct.malidp_plane* @to_malidp_plane(%struct.drm_plane* %15)
  store %struct.malidp_plane* %16, %struct.malidp_plane** %3, align 8
  %17 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %18 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %143

24:                                               ; preds = %1
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %31 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %34 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @malidp_hw_write(i32 %32, i32 0, i64 %37)
  br label %143

39:                                               ; preds = %24
  %40 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %4, align 4
  %46 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %47 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  store i32 %51, i32* %5, align 4
  %52 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %53 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 16
  store i32 %57, i32* %7, align 4
  %58 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %59 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 16
  store i32 %63, i32* %8, align 4
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %66, %69
  %71 = load i32, i32* @MALIDP_AD_CROP_RIGHT_OFFSET, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %6, align 4
  %75 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %76 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %80 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MALIDP_AD_CROP_H, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @malidp_hw_write(i32 %77, i32 %78, i64 %85)
  %87 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %88 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %89, %92
  %94 = load i32, i32* @MALIDP_AD_CROP_BOTTOM_OFFSET, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %99 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %103 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MALIDP_AD_CROP_V, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @malidp_hw_write(i32 %100, i32 %101, i64 %108)
  %110 = load i32, i32* @MALIDP_AD_EN, align 4
  store i32 %110, i32* %6, align 4
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %112 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AFBC_FORMAT_MOD_SPLIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %39
  %118 = load i32, i32* @MALIDP_AD_BS, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %39
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AFBC_FORMAT_MOD_YTR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @MALIDP_AD_YTR, align 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %134 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %138 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @malidp_hw_write(i32 %135, i32 %136, i64 %141)
  br label %143

143:                                              ; preds = %132, %29, %23
  ret void
}

declare dso_local %struct.malidp_plane* @to_malidp_plane(%struct.drm_plane*) #1

declare dso_local i32 @malidp_hw_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
