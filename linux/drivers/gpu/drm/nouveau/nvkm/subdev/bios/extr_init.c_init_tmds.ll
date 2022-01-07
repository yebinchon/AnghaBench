; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_tmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_tmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"TMDS\09T[0x%02x][0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_tmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tmds(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %14, align 8
  store %struct.nvkm_bios* %15, %struct.nvkm_bios** %3, align 8
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %18 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @nvbios_rd08(%struct.nvkm_bios* %16, i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 2
  %27 = call i32 @nvbios_rd08(%struct.nvkm_bios* %22, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 3
  %33 = call i32 @nvbios_rd08(%struct.nvkm_bios* %28, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %35 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %36 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @init_tmds_reg(%struct.nvbios_init* %40, i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 5
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %1
  br label %79

55:                                               ; preds = %1
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 0
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, 65536
  %61 = call i32 @init_wr32(%struct.nvbios_init* %56, i64 %58, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 4
  %69 = call i32 @init_rd32(%struct.nvbios_init* %66, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %69, %70
  %72 = or i32 %65, %71
  %73 = call i32 @init_wr32(%struct.nvbios_init* %62, i64 %64, i32 %72)
  %74 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 0
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @init_wr32(%struct.nvbios_init* %74, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @init_tmds_reg(%struct.nvbios_init*, i32) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i64, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
