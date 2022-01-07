; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm107.c_gm107_gr_init_bios_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm107.c_gm107_gr_init_bios_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*)* @gm107_gr_init_bios_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm107_gr_init_bios_2(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca %struct.bit_entry, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %11 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %12 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %3, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %4, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %19, align 8
  store %struct.nvkm_bios* %20, %struct.nvkm_bios** %5, align 8
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %22 = call i32 @bit_entry(%struct.nvkm_bios* %21, i8 signext 80, %struct.bit_entry* %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 44
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %34 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 40
  %37 = call i64 @nvbios_rd32(%struct.nvkm_bios* %33, i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 0
  %44 = call i32 @nvbios_rd08(%struct.nvkm_bios* %41, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @nvbios_rd08(%struct.nvkm_bios* %45, i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %71

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 4
  %58 = call i64 @nvbios_rd32(%struct.nvkm_bios* %55, i64 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %63 = call i64 @nvkm_rd32(%struct.nvkm_device* %62, i32 6394948)
  store i64 %63, i64* %10, align 8
  %64 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @nvbios_init(%struct.nvkm_subdev* %64, i64 %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 6394948, i64 %68)
  br label %70

70:                                               ; preds = %61, %54
  br label %71

71:                                               ; preds = %70, %51, %40
  br label %72

72:                                               ; preds = %71, %32
  br label %73

73:                                               ; preds = %72, %28, %24, %1
  ret void
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvbios_init(%struct.nvkm_subdev*, i64) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
