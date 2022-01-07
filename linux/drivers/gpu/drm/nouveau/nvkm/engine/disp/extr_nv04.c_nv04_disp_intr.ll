; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv04.c_nv04_disp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv04.c_nv04_disp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_disp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"PVIDEO intr: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_disp*)* @nv04_disp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_disp_intr(%struct.nvkm_disp* %0) #0 {
  %2 = alloca %struct.nvkm_disp*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_disp* %0, %struct.nvkm_disp** %2, align 8
  %8 = load %struct.nvkm_disp*, %struct.nvkm_disp** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %3, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 6291712)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 6299904)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.nvkm_disp*, %struct.nvkm_disp** %2, align 8
  %23 = call i32 @nvkm_disp_vblank(%struct.nvkm_disp* %22, i32 0)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 6291712, i32 1)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.nvkm_disp*, %struct.nvkm_disp** %2, align 8
  %32 = call i32 @nvkm_disp_vblank(%struct.nvkm_disp* %31, i32 1)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 6299904, i32 1)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 16
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 64
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 33024)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, -18
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @nvkm_info(%struct.nvkm_subdev* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i32 33024, i32 %57)
  br label %59

59:                                               ; preds = %55, %40, %35
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_disp_vblank(%struct.nvkm_disp*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_info(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
