; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_auxch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_auxch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"AUXCH\09AUX[0x%08x] 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\09AUX[0x%08x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_auxch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_auxch(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nvbios_rd32(%struct.nvkm_bios* %15, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 5
  %26 = call i32 @nvbios_rd08(%struct.nvkm_bios* %21, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %31 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 6
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %38, %1
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 0
  %44 = call i32 @nvbios_rd08(%struct.nvkm_bios* %39, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @nvbios_rd08(%struct.nvkm_bios* %45, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @init_rdauxr(%struct.nvbios_init* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @init_wrauxr(%struct.nvbios_init* %60, i32 %61, i32 %64)
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %67, align 8
  br label %34

70:                                               ; preds = %34
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @init_rdauxr(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrauxr(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
