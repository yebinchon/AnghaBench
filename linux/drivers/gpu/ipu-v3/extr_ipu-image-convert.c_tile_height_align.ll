; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_tile_height_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_tile_height_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_pixfmt = type { i32, i32, i64 }

@IMAGE_CONVERT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipu_image_pixfmt*, i32)* @tile_height_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tile_height_align(i32 %0, %struct.ipu_image_pixfmt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_image_pixfmt*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ipu_image_pixfmt* %1, %struct.ipu_image_pixfmt** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IMAGE_CONVERT_IN, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ipu_rot_mode_is_irt(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  store i32 2, i32* %4, align 4
  br label %34

16:                                               ; preds = %11
  %17 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %6, align 8
  %18 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %6, align 8
  %23 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %6, align 8
  %28 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 8, %29
  br label %32

31:                                               ; preds = %21, %16
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ %30, %26 ], [ 8, %31 ]
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ipu_rot_mode_is_irt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
