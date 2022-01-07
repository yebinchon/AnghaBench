; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32, %struct.nvkm_subdev*, i32 }
%struct.nvkm_subdev = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"%s falcon already acquired by %s!\0A\00", align 1
@nvkm_subdev_name = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"acquired %s falcon\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_falcon_get(%struct.nvkm_falcon* %0, %struct.nvkm_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_falcon*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %4, align 8
  store %struct.nvkm_subdev* %1, %struct.nvkm_subdev** %5, align 8
  %6 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %9, i32 0, i32 1
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %12 = icmp ne %struct.nvkm_subdev* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %15 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** @nvkm_subdev_name, align 8
  %19 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %19, i32 0, i32 1
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nvkm_error(%struct.nvkm_subdev* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %25)
  %27 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %34 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %35 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nvkm_debug(%struct.nvkm_subdev* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %39 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %39, i32 0, i32 1
  store %struct.nvkm_subdev* %38, %struct.nvkm_subdev** %40, align 8
  %41 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %32, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
