; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsrc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsrc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_perfctr = type { i32**, i32*, i32 }
%struct.nvkm_perfdom = type { i32 }
%struct.nvkm_perfsig = type { i32 }
%struct.nvkm_perfsrc = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"enabled source %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pm*, %struct.nvkm_perfctr*)* @nvkm_perfsrc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfsrc_enable(%struct.nvkm_pm* %0, %struct.nvkm_perfctr* %1) #0 {
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
  %14 = alloca i32, align 4
  store %struct.nvkm_pm* %0, %struct.nvkm_pm** %4, align 8
  store %struct.nvkm_perfctr* %1, %struct.nvkm_perfctr** %5, align 8
  %15 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %6, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_perfdom* null, %struct.nvkm_perfdom** %8, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %133, %2
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %136

24:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %129, %24
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %28, %25
  %42 = phi i1 [ false, %25 ], [ %40, %28 ]
  br i1 %42, label %43, label %132

43:                                               ; preds = %41
  %44 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %45 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %46 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %49 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.nvkm_perfsig* @nvkm_perfsig_find(%struct.nvkm_pm* %44, i32 %47, i32 %54, %struct.nvkm_perfdom** %8)
  store %struct.nvkm_perfsig* %55, %struct.nvkm_perfsig** %9, align 8
  %56 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %9, align 8
  %57 = icmp ne %struct.nvkm_perfsig* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %137

61:                                               ; preds = %43
  %62 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %63 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %9, align 8
  %64 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %65 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.nvkm_perfsrc* @nvkm_perfsrc_find(%struct.nvkm_pm* %62, %struct.nvkm_perfsig* %63, i32 %74)
  store %struct.nvkm_perfsrc* %75, %struct.nvkm_perfsrc** %10, align 8
  %76 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %77 = icmp ne %struct.nvkm_perfsrc* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %61
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %137

81:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %82 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %83 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 -2147483648, i32* %12, align 4
  store i32 -2147483648, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %81
  %88 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %89 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %92 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %90, %93
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %5, align 8
  %98 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 32
  %109 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %110 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %108, %111
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %116 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %117 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @nvkm_mask(%struct.nvkm_device* %115, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %123 = load %struct.nvkm_perfsrc*, %struct.nvkm_perfsrc** %10, align 8
  %124 = getelementptr inbounds %struct.nvkm_perfsrc, %struct.nvkm_perfsrc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @nvkm_debug(%struct.nvkm_subdev* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %87
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %25

132:                                              ; preds = %41
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %21

136:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %78, %58
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.nvkm_perfsig* @nvkm_perfsig_find(%struct.nvkm_pm*, i32, i32, %struct.nvkm_perfdom**) #1

declare dso_local %struct.nvkm_perfsrc* @nvkm_perfsrc_find(%struct.nvkm_pm*, %struct.nvkm_perfsig*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
