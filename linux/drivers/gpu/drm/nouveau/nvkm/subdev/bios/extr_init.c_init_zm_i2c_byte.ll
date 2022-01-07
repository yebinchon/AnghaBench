; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_i2c_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_i2c_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ZM_I2C_BYTE\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_i2c_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_i2c_byte(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %30 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %31 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @nvbios_rd08(%struct.nvkm_bios* %29, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %39 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 4
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %46, %1
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 0
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %47, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %54 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %55 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 2
  store i64 %65, i64* %63, align 8
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @init_wri2cr(%struct.nvbios_init* %66, i32 %67, i32 %68, i32 %69, i32 %70)
  br label %42

72:                                               ; preds = %42
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @init_wri2cr(%struct.nvbios_init*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
