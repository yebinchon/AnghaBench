; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_idx_addr_latched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_idx_addr_latched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"INDEX_ADDRESS_LATCHED\09R[0x%06x] : R[0x%06x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\09CTRL &= 0x%08x |= 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_idx_addr_latched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_idx_addr_latched(%struct.nvbios_init* %0) #0 {
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
  %29 = call i32 @nvbios_rd32(%struct.nvkm_bios* %24, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 9
  %35 = call i32 @nvbios_rd32(%struct.nvkm_bios* %30, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 13
  %41 = call i32 @nvbios_rd32(%struct.nvkm_bios* %36, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 17
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %55 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 18
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %62, %1
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %64 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %65 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 0
  %68 = call i32 @nvbios_rd08(%struct.nvkm_bios* %63, i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %70 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %71 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i32 @nvbios_rd08(%struct.nvkm_bios* %69, i64 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %79 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 2
  store i64 %81, i64* %79, align 8
  %82 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @init_wr32(%struct.nvbios_init* %82, i32 %83, i32 %84)
  %86 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %6, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @init_mask(%struct.nvbios_init* %86, i32 %87, i32 %89, i32 %92)
  br label %58

94:                                               ; preds = %58
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
