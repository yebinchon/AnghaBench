; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_mp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i8* }

@gf100_mp_global_error = common dso_local global i32 0, align 4
@gf100_mp_warp_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"GPC%i/TPC%i/MP trap: global %08x [%s] warp %04x [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_gr_trap_mp(%struct.gf100_gr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gf100_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_enum*, align 8
  %12 = alloca [128 x i8], align 16
  store %struct.gf100_gr* %0, %struct.gf100_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %14 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %7, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %8, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @TPC_UNIT(i32 %21, i32 %22, i32 1608)
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @TPC_UNIT(i32 %26, i32 %27, i32 1616)
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %31 = load i32, i32* @gf100_mp_global_error, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @nvkm_snprintbf(i8* %30, i32 128, i32 %31, i32 %32)
  %34 = load i32, i32* @gf100_mp_warp_error, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 65535
  %37 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %34, i32 %36)
  store %struct.nvkm_enum* %37, %struct.nvkm_enum** %11, align 8
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nvkm_enum*, %struct.nvkm_enum** %11, align 8
  %45 = icmp ne %struct.nvkm_enum* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load %struct.nvkm_enum*, %struct.nvkm_enum** %11, align 8
  %48 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ]
  %53 = call i32 @nvkm_error(%struct.nvkm_subdev* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i8* %42, i32 %43, i8* %52)
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @TPC_UNIT(i32 %55, i32 %56, i32 1608)
  %58 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 %57, i32 0)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @TPC_UNIT(i32 %60, i32 %61, i32 1616)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %59, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
