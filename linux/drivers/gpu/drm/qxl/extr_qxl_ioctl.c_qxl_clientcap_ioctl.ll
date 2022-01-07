; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_clientcap_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_clientcap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.qxl_device* }
%struct.TYPE_4__ = type { i32 }
%struct.qxl_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_file = type { i32 }
%struct.drm_qxl_clientcap = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @qxl_clientcap_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_clientcap_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.qxl_device*, align 8
  %9 = alloca %struct.drm_qxl_clientcap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.qxl_device*, %struct.qxl_device** %13, align 8
  store %struct.qxl_device* %14, %struct.qxl_device** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_qxl_clientcap*
  store %struct.drm_qxl_clientcap* %16, %struct.drm_qxl_clientcap** %9, align 8
  %17 = load %struct.drm_qxl_clientcap*, %struct.drm_qxl_clientcap** %9, align 8
  %18 = getelementptr inbounds %struct.drm_qxl_clientcap, %struct.drm_qxl_clientcap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.drm_qxl_clientcap*, %struct.drm_qxl_clientcap** %9, align 8
  %22 = getelementptr inbounds %struct.drm_qxl_clientcap, %struct.drm_qxl_clientcap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 58
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ENOSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %34
  %41 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %42 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @ENOSYS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %54, %37, %31
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
