; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_cce.c_r128_cce_get_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_cce.c_r128_cce_get_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_dma = type { i32, i32, i32*, i32* }
%struct.drm_buf = type { i32, i32, %struct.drm_file* }

@EAGAIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.drm_dma*)* @r128_cce_get_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_get_buffers(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_dma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_dma* %2, %struct.drm_dma** %7, align 8
  %10 = load %struct.drm_dma*, %struct.drm_dma** %7, align 8
  %11 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %63, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.drm_dma*, %struct.drm_dma** %7, align 8
  %16 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.drm_buf* @r128_freelist_get(%struct.drm_device* %20)
  store %struct.drm_buf* %21, %struct.drm_buf** %9, align 8
  %22 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %23 = icmp ne %struct.drm_buf* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %67

27:                                               ; preds = %19
  %28 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %29 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %30 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %29, i32 0, i32 2
  store %struct.drm_file* %28, %struct.drm_file** %30, align 8
  %31 = load %struct.drm_dma*, %struct.drm_dma** %7, align 8
  %32 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %38 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %37, i32 0, i32 1
  %39 = call i64 @copy_to_user(i32* %36, i32* %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %67

44:                                               ; preds = %27
  %45 = load %struct.drm_dma*, %struct.drm_dma** %7, align 8
  %46 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %52 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %51, i32 0, i32 0
  %53 = call i64 @copy_to_user(i32* %50, i32* %52, i32 4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %67

58:                                               ; preds = %44
  %59 = load %struct.drm_dma*, %struct.drm_dma** %7, align 8
  %60 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %13

66:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %55, %41, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.drm_buf* @r128_freelist_get(%struct.drm_device*) #1

declare dso_local i64 @copy_to_user(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
