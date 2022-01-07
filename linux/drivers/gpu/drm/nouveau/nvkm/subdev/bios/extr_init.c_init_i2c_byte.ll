; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"I2C_BYTE\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09[0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_i2c_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_i2c_byte(%struct.nvbios_init* %0) #0 {
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
  %23 = call i32 @nvbios_rd08(%struct.nvkm_bios* %18, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = call i32 @nvbios_rd08(%struct.nvkm_bios* %24, i64 %28)
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 3
  %36 = call i32 @nvbios_rd08(%struct.nvkm_bios* %31, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 4
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %83, %82, %1
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %51 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 0
  %54 = call i32 @nvbios_rd08(%struct.nvkm_bios* %49, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @nvbios_rd08(%struct.nvkm_bios* %55, i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 2
  %66 = call i32 @nvbios_rd08(%struct.nvkm_bios* %61, i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  %71 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %72 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 3
  store i64 %74, i64* %72, align 8
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @init_rdi2cr(%struct.nvbios_init* %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %48
  br label %44

83:                                               ; preds = %48
  %84 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @init_wri2cr(%struct.nvbios_init* %84, i32 %85, i32 %86, i32 %87, i32 %92)
  br label %44

94:                                               ; preds = %44
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @init_rdi2cr(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @init_wri2cr(%struct.nvbios_init*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
