; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"INIT_XLAT\09R[0x%06x] &= 0x%08x |= (X%02x((R[0x%06x] %s 0x%02x) & 0x%02x) << 0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_xlat(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %3, align 8
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @nvbios_rd32(%struct.nvkm_bios* %19, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 5
  %30 = call i32 @nvbios_rd08(%struct.nvkm_bios* %25, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 6
  %36 = call i32 @nvbios_rd08(%struct.nvkm_bios* %31, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %38 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %39 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 7
  %42 = call i32 @nvbios_rd08(%struct.nvkm_bios* %37, i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 8
  %48 = call i32 @nvbios_rd32(%struct.nvkm_bios* %43, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %51 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 12
  %54 = call i32 @nvbios_rd32(%struct.nvkm_bios* %49, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 16
  %60 = call i32 @nvbios_rd08(%struct.nvkm_bios* %55, i64 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %1
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 256, %74
  br label %78

76:                                               ; preds = %1
  %77 = load i32, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @trace(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64, i8* %69, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %84 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 17
  store i64 %86, i64* %84, align 8
  %87 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @init_rd32(%struct.nvbios_init* %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @init_shift(i32 %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @init_xlat_(%struct.nvbios_init* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = shl i32 %97, %98
  store i32 %99, i32* %11, align 4
  %100 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @init_mask(%struct.nvbios_init* %100, i32 %101, i32 %103, i32 %104)
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @init_shift(i32, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_xlat_(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
