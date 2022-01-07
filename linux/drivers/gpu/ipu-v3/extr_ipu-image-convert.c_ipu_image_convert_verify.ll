; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_image_convert_verify(%struct.ipu_image* %0, %struct.ipu_image* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_image*, align 8
  %6 = alloca %struct.ipu_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu_image, align 8
  %9 = alloca %struct.ipu_image, align 8
  store %struct.ipu_image* %0, %struct.ipu_image** %5, align 8
  store %struct.ipu_image* %1, %struct.ipu_image** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %11 = bitcast %struct.ipu_image* %8 to i8*
  %12 = bitcast %struct.ipu_image* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.ipu_image*, %struct.ipu_image** %6, align 8
  %14 = bitcast %struct.ipu_image* %9 to i8*
  %15 = bitcast %struct.ipu_image* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ipu_image_convert_adjust(%struct.ipu_image* %8, %struct.ipu_image* %9, i32 %16)
  %18 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %22 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %31 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ipu_image*, %struct.ipu_image** %6, align 8
  %40 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ipu_image*, %struct.ipu_image** %6, align 8
  %49 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44, %35, %26, %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ipu_image_convert_adjust(%struct.ipu_image*, %struct.ipu_image*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
