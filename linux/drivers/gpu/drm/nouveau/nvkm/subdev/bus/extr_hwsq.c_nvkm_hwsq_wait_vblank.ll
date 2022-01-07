; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_hwsq.c_nvkm_hwsq_wait_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_hwsq.c_nvkm_hwsq_wait_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_hwsq = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"WAIT VBLANK !NO ACTIVE HEAD\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"WAIT VBLANK HEAD%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_hwsq_wait_vblank(%struct.nvkm_hwsq* %0) #0 {
  %2 = alloca %struct.nvkm_hwsq*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_hwsq* %0, %struct.nvkm_hwsq** %2, align 8
  %11 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %11, i32 0, i32 0
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %3, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %4, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 6357072)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %52, %1
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 %24, 3
  %26 = shl i32 2, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 1344, %31
  %33 = add nsw i32 6359872, %32
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, -65536
  %37 = lshr i32 %36, 16
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 65535
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %45, %29
  br label %51

51:                                               ; preds = %50, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %60 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %77

61:                                               ; preds = %55
  %62 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %2, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 3, i32 1
  %70 = call i32 @nvkm_hwsq_wait(%struct.nvkm_hwsq* %65, i32 %69, i32 0)
  %71 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %2, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 3, i32 1
  %76 = call i32 @nvkm_hwsq_wait(%struct.nvkm_hwsq* %71, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_hwsq_wait(%struct.nvkm_hwsq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
