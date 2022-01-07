; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_fixup_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_fixup_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvif_device }
%struct.nvif_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bo*, i32, i32*, i32*)* @nouveau_bo_fixup_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bo_fixup_align(%struct.nouveau_bo* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nouveau_drm*, align 8
  %10 = alloca %struct.nvif_device*, align 8
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_bdev(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %9, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.nvif_device* %18, %struct.nvif_device** %10, align 8
  %19 = load %struct.nvif_device*, %struct.nvif_device** %10, align 8
  %20 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %4
  %26 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %25
  %31 = load %struct.nvif_device*, %struct.nvif_device** %10, align 8
  %32 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 64
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  store i32 65536, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %41 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 64, %42
  %44 = call i32 @roundup_64(i32 %39, i32 %43)
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %97

46:                                               ; preds = %30
  %47 = load %struct.nvif_device*, %struct.nvif_device** %10, align 8
  %48 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  store i32 32768, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %57 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 64, %58
  %60 = call i32 @roundup_64(i32 %55, i32 %59)
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %96

62:                                               ; preds = %46
  %63 = load %struct.nvif_device*, %struct.nvif_device** %10, align 8
  %64 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %66, 32
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32*, i32** %7, align 8
  store i32 16384, i32* %69, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %73 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 64, %74
  %76 = call i32 @roundup_64(i32 %71, i32 %75)
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %95

78:                                               ; preds = %62
  %79 = load %struct.nvif_device*, %struct.nvif_device** %10, align 8
  %80 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %82, 16
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  store i32 16384, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %89 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 32, %90
  %92 = call i32 @roundup_64(i32 %87, i32 %91)
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %84, %78
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %95, %52
  br label %97

97:                                               ; preds = %96, %36
  br label %98

98:                                               ; preds = %97, %25
  br label %116

99:                                               ; preds = %4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %103 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 1, %104
  %106 = call i32 @roundup_64(i32 %101, i32 %105)
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %109 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 1, %110
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @max(i32 %111, i32 %113)
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %99, %98
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = call i32 @roundup_64(i32 %118, i32 %119)
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @roundup_64(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
