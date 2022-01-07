; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_set_g12a_osd1_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_set_g12a_osd1_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VPP_WRAP_OSD1_MATRIX_PRE_OFFSET0_1 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_PRE_OFFSET2 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_COEF00_01 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_COEF02_10 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_COEF11_12 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_COEF20_21 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_COEF22 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_OFFSET0_1 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_OFFSET2 = common dso_local global i32 0, align 4
@VPP_WRAP_OSD1_MATRIX_EN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*, i32*, i32)* @meson_viu_set_g12a_osd1_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_viu_set_g12a_osd1_matrix(%struct.meson_drm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.meson_drm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 4095
  %11 = shl i32 %10, 16
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 4095
  %16 = or i32 %11, %15
  %17 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %18 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_PRE_OFFSET0_1, align 4
  %21 = call i64 @_REG(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel(i32 %16, i64 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 4095
  %28 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %29 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_PRE_OFFSET2, align 4
  %32 = call i64 @_REG(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writel(i32 %27, i64 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 8191
  %39 = shl i32 %38, 16
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 8191
  %44 = or i32 %39, %43
  %45 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %46 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_COEF00_01, align 4
  %49 = call i64 @_REG(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writel(i32 %44, i64 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 8191
  %56 = shl i32 %55, 16
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 8191
  %61 = or i32 %56, %60
  %62 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %63 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_COEF02_10, align 4
  %66 = call i64 @_REG(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = call i32 @writel(i32 %61, i64 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 8191
  %73 = shl i32 %72, 16
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 8191
  %78 = or i32 %73, %77
  %79 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %80 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_COEF11_12, align 4
  %83 = call i64 @_REG(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = call i32 @writel(i32 %78, i64 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 9
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 8191
  %90 = shl i32 %89, 16
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 10
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 8191
  %95 = or i32 %90, %94
  %96 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %97 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_COEF20_21, align 4
  %100 = call i64 @_REG(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @writel(i32 %95, i64 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 11
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 8191
  %107 = shl i32 %106, 16
  %108 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %109 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_COEF22, align 4
  %112 = call i64 @_REG(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = call i32 @writel(i32 %107, i64 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 18
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 4095
  %119 = shl i32 %118, 16
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 19
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 4095
  %124 = or i32 %119, %123
  %125 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %126 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_OFFSET0_1, align 4
  %129 = call i64 @_REG(i32 %128)
  %130 = add nsw i64 %127, %129
  %131 = call i32 @writel(i32 %124, i64 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 20
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 4095
  %136 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %137 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_OFFSET2, align 4
  %140 = call i64 @_REG(i32 %139)
  %141 = add nsw i64 %138, %140
  %142 = call i32 @writel(i32 %135, i64 %141)
  %143 = call i32 @BIT(i32 0)
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %3
  %147 = call i32 @BIT(i32 0)
  br label %149

148:                                              ; preds = %3
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %152 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @VPP_WRAP_OSD1_MATRIX_EN_CTRL, align 4
  %155 = call i64 @_REG(i32 %154)
  %156 = add nsw i64 %153, %155
  %157 = call i32 @writel_bits_relaxed(i32 %143, i32 %150, i64 %156)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
