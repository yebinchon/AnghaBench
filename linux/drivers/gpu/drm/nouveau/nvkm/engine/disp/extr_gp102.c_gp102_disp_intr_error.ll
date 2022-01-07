; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gp102.c_gp102_disp_intr_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gp102.c_gp102_disp_intr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"chid %d mthd %04x data %08x %08x %08x\0A\00", align 1
@NV_DBG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp*, i32)* @gp102_disp_intr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp102_disp_intr_error(%struct.nv50_disp* %0, i32 %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %11 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %5, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %6, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 12
  %20 = add nsw i32 6361584, %19
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 12
  %25 = add nsw i32 6361588, %24
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 12
  %30 = add nsw i32 6361592, %29
  %31 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 4092
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nvkm_error(%struct.nvkm_subdev* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %42 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 4092
  switch i32 %48, label %59 [
    i32 128, label %49
  ]

49:                                               ; preds = %46
  %50 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %51 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NV_DBG_ERROR, align 4
  %58 = call i32 @nv50_disp_chan_mthd(i32 %56, i32 %57)
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 1, %63
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %62, i32 6357148, i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 %67, 12
  %69 = add nsw i32 6361584, %68
  %70 = call i32 @nvkm_wr32(%struct.nvkm_device* %66, i32 %69, i32 -1879048192)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nv50_disp_chan_mthd(i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
