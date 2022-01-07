; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dp.c_nouveau_dp_probe_oui.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dp.c_nouveau_dp_probe_oui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.nouveau_drm = type { i32 }

@DP_DOWN_STREAM_PORT_COUNT = common dso_local global i64 0, align 8
@DP_OUI_SUPPORT = common dso_local global i32 0, align 4
@DP_SINK_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sink OUI: %02hx%02hx%02hx\0A\00", align 1
@DP_BRANCH_OUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Branch OUI: %02hx%02hx%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nvkm_i2c_aux*, i32*)* @nouveau_dp_probe_oui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_dp_probe_oui(%struct.drm_device* %0, %struct.nvkm_i2c_aux* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvkm_i2c_aux*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca [3 x i32], align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nvkm_i2c_aux* %1, %struct.nvkm_i2c_aux** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* @DP_DOWN_STREAM_PORT_COUNT, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DP_OUI_SUPPORT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %5, align 8
  %21 = load i32, i32* @DP_SINK_OUI, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %23 = call i32 @nvkm_rdaux(%struct.nvkm_i2c_aux* %20, i32 %21, i32* %22, i32 3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NV_DEBUG(%struct.nouveau_drm* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %25, %19
  %35 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %5, align 8
  %36 = load i32, i32* @DP_BRANCH_OUI, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %38 = call i32 @nvkm_rdaux(%struct.nvkm_i2c_aux* %35, i32 %36, i32* %37, i32 3)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NV_DEBUG(%struct.nouveau_drm* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %18, %40, %34
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvkm_rdaux(%struct.nvkm_i2c_aux*, i32, i32*, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
