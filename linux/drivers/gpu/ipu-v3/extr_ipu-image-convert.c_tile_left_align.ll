; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_tile_left_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_tile_left_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_pixfmt = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_pixfmt*)* @tile_left_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tile_left_align(%struct.ipu_image_pixfmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_image_pixfmt*, align 8
  store %struct.ipu_image_pixfmt* %0, %struct.ipu_image_pixfmt** %3, align 8
  %4 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %3, align 8
  %5 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %19

14:                                               ; preds = %8
  %15 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %3, align 8
  %16 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 8, %17
  br label %19

19:                                               ; preds = %14, %13
  %20 = phi i32 [ 8, %13 ], [ %18, %14 ]
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %3, align 8
  %23 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %3, align 8
  %29 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 16
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 4, i32 8
  br label %34

34:                                               ; preds = %27, %26
  %35 = phi i32 [ 2, %26 ], [ %33, %27 ]
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
