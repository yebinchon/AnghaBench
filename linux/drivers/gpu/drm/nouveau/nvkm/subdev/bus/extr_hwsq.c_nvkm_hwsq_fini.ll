; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_hwsq.c_nvkm_hwsq_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_hwsq.c_nvkm_hwsq_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_hwsq = type { %struct.TYPE_6__, %struct.nvkm_subdev* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.nvkm_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bus* }
%struct.nvkm_bus = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.nvkm_bus*, i32*, i32)* }

@.str = private unnamed_addr constant [22 x i8] c"hwsq exec failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hwsq ucode too large\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\09%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_hwsq_fini(%struct.nvkm_hwsq** %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_hwsq**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_hwsq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_bus*, align 8
  store %struct.nvkm_hwsq** %0, %struct.nvkm_hwsq*** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nvkm_hwsq**, %struct.nvkm_hwsq*** %3, align 8
  %11 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %10, align 8
  store %struct.nvkm_hwsq* %11, %struct.nvkm_hwsq** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %13 = icmp ne %struct.nvkm_hwsq* %12, null
  br i1 %13, label %14, label %107

14:                                               ; preds = %2
  %15 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %15, i32 0, i32 1
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %16, align 8
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %8, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_bus*, %struct.nvkm_bus** %21, align 8
  store %struct.nvkm_bus* %22, %struct.nvkm_bus** %9, align 8
  %23 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 4
  %28 = sdiv i32 %27, 4
  %29 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nvkm_bus*, %struct.nvkm_bus** %9, align 8
  %37 = getelementptr inbounds %struct.nvkm_bus, %struct.nvkm_bus* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %35, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %14
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.nvkm_bus*, %struct.nvkm_bus** %9, align 8
  %47 = getelementptr inbounds %struct.nvkm_bus, %struct.nvkm_bus* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32 (%struct.nvkm_bus*, i32*, i32)*, i32 (%struct.nvkm_bus*, i32*, i32)** %49, align 8
  %51 = load %struct.nvkm_bus*, %struct.nvkm_bus** %9, align 8
  %52 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %53 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %58 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %50(%struct.nvkm_bus* %51, i32* %56, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %45, %42
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  br label %75

70:                                               ; preds = %14
  %71 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %72 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %69
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %82 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %80, %84
  br label %86

86:                                               ; preds = %79, %76
  %87 = phi i1 [ false, %76 ], [ %85, %79 ]
  br i1 %87, label %88, label %103

88:                                               ; preds = %86
  %89 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %90 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %91 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %76

103:                                              ; preds = %86
  %104 = load %struct.nvkm_hwsq**, %struct.nvkm_hwsq*** %3, align 8
  store %struct.nvkm_hwsq* null, %struct.nvkm_hwsq** %104, align 8
  %105 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %106 = call i32 @kfree(%struct.nvkm_hwsq* %105)
  br label %107

107:                                              ; preds = %103, %2
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.nvkm_hwsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
