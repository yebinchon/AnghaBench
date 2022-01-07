; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_macro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"MACRO\090x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09\09R[0x%06x] = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_macro(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nvbios_rd08(%struct.nvkm_bios* %15, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = call i64 @init_macro_table(%struct.nvbios_init* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = add nsw i64 %33, 0
  %35 = call i32 @nvbios_rd32(%struct.nvkm_bios* %28, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = add nsw i64 %41, 4
  %43 = call i32 @nvbios_rd32(%struct.nvkm_bios* %36, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @init_wr32(%struct.nvbios_init* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %27, %1
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 2
  store i64 %55, i64* %53, align 8
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i64 @init_macro_table(%struct.nvbios_init*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
