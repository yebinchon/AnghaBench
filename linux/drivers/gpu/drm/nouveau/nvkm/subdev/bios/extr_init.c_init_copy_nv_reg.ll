; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_copy_nv_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_copy_nv_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [78 x i8] c"COPY_NV_REG\09R[0x%06x] &= 0x%08x |= ((R[0x%06x] %s 0x%02x) & 0x%08x ^ 0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_copy_nv_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_copy_nv_reg(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %16, align 8
  store %struct.nvkm_bios* %17, %struct.nvkm_bios** %3, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @nvbios_rd32(%struct.nvkm_bios* %18, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 5
  %29 = call i32 @nvbios_rd08(%struct.nvkm_bios* %24, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 6
  %35 = call i32 @nvbios_rd32(%struct.nvkm_bios* %30, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 10
  %41 = call i32 @nvbios_rd32(%struct.nvkm_bios* %36, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 14
  %47 = call i32 @nvbios_rd32(%struct.nvkm_bios* %42, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %49 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %50 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 18
  %53 = call i32 @nvbios_rd32(%struct.nvkm_bios* %48, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %1
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 256, %66
  br label %70

68:                                               ; preds = %1
  %69 = load i32, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %67, %65 ], [ %69, %68 ]
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @trace(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i8* %61, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 22
  store i64 %78, i64* %76, align 8
  %79 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @init_rd32(%struct.nvbios_init* %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @init_shift(i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* %7, align 4
  %92 = xor i32 %90, %91
  %93 = call i32 @init_mask(%struct.nvbios_init* %84, i32 %85, i32 %87, i32 %92)
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @init_shift(i32, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
