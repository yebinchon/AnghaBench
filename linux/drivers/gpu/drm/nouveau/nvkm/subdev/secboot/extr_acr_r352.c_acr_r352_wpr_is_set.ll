; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_wpr_is_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_wpr_is_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acr_r352 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvkm_secboot = type { i64, i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acr_r352*, %struct.nvkm_secboot*)* @acr_r352_wpr_is_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acr_r352_wpr_is_set(%struct.acr_r352* %0, %struct.nvkm_secboot* %1) #0 {
  %3 = alloca %struct.acr_r352*, align 8
  %4 = alloca %struct.nvkm_secboot*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acr_r352* %0, %struct.acr_r352** %3, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %4, align 8
  %11 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %11, i32 0, i32 2
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %5, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %6, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 1051860, i32 2)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1051860)
  %20 = and i32 %19, -256
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = call i32 @nvkm_wr32(%struct.nvkm_device* %23, i32 1051860, i32 3)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 1051860)
  %27 = and i32 %26, -256
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %31 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %36 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %41 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  br label %58

45:                                               ; preds = %2
  %46 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %47 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.acr_r352*, %struct.acr_r352** %3, align 8
  %53 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %45, %34
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sle i32 %71, %72
  br label %74

74:                                               ; preds = %70, %66, %62, %58
  %75 = phi i1 [ false, %66 ], [ false, %62 ], [ false, %58 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
