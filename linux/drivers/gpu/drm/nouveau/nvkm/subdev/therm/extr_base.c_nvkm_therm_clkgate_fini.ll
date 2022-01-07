; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_clkgate_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_clkgate_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_therm*, i32)* }

@.str = private unnamed_addr constant [30 x i8] c"Preparing clockgating for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fini\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_clkgate_fini(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %6 = icmp ne %struct.nvkm_therm* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvkm_therm*, i32)*, i32 (%struct.nvkm_therm*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.nvkm_therm*, i32)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %7, %2
  br label %36

20:                                               ; preds = %14
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %21, i32 0, i32 1
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @nvkm_debug(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.nvkm_therm*, i32)*, i32 (%struct.nvkm_therm*, i32)** %31, align 8
  %33 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 %32(%struct.nvkm_therm* %33, i32 %34)
  br label %36

36:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @nvkm_debug(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
