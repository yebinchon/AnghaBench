; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_cr_idx_adr_latch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_cr_idx_adr_latch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CR_INDEX_ADDR C[%02x] C[%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_cr_idx_adr_latch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cr_idx_adr_latch(%struct.nvbios_init* %0) #0 {
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
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 5
  store i64 %47, i64* %45, align 8
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @init_rdvgai(%struct.nvbios_init* %48, i32 980, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %55, %1
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %57 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %58 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @nvbios_rd08(%struct.nvkm_bios* %56, i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %65 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = call i32 @init_wrvgai(%struct.nvbios_init* %68, i32 980, i32 %69, i32 %70)
  %73 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @init_wrvgai(%struct.nvbios_init* %73, i32 980, i32 %74, i32 %75)
  br label %51

77:                                               ; preds = %51
  %78 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @init_wrvgai(%struct.nvbios_init* %78, i32 980, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
