; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_nv40.c_nv40_pm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_nv40.c_nv40_pm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_specdom = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_pm = type { i32 }
%struct.nv40_pm = type { %struct.nvkm_pm }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv40_pm_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"pc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_pm_new_(%struct.nvkm_specdom* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_pm** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_specdom*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_pm**, align 8
  %10 = alloca %struct.nv40_pm*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_specdom* %0, %struct.nvkm_specdom** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_pm** %3, %struct.nvkm_pm*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nv40_pm* @kzalloc(i32 4, i32 %12)
  store %struct.nv40_pm* %13, %struct.nv40_pm** %10, align 8
  %14 = icmp ne %struct.nv40_pm* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.nv40_pm*, %struct.nv40_pm** %10, align 8
  %20 = getelementptr inbounds %struct.nv40_pm, %struct.nv40_pm* %19, i32 0, i32 0
  %21 = load %struct.nvkm_pm**, %struct.nvkm_pm*** %9, align 8
  store %struct.nvkm_pm* %20, %struct.nvkm_pm** %21, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.nv40_pm*, %struct.nv40_pm** %10, align 8
  %25 = getelementptr inbounds %struct.nv40_pm, %struct.nv40_pm* %24, i32 0, i32 0
  %26 = call i32 @nvkm_pm_ctor(i32* @nv40_pm_, %struct.nvkm_device* %22, i32 %23, %struct.nvkm_pm* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %18
  %32 = load %struct.nv40_pm*, %struct.nv40_pm** %10, align 8
  %33 = getelementptr inbounds %struct.nv40_pm, %struct.nv40_pm* %32, i32 0, i32 0
  %34 = load %struct.nvkm_specdom*, %struct.nvkm_specdom** %6, align 8
  %35 = call i32 @nvkm_perfdom_new(%struct.nvkm_pm* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 4, %struct.nvkm_specdom* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %29, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.nv40_pm* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_pm_ctor(i32*, %struct.nvkm_device*, i32, %struct.nvkm_pm*) #1

declare dso_local i32 @nvkm_perfdom_new(%struct.nvkm_pm*, i8*, i32, i32, i32, i32, %struct.nvkm_specdom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
