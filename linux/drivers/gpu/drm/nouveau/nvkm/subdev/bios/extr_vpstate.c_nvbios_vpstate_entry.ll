; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vpstate.c_nvbios_vpstate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vpstate.c_nvbios_vpstate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_vpstate_header = type { i32, i32, i32, i32, i64, i64 }
%struct.nvbios_vpstate_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_vpstate_entry(%struct.nvkm_bios* %0, %struct.nvbios_vpstate_header* %1, i32 %2, %struct.nvbios_vpstate_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca %struct.nvbios_vpstate_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvbios_vpstate_entry*, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store %struct.nvbios_vpstate_header* %1, %struct.nvbios_vpstate_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvbios_vpstate_entry* %3, %struct.nvbios_vpstate_entry** %9, align 8
  %11 = load %struct.nvbios_vpstate_entry*, %struct.nvbios_vpstate_entry** %9, align 8
  %12 = icmp ne %struct.nvbios_vpstate_entry* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %15 = icmp ne %struct.nvbios_vpstate_header* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %19 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %13, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %16
  %26 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %27 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %30 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %35 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %38 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %7, align 8
  %41 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = add nsw i32 %36, %43
  %45 = mul nsw i32 %33, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %32, %46
  store i64 %47, i64* %10, align 8
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i64 %49)
  %51 = load %struct.nvbios_vpstate_entry*, %struct.nvbios_vpstate_entry** %9, align 8
  %52 = getelementptr inbounds %struct.nvbios_vpstate_entry, %struct.nvbios_vpstate_entry* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 5
  %56 = call i32 @nvbios_rd16(%struct.nvkm_bios* %53, i64 %55)
  %57 = load %struct.nvbios_vpstate_entry*, %struct.nvbios_vpstate_entry** %9, align 8
  %58 = getelementptr inbounds %struct.nvbios_vpstate_entry, %struct.nvbios_vpstate_entry* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %25, %22
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
