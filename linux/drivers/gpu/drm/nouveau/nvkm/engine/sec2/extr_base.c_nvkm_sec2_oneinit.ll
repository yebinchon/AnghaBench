; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sec2/extr_base.c_nvkm_sec2_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sec2/extr_base.c_nvkm_sec2_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_sec2 = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SEC2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*)* @nvkm_sec2_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_sec2_oneinit(%struct.nvkm_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca %struct.nvkm_sec2*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  %6 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %7 = call %struct.nvkm_sec2* @nvkm_sec2(%struct.nvkm_engine* %6)
  store %struct.nvkm_sec2* %7, %struct.nvkm_sec2** %4, align 8
  %8 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %5, align 8
  %11 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %1
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @nvkm_top_addr(i32 %18, i32 %21)
  %23 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %39 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %4, align 8
  %43 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %42, i32 0, i32 0
  %44 = call i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %41, i32* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.nvkm_sec2* @nvkm_sec2(%struct.nvkm_engine*) #1

declare dso_local i64 @nvkm_top_addr(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
