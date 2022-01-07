; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsrc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsrc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_perfctr = type { i64**, i32*, i32 }
%struct.nvkm_perfdom = type { i32 }
%struct.nvkm_perfsig = type { i32 }
%struct.nvkm_perfsrc = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"disabled source %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pm*, %struct.nvkm_perfctr*)* @nvkm_perfsrc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfsrc_disable(%struct.nvkm_pm* %0, %struct.nvkm_perfctr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_pm*, align 8
  %5 = alloca %struct.nvkm_perfctr*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_perfdom*, align 8
  %9 = alloca %struct.nvkm_perfsig*, align 8
  %10 = alloca %struct.nvkm_perfsrc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_pm* %0, %struct.nvkm_pm** %4, align 8
  store %struct.nvkm_perfctr* %1, %struct.nvkm_perfctr** %5, align 8
  %14 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %6, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_perfdom* null, %struct.nvkm_perfdom** %8, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %112, %2
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %115

23:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %108, %23
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %29 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %28, i32 0, i32 0
  %30 = load i64**, i64*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %27, %24
  %41 = phi i1 [ false, %24 ], [ %39, %27 ]
  br i1 %41, label %42, label %111

42:                                               ; preds = %40
  %43 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %44 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.nvkm_perfsig* @nvkm_perfsig_find(%struct.nvkm_pm* %43, i32 %46, i32 %53, %struct.nvkm_perfdom** %8)
  store %struct.nvkm_perfsig* %54, %struct.nvkm_perfsig** %9, align 8
  %55 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %9, align 8
  %56 = icmp ne %struct.nvkm_perfsig* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %116

60:                                               ; preds = %42
  %61 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %62 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %9, align 8
  %63 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %64 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %63, i32 0, i32 0
  %65 = load i64**, i64*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.nvkm_perfsrc* @nvkm_perfsrc_find(%struct.nvkm_pm* %61, %struct.nvkm_perfsig* %62, i64 %73)
  store %struct.nvkm_perfsrc* %74, %struct.nvkm_perfsrc** %10, align 8
  %75 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %76 = icmp ne %struct.nvkm_perfsrc* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %60
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %116

80:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  %81 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %82 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -2147483648, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %88 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %91 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %89, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %97 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %98 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @nvkm_mask(%struct.nvkm_device* %96, i32 %99, i32 %100, i32 0)
  %102 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %103 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %104 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @nvkm_debug(%struct.nvkm_subdev* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %86
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %24

111:                                              ; preds = %40
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %20

115:                                              ; preds = %20
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %77, %57
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.nvkm_perfsig* @nvkm_perfsig_find(%struct.nvkm_pm*, i32, i32, %struct.nvkm_perfdom**) #1

declare dso_local %struct.nvkm_perfsrc* @nvkm_perfsrc_find(%struct.nvkm_pm*, %struct.nvkm_perfsig*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
