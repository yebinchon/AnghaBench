; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_gpc_rop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_gpc_rop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@gf100_gpc_rop_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"GPC%d/PROP trap: %08x [%s] x = %u, y = %u, format = %x, storage type = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32)* @gf100_gr_trap_gpc_rop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_trap_gpc_rop(%struct.gf100_gr* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [4 x i32], align 16
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %10 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %5, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %6, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GPC_UNIT(i32 %17, i32 1056)
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 %18)
  %20 = and i32 %19, 1073741823
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GPC_UNIT(i32 %23, i32 1076)
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 %24)
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @GPC_UNIT(i32 %28, i32 1080)
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GPC_UNIT(i32 %33, i32 1084)
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %32, i32 %34)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %38 = load i32, i32* @gf100_gpc_rop_error, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = call i32 @nvkm_snprintbf(i8* %37, i32 128, i32 %38, i32 %40)
  %42 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65535
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 16
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 63
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @nvkm_error(%struct.nvkm_subdev* %42, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45, i8* %46, i32 %49, i32 %52, i32 %56, i32 %59)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @GPC_UNIT(i32 %62, i32 1056)
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 %63, i32 -1073741824)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
