; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_load_imem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_load_imem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_falcon*, i8*, i32, i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [49 x i8] c"writing with secure tag on a non-secure falcon!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_falcon_load_imem(%struct.nvkm_falcon* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nvkm_falcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nvkm_warn(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %41

27:                                               ; preds = %17, %7
  %28 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.nvkm_falcon*, i8*, i32, i32, i32, i32, i32)*, i32 (%struct.nvkm_falcon*, i8*, i32, i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 %32(%struct.nvkm_falcon* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @nvkm_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
