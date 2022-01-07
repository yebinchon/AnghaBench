; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/nvdec/extr_base.c_nvkm_nvdec_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/nvdec/extr_base.c_nvkm_nvdec_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_nvdec = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"NVDEC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*)* @nvkm_nvdec_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_nvdec_oneinit(%struct.nvkm_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca %struct.nvkm_nvdec*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  %6 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %7 = call %struct.nvkm_nvdec* @nvkm_nvdec(%struct.nvkm_engine* %6)
  store %struct.nvkm_nvdec* %7, %struct.nvkm_nvdec** %4, align 8
  %8 = load %struct.nvkm_nvdec*, %struct.nvkm_nvdec** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_nvdec, %struct.nvkm_nvdec* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %5, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nvkm_top_addr(i32 %13, i32 %16)
  %18 = load %struct.nvkm_nvdec*, %struct.nvkm_nvdec** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_nvdec, %struct.nvkm_nvdec* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nvkm_nvdec*, %struct.nvkm_nvdec** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_nvdec, %struct.nvkm_nvdec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %29 = load %struct.nvkm_nvdec*, %struct.nvkm_nvdec** %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_nvdec, %struct.nvkm_nvdec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvkm_nvdec*, %struct.nvkm_nvdec** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_nvdec, %struct.nvkm_nvdec* %32, i32 0, i32 0
  %34 = call i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31, i32* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.nvkm_nvdec* @nvkm_nvdec(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_top_addr(i32, i32) #1

declare dso_local i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
