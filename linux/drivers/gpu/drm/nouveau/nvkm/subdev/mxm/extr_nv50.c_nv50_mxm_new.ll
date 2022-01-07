; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_nv50_mxm_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_nv50_mxm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_mxm = type { i32, %struct.nvkm_subdev }

@MXM_SANITISE_DCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_mxm_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_subdev** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev**, align 8
  %8 = alloca %struct.nvkm_mxm*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_subdev** %2, %struct.nvkm_subdev*** %7, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nvkm_mxm_new_(%struct.nvkm_device* %10, i32 %11, %struct.nvkm_mxm** %8)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %8, align 8
  %14 = icmp ne %struct.nvkm_mxm* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %16, i32 0, i32 1
  %18 = load %struct.nvkm_subdev**, %struct.nvkm_subdev*** %7, align 8
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %19
  %25 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MXM_SANITISE_DCB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %8, align 8
  %33 = call i32 @mxm_dcb_sanitise(%struct.nvkm_mxm* %32)
  br label %34

34:                                               ; preds = %31, %24
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @nvkm_mxm_new_(%struct.nvkm_device*, i32, %struct.nvkm_mxm**) #1

declare dso_local i32 @mxm_dcb_sanitise(%struct.nvkm_mxm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
