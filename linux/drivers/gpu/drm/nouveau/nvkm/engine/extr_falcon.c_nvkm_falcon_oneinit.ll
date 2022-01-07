; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_falcon = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"falcon version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"secret level: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"code limit: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data limit: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*)* @nvkm_falcon_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_falcon_oneinit(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %9 = call %struct.nvkm_falcon* @nvkm_falcon(%struct.nvkm_engine* %8)
  store %struct.nvkm_falcon* %9, %struct.nvkm_falcon** %3, align 8
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %4, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %5, align 8
  %16 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 163
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 170
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 172
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %23, %1
  %34 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %35 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 552960
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %43 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %58

44:                                               ; preds = %28
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 300
  %48 = call i32 @nvkm_rd32(%struct.nvkm_device* %45, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 15
  %51 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %52 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 48
  %55 = ashr i32 %54, 4
  %56 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %57 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %44, %33
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 264
  %62 = call i32 @nvkm_rd32(%struct.nvkm_device* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 511
  %65 = shl i32 %64, 8
  %66 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %67 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 261632
  %71 = ashr i32 %70, 1
  %72 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %73 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %76 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %77 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @nvkm_debug(%struct.nvkm_subdev* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %81 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %82 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @nvkm_debug(%struct.nvkm_subdev* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %86 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %87 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @nvkm_debug(%struct.nvkm_subdev* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %92 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %93 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nvkm_debug(%struct.nvkm_subdev* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  ret i32 0
}

declare dso_local %struct.nvkm_falcon* @nvkm_falcon(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
