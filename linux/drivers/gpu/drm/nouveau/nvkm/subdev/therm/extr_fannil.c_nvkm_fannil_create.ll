; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fannil.c_nvkm_fannil_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fannil.c_nvkm_fannil_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvkm_fan* }
%struct.nvkm_fan = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"none / external\00", align 1
@nvkm_fannil_get = common dso_local global i32 0, align 4
@nvkm_fannil_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_fannil_create(%struct.nvkm_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca %struct.nvkm_fan*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nvkm_fan* @kzalloc(i32 16, i32 %5)
  store %struct.nvkm_fan* %6, %struct.nvkm_fan** %4, align 8
  %7 = load %struct.nvkm_fan*, %struct.nvkm_fan** %4, align 8
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 0
  store %struct.nvkm_fan* %7, %struct.nvkm_fan** %9, align 8
  %10 = load %struct.nvkm_fan*, %struct.nvkm_fan** %4, align 8
  %11 = icmp ne %struct.nvkm_fan* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.nvkm_fan*, %struct.nvkm_fan** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @nvkm_fannil_get, align 4
  %19 = load %struct.nvkm_fan*, %struct.nvkm_fan** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @nvkm_fannil_set, align 4
  %22 = load %struct.nvkm_fan*, %struct.nvkm_fan** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.nvkm_fan* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
