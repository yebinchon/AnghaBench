; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_memx.c_nvkm_memx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_memx.c_nvkm_memx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_memx = type { i32, i8*, %struct.nvkm_pmu* }

@PROC_MEMX = common dso_local global i32 0, align 4
@MEMX_MSG_INFO = common dso_local global i32 0, align 4
@MEMX_INFO_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_memx_init(%struct.nvkm_pmu* %0, %struct.nvkm_memx** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_pmu*, align 8
  %5 = alloca %struct.nvkm_memx**, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_memx*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i32, align 4
  store %struct.nvkm_pmu* %0, %struct.nvkm_pmu** %4, align 8
  store %struct.nvkm_memx** %1, %struct.nvkm_memx*** %5, align 8
  %10 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %6, align 8
  %14 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %4, align 8
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %16 = load i32, i32* @PROC_MEMX, align 4
  %17 = load i32, i32* @MEMX_MSG_INFO, align 4
  %18 = load i32, i32* @MEMX_INFO_DATA, align 4
  %19 = call i32 @nvkm_pmu_send(%struct.nvkm_pmu* %14, i8** %15, i32 %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nvkm_memx* @kzalloc(i32 24, i32 %25)
  %27 = load %struct.nvkm_memx**, %struct.nvkm_memx*** %5, align 8
  store %struct.nvkm_memx* %26, %struct.nvkm_memx** %27, align 8
  store %struct.nvkm_memx* %26, %struct.nvkm_memx** %7, align 8
  %28 = load %struct.nvkm_memx*, %struct.nvkm_memx** %7, align 8
  %29 = icmp ne %struct.nvkm_memx* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %4, align 8
  %35 = load %struct.nvkm_memx*, %struct.nvkm_memx** %7, align 8
  %36 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %35, i32 0, i32 2
  store %struct.nvkm_pmu* %34, %struct.nvkm_pmu** %36, align 8
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %38 = load i8*, i8** %37, align 16
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.nvkm_memx*, %struct.nvkm_memx** %7, align 8
  %41 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.nvkm_memx*, %struct.nvkm_memx** %7, align 8
  %45 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %49, %33
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %47, i32 1090944, i32 3)
  br label %49

49:                                               ; preds = %46
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %51 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 1090944)
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %46, label %53

53:                                               ; preds = %49
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %55 = load %struct.nvkm_memx*, %struct.nvkm_memx** %7, align 8
  %56 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 16777216, %57
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 1089984, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %30, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @nvkm_pmu_send(%struct.nvkm_pmu*, i8**, i32, i32, i32, i32) #1

declare dso_local %struct.nvkm_memx* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
