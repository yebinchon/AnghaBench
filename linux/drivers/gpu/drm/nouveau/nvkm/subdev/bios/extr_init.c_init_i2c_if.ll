; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"I2C_IF\09I2C[0x%02x][0x%02x][0x%02x] & 0x%02x == 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_i2c_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_i2c_if(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %10 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %11 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %15, align 8
  store %struct.nvkm_bios* %16, %struct.nvkm_bios** %3, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @nvbios_rd08(%struct.nvkm_bios* %17, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 2
  %28 = call i32 @nvbios_rd08(%struct.nvkm_bios* %23, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %30 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %31 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @nvbios_rd08(%struct.nvkm_bios* %29, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 4
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 5
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %41, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @trace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %54 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 6
  store i64 %56, i64* %54, align 8
  %57 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %58 = call i32 @init_exec_force(%struct.nvbios_init* %57, i32 1)
  %59 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @init_rdi2cr(%struct.nvbios_init* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %1
  %70 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %71 = call i32 @init_exec_set(%struct.nvbios_init* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %1
  %73 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %74 = call i32 @init_exec_force(%struct.nvbios_init* %73, i32 0)
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_rdi2cr(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @init_exec_set(%struct.nvbios_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
