; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_condition_met.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_condition_met.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"\09[0x%02x] (0x%04x[0x%02x] & 0x%02x) == 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_io_condition_met to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_io_condition_met(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %6, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %20 = call i64 @init_io_condition_table(%struct.nvbios_init* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %2
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 5
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = add nsw i64 %29, 0
  %31 = call i64 @nvbios_rd16(%struct.nvkm_bios* %24, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 5
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = add nsw i64 %37, 2
  %39 = call i32 @nvbios_rd08(%struct.nvkm_bios* %32, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 5
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = add nsw i64 %45, 3
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %40, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 5
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = add nsw i64 %53, 4
  %55 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @trace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @init_rdvgai(%struct.nvbios_init* %62, i64 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @init_io_condition_table(%struct.nvbios_init*) #1

declare dso_local i64 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
