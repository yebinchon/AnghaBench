; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c_compute_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c_compute_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_composer = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vkms_composer*)* @compute_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_crc(i8* %0, %struct.vkms_composer* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vkms_composer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.vkms_composer* %1, %struct.vkms_composer** %4, align 8
  %13 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %14 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %19 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %9, align 4
  %23 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %24 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %23, i32 0, i32 3
  %25 = call i32 @drm_rect_height(%struct.TYPE_3__* %24)
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %10, align 4
  %27 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %28 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %27, i32 0, i32 3
  %29 = call i32 @drm_rect_width(%struct.TYPE_3__* %28)
  %30 = ashr i32 %29, 16
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %78, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %74, %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %48 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %52 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = add nsw i32 %49, %54
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %58 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = add nsw i32 %55, %60
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = getelementptr i8, i8* %65, i64 24
  %67 = call i32 @memset(i8* %66, i32 0, i32 8)
  %68 = load i32, i32* %12, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = call i32 @crc32_le(i32 %68, i8* %72, i32 4)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %46
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %40

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %32

81:                                               ; preds = %32
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @drm_rect_height(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
