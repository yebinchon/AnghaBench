; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gv100.c_gv100_gr_trap_sm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gv100.c_gv100_gr_trap_sm.c"
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
@.str = private unnamed_addr constant [56 x i8] c"GPC%i/TPC%i/SM%d trap: global %08x [%s] warp %04x [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32, i32, i32)* @gv100_gr_trap_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_gr_trap_sm(%struct.gf100_gr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gf100_gr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_enum*, align 8
  %14 = alloca [128 x i8], align 16
  store %struct.gf100_gr* %0, %struct.gf100_gr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.gf100_gr*, %struct.gf100_gr** %5, align 8
  %16 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.nvkm_subdev* %18, %struct.nvkm_subdev** %9, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %10, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 128
  %27 = add nsw i32 1840, %26
  %28 = call i32 @TPC_UNIT(i32 %23, i32 %24, i32 %27)
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 128
  %35 = add nsw i32 1844, %34
  %36 = call i32 @TPC_UNIT(i32 %31, i32 %32, i32 %35)
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %39 = load i32, i32* @gf100_mp_global_error, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @nvkm_snprintbf(i8* %38, i32 128, i32 %39, i32 %40)
  %42 = load i32, i32* @gf100_mp_warp_error, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 65535
  %45 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %42, i32 %44)
  store %struct.nvkm_enum* %45, %struct.nvkm_enum** %13, align 8
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.nvkm_enum*, %struct.nvkm_enum** %13, align 8
  %54 = icmp ne %struct.nvkm_enum* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %4
  %56 = load %struct.nvkm_enum*, %struct.nvkm_enum** %13, align 8
  %57 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  br label %60

59:                                               ; preds = %4
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i8* [ %58, %55 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %59 ]
  %62 = call i32 @nvkm_error(%struct.nvkm_subdev* %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i8* %51, i32 %52, i8* %61)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %66, 128
  %68 = add nsw i32 1840, %67
  %69 = call i32 @TPC_UNIT(i32 %64, i32 %65, i32 %68)
  %70 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %69, i32 0)
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %74, 128
  %76 = add nsw i32 1844, %75
  %77 = call i32 @TPC_UNIT(i32 %72, i32 %73, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %71, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
