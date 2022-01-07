; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_secboot = type { i32 }
%struct.nvkm_msgqueue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unhandled firmware version 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"firmware version: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_msgqueue_new(i32 %0, %struct.nvkm_falcon* %1, %struct.nvkm_secboot* %2, %struct.nvkm_msgqueue** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_falcon*, align 8
  %7 = alloca %struct.nvkm_secboot*, align 8
  %8 = alloca %struct.nvkm_msgqueue**, align 8
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.nvkm_falcon* %1, %struct.nvkm_falcon** %6, align 8
  store %struct.nvkm_secboot* %2, %struct.nvkm_secboot** %7, align 8
  store %struct.nvkm_msgqueue** %3, %struct.nvkm_msgqueue*** %8, align 8
  %11 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %12 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %11, i32 0, i32 0
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %9, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %32 [
    i32 20432445, label %17
    i32 20429989, label %22
    i32 21548524, label %27
    i32 22859582, label %27
    i32 23581283, label %27
  ]

17:                                               ; preds = %4
  %18 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %19 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %7, align 8
  %20 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %8, align 8
  %21 = call i32 @msgqueue_0137c63d_new(%struct.nvkm_falcon* %18, %struct.nvkm_secboot* %19, %struct.nvkm_msgqueue** %20)
  store i32 %21, i32* %10, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %24 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %7, align 8
  %25 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %8, align 8
  %26 = call i32 @msgqueue_0137bca5_new(%struct.nvkm_falcon* %23, %struct.nvkm_secboot* %24, %struct.nvkm_msgqueue** %25)
  store i32 %26, i32* %10, align 4
  br label %36

27:                                               ; preds = %4, %4, %4
  %28 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %29 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %7, align 8
  %30 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %8, align 8
  %31 = call i32 @msgqueue_0148cdec_new(%struct.nvkm_falcon* %28, %struct.nvkm_secboot* %29, %struct.nvkm_msgqueue** %30)
  store i32 %31, i32* %10, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @nvkm_error(%struct.nvkm_subdev* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %27, %22, %17
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @nvkm_debug(%struct.nvkm_subdev* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %8, align 8
  %45 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %36
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @msgqueue_0137c63d_new(%struct.nvkm_falcon*, %struct.nvkm_secboot*, %struct.nvkm_msgqueue**) #1

declare dso_local i32 @msgqueue_0137bca5_new(%struct.nvkm_falcon*, %struct.nvkm_secboot*, %struct.nvkm_msgqueue**) #1

declare dso_local i32 @msgqueue_0148cdec_new(%struct.nvkm_falcon*, %struct.nvkm_secboot*, %struct.nvkm_msgqueue**) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
