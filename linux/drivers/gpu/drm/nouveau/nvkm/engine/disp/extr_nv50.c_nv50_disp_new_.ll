; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_func = type { i32, i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_disp = type { i32 }
%struct.nv50_disp = type { i32, i32, i32, i32, %struct.nvkm_disp, %struct.nv50_disp_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_disp_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nvkm-disp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_new_(%struct.nv50_disp_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_disp** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_disp_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_disp**, align 8
  %10 = alloca %struct.nv50_disp*, align 8
  %11 = alloca i32, align 4
  store %struct.nv50_disp_func* %0, %struct.nv50_disp_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_disp** %3, %struct.nvkm_disp*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nv50_disp* @kzalloc(i32 32, i32 %12)
  store %struct.nv50_disp* %13, %struct.nv50_disp** %10, align 8
  %14 = icmp ne %struct.nv50_disp* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %62

18:                                               ; preds = %4
  %19 = load %struct.nv50_disp_func*, %struct.nv50_disp_func** %6, align 8
  %20 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %21 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %20, i32 0, i32 5
  store %struct.nv50_disp_func* %19, %struct.nv50_disp_func** %21, align 8
  %22 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %23 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %22, i32 0, i32 4
  %24 = load %struct.nvkm_disp**, %struct.nvkm_disp*** %9, align 8
  store %struct.nvkm_disp* %23, %struct.nvkm_disp** %24, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %28 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %27, i32 0, i32 4
  %29 = call i32 @nvkm_disp_ctor(i32* @nv50_disp_, %struct.nvkm_device* %25, i32 %26, %struct.nvkm_disp* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %18
  %35 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %37 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %39 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %34
  %46 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %47 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %46, i32 0, i32 2
  %48 = load %struct.nv50_disp_func*, %struct.nv50_disp_func** %6, align 8
  %49 = getelementptr inbounds %struct.nv50_disp_func, %struct.nv50_disp_func* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @INIT_WORK(i32* %47, i32 %50)
  %52 = load %struct.nv50_disp_func*, %struct.nv50_disp_func** %6, align 8
  %53 = getelementptr inbounds %struct.nv50_disp_func, %struct.nv50_disp_func* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %56 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.nv50_disp*, %struct.nv50_disp** %10, align 8
  %60 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %59, i32 0, i32 0
  %61 = call i32 @nvkm_event_init(i32 %54, i32 1, i32 %58, i32* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %45, %42, %32, %15
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.nv50_disp* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_disp_ctor(i32*, %struct.nvkm_device*, i32, %struct.nvkm_disp*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @nvkm_event_init(i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
