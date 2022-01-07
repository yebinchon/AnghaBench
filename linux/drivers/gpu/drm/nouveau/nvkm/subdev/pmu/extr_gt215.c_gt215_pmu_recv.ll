; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gt215.c_gt215_pmu_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gt215.c_gt215_pmu_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pmu = type { %struct.TYPE_2__, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%c%c%c%c %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt215_pmu_recv(%struct.nvkm_pmu* %0) #0 {
  %2 = alloca %struct.nvkm_pmu*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_pmu* %0, %struct.nvkm_pmu** %2, align 8
  %10 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %10, i32 0, i32 1
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %3, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %4, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 1090764)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1090760)
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %120

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %26, %22
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 1090944, i32 2)
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 1090944)
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %23, label %30

30:                                               ; preds = %26
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 7
  %34 = shl i32 %33, 4
  %35 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %36 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %34, %38
  %40 = or i32 33554432, %39
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 1089984, i32 %40)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 1089988)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %45 = call i32 @nvkm_rd32(%struct.nvkm_device* %44, i32 1089988)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 1089988)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %49 = call i32 @nvkm_rd32(%struct.nvkm_device* %48, i32 1089988)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  %53 = and i32 %52, 15
  %54 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i32 1090764, i32 %53)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 1090944, i32 0)
  %57 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %58 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %30
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %65 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %72 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %79 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %85 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %83, i32* %88, align 4
  %89 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %90 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %2, align 8
  %93 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = call i32 @wake_up(i32* %94)
  br label %120

96:                                               ; preds = %69, %62
  br label %97

97:                                               ; preds = %96, %30
  %98 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 255
  %101 = ashr i32 %100, 0
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, 65280
  %105 = ashr i32 %104, 8
  %106 = trunc i32 %105 to i8
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 16711680
  %109 = ashr i32 %108, 16
  %110 = trunc i32 %109 to i8
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, -16777216
  %113 = lshr i32 %112, 24
  %114 = trunc i32 %113 to i8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @nvkm_warn(%struct.nvkm_subdev* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %102, i8 signext %106, i8 signext %110, i8 signext %114, i32 %115, i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %97, %76, %21
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
