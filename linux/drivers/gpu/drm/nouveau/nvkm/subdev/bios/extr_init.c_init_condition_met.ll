; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_condition_met.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_condition_met.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"\09[0x%02x] (R[0x%06x] & 0x%08x) == 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_condition_met to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_condition_met(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %16, align 8
  store %struct.nvkm_bios* %17, %struct.nvkm_bios** %6, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %19 = call i64 @init_condition_table(%struct.nvbios_init* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %2
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 12
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = add nsw i64 %28, 0
  %30 = call i32 @nvbios_rd32(%struct.nvkm_bios* %23, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 12
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = add nsw i64 %36, 4
  %38 = call i32 @nvbios_rd32(%struct.nvkm_bios* %31, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 12
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = add nsw i64 %44, 8
  %46 = call i32 @nvbios_rd32(%struct.nvkm_bios* %39, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @init_rd32(%struct.nvbios_init* %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @init_condition_table(%struct.nvbios_init*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
