; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gt215.c_gt215_pmu_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gt215.c_gt215_pmu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pmu = type { %struct.TYPE_2__, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"UAS fault at %06x addr %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wr32 %06x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt215_pmu_intr(%struct.nvkm_pmu* %0) #0 {
  %2 = alloca %struct.nvkm_pmu*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_pmu* %0, %struct.nvkm_pmu** %2, align 8
  %8 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %8, i32 0, i32 1
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %3, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 1089564)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 1089544)
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 16
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %1
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 1089900)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -2147483648
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 16777215
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 1089896)
  %38 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 1089900, i32 0)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -33
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %32, %26
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %50 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @schedule_work(i32* %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 1089540, i32 64)
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, -65
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %44
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %64 = call i32 @nvkm_rd32(%struct.nvkm_device* %63, i32 1091488)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %66 = call i32 @nvkm_rd32(%struct.nvkm_device* %65, i32 1091492)
  %67 = call i32 @nvkm_info(%struct.nvkm_subdev* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 1089540, i32 128)
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, -129
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %61, %57
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @nvkm_wr32(%struct.nvkm_device* %79, i32 1089540, i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nvkm_info(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
