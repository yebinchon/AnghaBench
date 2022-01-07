; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_map_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_map_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_vmap_entry = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_volt_map_min(%struct.nvkm_volt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_volt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca %struct.nvbios_vmap_entry, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %16, align 8
  store %struct.nvkm_bios* %17, %struct.nvkm_bios** %6, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @nvbios_vmap_entry_parse(%struct.nvkm_bios* %18, i32 %19, i32* %8, i32* %9, %struct.nvbios_vmap_entry* %7)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 255
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %29 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nvkm_volt_map_min(%struct.nvkm_volt* %28, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %23
  %42 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %55

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 10000
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %41, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @nvbios_vmap_entry_parse(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_vmap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
