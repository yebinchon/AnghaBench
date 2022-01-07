; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_set_color_encoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_set_color_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_plane = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@MALIDP_COLORADJ_NUM_COEFFS = common dso_local global i32 0, align 4
@malidp_yuv2rgb_coeffs = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_plane*, i32, i32)* @malidp_de_set_color_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_de_set_color_encoding(%struct.malidp_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.malidp_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.malidp_plane* %0, %struct.malidp_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MALIDP_COLORADJ_NUM_COEFFS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.malidp_plane*, %struct.malidp_plane** %4, align 8
  %14 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32***, i32**** @malidp_yuv2rgb_coeffs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32**, i32*** %16, i64 %18
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.malidp_plane*, %struct.malidp_plane** %4, align 8
  %30 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.malidp_plane*, %struct.malidp_plane** %4, align 8
  %35 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = load i32, i32* %7, align 4
  %41 = mul i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i32 @malidp_hw_write(i32 %15, i32 %28, i64 %43)
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i32 @malidp_hw_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
