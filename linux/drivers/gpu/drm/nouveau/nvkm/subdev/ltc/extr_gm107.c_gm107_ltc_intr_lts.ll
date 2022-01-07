; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gm107.c_gm107_ltc_intr_lts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gm107.c_gm107_ltc_intr_lts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ltc = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@gf100_ltc_lts_intr_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"LTC%d_LTS%d: %08x [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm107_ltc_intr_lts(%struct.nvkm_ltc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_ltc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  store %struct.nvkm_ltc* %0, %struct.nvkm_ltc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %7, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 8192
  %20 = add nsw i32 1311744, %19
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 512
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 12
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 65535
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %34 = load i32, i32* @gf100_ltc_lts_intr_name, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @nvkm_snprintbf(i8* %33, i32 128, i32 %34, i32 %35)
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %42 = call i32 @nvkm_error(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %32, %3
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 12
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %44, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
