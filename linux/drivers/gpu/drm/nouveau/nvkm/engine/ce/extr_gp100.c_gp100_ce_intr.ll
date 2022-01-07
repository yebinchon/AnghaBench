; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gp100.c_gp100_ce_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gp100.c_gp100_ce_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_CE0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"BLOCKPIPE\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NONBLOCKPIPE\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gp100_ce_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NVKM_ENGINE_CE0, align 4
  %13 = sub nsw i32 %11, %12
  %14 = mul nsw i32 %13, 128
  store i32 %14, i32* %3, align 4
  %15 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %16 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %4, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 1
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %5, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 1065996, %21
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 1066000, %25
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %35 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 1066000, %37
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 %38, i32 1)
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, -2
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %48 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 1066000, %50
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 %51, i32 2)
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, -3
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @gp100_ce_intr_launcherr(%struct.nvkm_engine* %60, i32 %61)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 1066000, %64
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %65, i32 4)
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, -5
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 1066000, %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gp100_ce_intr_launcherr(%struct.nvkm_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
