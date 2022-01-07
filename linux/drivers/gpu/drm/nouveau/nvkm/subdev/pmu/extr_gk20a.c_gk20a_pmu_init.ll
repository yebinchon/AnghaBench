; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pmu = type { %struct.nvkm_falcon*, %struct.nvkm_subdev }
%struct.nvkm_falcon = type { i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_pmu = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"cannot acquire %s falcon!\0A\00", align 1
@BUSY_SLOT = common dso_local global i32 0, align 4
@CLK_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pmu*)* @gk20a_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_pmu_init(%struct.nvkm_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_pmu*, align 8
  %4 = alloca %struct.gk20a_pmu*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_falcon*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_pmu* %0, %struct.nvkm_pmu** %3, align 8
  %9 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %10 = call %struct.gk20a_pmu* @gk20a_pmu(%struct.nvkm_pmu* %9)
  store %struct.gk20a_pmu* %10, %struct.gk20a_pmu** %4, align 8
  %11 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %11, i32 0, i32 1
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %5, align 8
  %13 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %6, align 8
  %17 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %17, i32 0, i32 0
  %19 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %18, align 8
  store %struct.nvkm_falcon* %19, %struct.nvkm_falcon** %7, align 8
  %20 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %22 = call i32 @nvkm_falcon_get(%struct.nvkm_falcon* %20, %struct.nvkm_subdev* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %27 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nvkm_error(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %1
  %33 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %34 = load i32, i32* @BUSY_SLOT, align 4
  %35 = mul nsw i32 %34, 16
  %36 = add nsw i32 1284, %35
  %37 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %33, i32 %36, i32 2097153)
  %38 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %39 = load i32, i32* @BUSY_SLOT, align 4
  %40 = mul nsw i32 %39, 16
  %41 = add nsw i32 1292, %40
  %42 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %38, i32 %41, i32 2)
  %43 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %44 = load i32, i32* @CLK_SLOT, align 4
  %45 = mul nsw i32 %44, 16
  %46 = add nsw i32 1292, %45
  %47 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %43, i32 %46, i32 3)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %49 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %4, align 8
  %52 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %51, i32 0, i32 0
  %53 = call i32 @nvkm_timer_alarm(i32 %50, i32 2000000000, i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %32, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.gk20a_pmu* @gk20a_pmu(%struct.nvkm_pmu*) #1

declare dso_local i32 @nvkm_falcon_get(%struct.nvkm_falcon*, %struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

declare dso_local i32 @nvkm_timer_alarm(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
