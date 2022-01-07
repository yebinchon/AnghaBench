; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gf119.c_gf119_disp_intr_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_gf119.c_gf119_disp_intr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i8* }

@nv50_disp_intr_error_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"chid %d stat %08x reason %d [%s] mthd %04x data %08x code %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NV_DBG_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf119_disp_intr_error(%struct.nv50_disp* %0, i32 %1) #0 {
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
  %23 = add nsw i32 6357488, %22
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 28672
  %27 = ashr i32 %26, 12
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 4092
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 12
  %33 = add nsw i32 6357492, %32
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 12
  %38 = add nsw i32 6357496, %37
  %39 = call i32 @nvkm_rd32(%struct.nvkm_device* %35, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @nv50_disp_intr_error_type, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %40, i32 %41)
  store %struct.nvkm_enum* %42, %struct.nvkm_enum** %12, align 8
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %48 = icmp ne %struct.nvkm_enum* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %51 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @nvkm_error(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i8* %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %62 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ARRAY_SIZE(i32* %63)
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %78 [
    i32 128, label %68
  ]

68:                                               ; preds = %66
  %69 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %70 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NV_DBG_ERROR, align 4
  %77 = call i32 @nv50_disp_chan_mthd(i32 %75, i32 %76)
  br label %79

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %68
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %82 = load i32, i32* %4, align 4
  %83 = shl i32 1, %82
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 6357148, i32 %83)
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %86 = load i32, i32* %4, align 4
  %87 = mul nsw i32 %86, 12
  %88 = add nsw i32 6357488, %87
  %89 = call i32 @nvkm_wr32(%struct.nvkm_device* %85, i32 %88, i32 -1879048192)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nv50_disp_chan_mthd(i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
