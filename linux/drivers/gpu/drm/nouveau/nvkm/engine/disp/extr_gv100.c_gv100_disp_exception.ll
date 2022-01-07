; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gv100.c_gv100_disp_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gv100.c_gv100_disp_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i8* }

@nv50_disp_intr_error_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"chid %d stat %08x reason %d [%s] mthd %04x data %08x code %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NV_DBG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp*, i32)* @gv100_disp_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_disp_exception(%struct.nv50_disp* %0, i32 %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_enum*, align 8
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %14 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %5, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %6, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 12
  %23 = add nsw i32 6361120, %22
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 28672
  %27 = ashr i32 %26, 12
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 4095
  %30 = shl i32 %29, 2
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 12
  %34 = add nsw i32 6361124, %33
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 12
  %39 = add nsw i32 6361128, %38
  %40 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @nv50_disp_intr_error_type, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %41, i32 %42)
  store %struct.nvkm_enum* %43, %struct.nvkm_enum** %12, align 8
  %44 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %49 = icmp ne %struct.nvkm_enum* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %52 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %54 ]
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @nvkm_error(%struct.nvkm_subdev* %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i8* %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %63 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @ARRAY_SIZE(i64* %64)
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %55
  %68 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %69 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  switch i32 %77, label %88 [
    i32 512, label %78
  ]

78:                                               ; preds = %76
  %79 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %80 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @NV_DBG_ERROR, align 4
  %87 = call i32 @nv50_disp_chan_mthd(i64 %85, i32 %86)
  br label %89

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %67, %55
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %92, 12
  %94 = add nsw i32 6361120, %93
  %95 = call i32 @nvkm_wr32(%struct.nvkm_device* %91, i32 %94, i32 -1879048192)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @nv50_disp_chan_mthd(i64, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
