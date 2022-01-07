; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon_func = type { i32 }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_falcon = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.nvkm_subdev*, %struct.nvkm_falcon_func* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unsupported falcon %s!\0A\00", align 1
@nvkm_subdev_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_falcon_ctor(%struct.nvkm_falcon_func* %0, %struct.nvkm_subdev* %1, i8* %2, i32 %3, %struct.nvkm_falcon* %4) #0 {
  %6 = alloca %struct.nvkm_falcon_func*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_falcon*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_falcon_func* %0, %struct.nvkm_falcon_func** %6, align 8
  store %struct.nvkm_subdev* %1, %struct.nvkm_subdev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_falcon* %4, %struct.nvkm_falcon** %10, align 8
  %14 = load %struct.nvkm_falcon_func*, %struct.nvkm_falcon_func** %6, align 8
  %15 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %16 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %15, i32 0, i32 11
  store %struct.nvkm_falcon_func* %14, %struct.nvkm_falcon_func** %16, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %18 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %19 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %18, i32 0, i32 10
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %22 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %25 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %27 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %26, i32 0, i32 9
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %30 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %29, i32 0, i32 8
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %33 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %32, i32 300)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 15
  %36 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %37 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = ashr i32 %38, 4
  %40 = and i32 %39, 3
  %41 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %42 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 15
  %46 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %47 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 12
  %51 = and i32 %50, 15
  %52 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %53 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %56 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %55, i32 264)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 511
  %59 = shl i32 %58, 8
  %60 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %61 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 261632
  %65 = ashr i32 %64, 1
  %66 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %67 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %70 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %79 [
    i32 132, label %72
    i32 128, label %73
    i32 131, label %74
    i32 130, label %75
    i32 129, label %78
  ]

72:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %89

73:                                               ; preds = %5
  store i32 3080, i32* %11, align 4
  br label %89

74:                                               ; preds = %5
  store i32 3328, i32* %11, align 4
  br label %89

75:                                               ; preds = %5
  store i32 1032, i32* %11, align 4
  %76 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %77 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %76, i32 0, i32 4
  store i32 1, i32* %77, align 4
  br label %89

78:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %89

79:                                               ; preds = %5
  %80 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %81 = load i32*, i32** @nvkm_subdev_name, align 8
  %82 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %83 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @nvkm_warn(%struct.nvkm_subdev* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %79, %78, %75, %74, %73, %72
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = ashr i32 %96, 20
  %98 = and i32 %97, 1
  %99 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %10, align 8
  %100 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %92, %89
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
