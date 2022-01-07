; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gv100.c_gv100_disp_intr_head_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gv100.c_gv100_disp_intr_head_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"head %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp*, i32)* @gv100_disp_intr_head_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_disp_intr_head_timing(%struct.nv50_disp* %0, i32 %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %5, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %6, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 4
  %18 = add nsw i32 6363136, %17
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 6363136, %26
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 3
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 %27, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %23, %2
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %39 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @nvkm_disp_vblank(%struct.TYPE_4__* %39, i32 %40)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 6363136, %44
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %42, i32 %45, i32 4)
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -5
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %37, %33
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @nvkm_warn(%struct.nvkm_subdev* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 6363136, %58
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_disp_vblank(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
