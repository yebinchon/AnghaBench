; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_memx.c_nvkm_memx_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_memx.c_nvkm_memx_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memx = type { i32, %struct.nvkm_pmu* }
%struct.nvkm_pmu = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@PROC_MEMX = common dso_local global i32 0, align 4
@MEMX_MSG_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Exec took %uns, PMU_IN %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_memx_fini(%struct.nvkm_memx** %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_memx**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_memx*, align 8
  %6 = alloca %struct.nvkm_pmu*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.nvkm_memx** %0, %struct.nvkm_memx*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nvkm_memx**, %struct.nvkm_memx*** %3, align 8
  %12 = load %struct.nvkm_memx*, %struct.nvkm_memx** %11, align 8
  store %struct.nvkm_memx* %12, %struct.nvkm_memx** %5, align 8
  %13 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %13, i32 0, i32 1
  %15 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %14, align 8
  store %struct.nvkm_pmu* %15, %struct.nvkm_pmu** %6, align 8
  %16 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %7, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %8, align 8
  %21 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %22 = call i32 @memx_out(%struct.nvkm_memx* %21)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 1089984)
  %25 = and i32 %24, 16777215
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 1090944, i32 0)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %6, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* @PROC_MEMX, align 4
  %34 = load i32, i32* @MEMX_MSG_EXEC, align 4
  %35 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nvkm_pmu_send(%struct.nvkm_pmu* %31, i32* %32, i32 %33, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nvkm_debug(%struct.nvkm_subdev* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %30, %2
  %47 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %48 = call i32 @kfree(%struct.nvkm_memx* %47)
  ret i32 0
}

declare dso_local i32 @memx_out(%struct.nvkm_memx*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_pmu_send(%struct.nvkm_pmu*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvkm_memx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
