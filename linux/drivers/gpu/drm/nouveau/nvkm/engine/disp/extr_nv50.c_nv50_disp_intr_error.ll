; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_intr_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_intr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i8* }

@nv50_disp_intr_error_type = common dso_local global i32 0, align 4
@nv50_disp_intr_error_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ERROR %d [%s] %02x [%s] chid %d mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NV_DBG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp*, i32)* @nv50_disp_intr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_disp_intr_error(%struct.nv50_disp* %0, i32 %1) #0 {
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
  %13 = alloca %struct.nvkm_enum*, align 8
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %15 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %5, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %6, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 8
  %24 = add nsw i32 6357124, %23
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 8
  %29 = add nsw i32 6357120, %28
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 16711680
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 28672
  %36 = ashr i32 %35, 12
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 4092
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @nv50_disp_intr_error_type, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %39, i32 %40)
  store %struct.nvkm_enum* %41, %struct.nvkm_enum** %13, align 8
  %42 = load i32, i32* @nv50_disp_intr_error_code, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %42, i32 %43)
  store %struct.nvkm_enum* %44, %struct.nvkm_enum** %12, align 8
  %45 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.nvkm_enum*, %struct.nvkm_enum** %13, align 8
  %48 = icmp ne %struct.nvkm_enum* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load %struct.nvkm_enum*, %struct.nvkm_enum** %13, align 8
  %51 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %58 = icmp ne %struct.nvkm_enum* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.nvkm_enum*, %struct.nvkm_enum** %12, align 8
  %61 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %63 ]
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @nvkm_error(%struct.nvkm_subdev* %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %55, i32 %56, i8* %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %72 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %64
  %77 = load i32, i32* %11, align 4
  switch i32 %77, label %88 [
    i32 128, label %78
  ]

78:                                               ; preds = %76
  %79 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %80 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NV_DBG_ERROR, align 4
  %87 = call i32 @nv50_disp_chan_mthd(i32 %85, i32 %86)
  br label %89

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %92 = load i32, i32* %4, align 4
  %93 = shl i32 65536, %92
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %91, i32 6357024, i32 %93)
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %96 = load i32, i32* %4, align 4
  %97 = mul nsw i32 %96, 8
  %98 = add nsw i32 6357120, %97
  %99 = call i32 @nvkm_wr32(%struct.nvkm_device* %95, i32 %98, i32 -1879048192)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nv50_disp_chan_mthd(i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
