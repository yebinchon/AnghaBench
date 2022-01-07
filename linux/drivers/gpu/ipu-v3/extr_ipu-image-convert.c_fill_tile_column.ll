; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_fill_tile_column.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_fill_tile_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { i64*, i32 }
%struct.ipu_image_convert_image = type { i32, i32, %struct.ipu_image_tile* }
%struct.ipu_image_tile = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_image_convert_ctx*, i32, %struct.ipu_image_convert_image*, i32, i32, %struct.ipu_image_convert_image*, i32, i32)* @fill_tile_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_tile_column(%struct.ipu_image_convert_ctx* %0, i32 %1, %struct.ipu_image_convert_image* %2, i32 %3, i32 %4, %struct.ipu_image_convert_image* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ipu_image_convert_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipu_image_convert_image*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipu_image_convert_image*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ipu_image_tile*, align 8
  %20 = alloca %struct.ipu_image_tile*, align 8
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ipu_image_convert_image* %2, %struct.ipu_image_convert_image** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ipu_image_convert_image* %5, %struct.ipu_image_convert_image** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %78, %8
  %22 = load i32, i32* %17, align 4
  %23 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %11, align 8
  %24 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %21
  %28 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %11, align 8
  %29 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %17, align 4
  %32 = mul i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %32, %33
  store i32 %34, i32* %18, align 4
  %35 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %11, align 8
  %36 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %35, i32 0, i32 2
  %37 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %36, align 8
  %38 = load i32, i32* %18, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %37, i64 %39
  store %struct.ipu_image_tile* %40, %struct.ipu_image_tile** %19, align 8
  %41 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %14, align 8
  %42 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %41, i32 0, i32 2
  %43 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %42, align 8
  %44 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %18, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %43, i64 %50
  store %struct.ipu_image_tile* %51, %struct.ipu_image_tile** %20, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %19, align 8
  %54 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %19, align 8
  %57 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %9, align 8
  %59 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ipu_rot_mode_is_irt(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %27
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %20, align 8
  %66 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %20, align 8
  %69 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %77

70:                                               ; preds = %27
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %20, align 8
  %73 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %20, align 8
  %76 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %21

81:                                               ; preds = %21
  ret void
}

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
