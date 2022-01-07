; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_disp.c_nvbios_ocfg_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_disp.c_nvbios_ocfg_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_ocfg = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_ocfg_match(%struct.nvkm_bios* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, i64* %6, i64* %7, %struct.nvbios_ocfg* %8) #0 {
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.nvbios_ocfg*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store %struct.nvbios_ocfg* %8, %struct.nvbios_ocfg** %18, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %52, %9
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %20, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %20, align 8
  %26 = trunc i64 %24 to i32
  %27 = load i64*, i64** %14, align 8
  %28 = load i64*, i64** %15, align 8
  %29 = load i64*, i64** %16, align 8
  %30 = load i64*, i64** %17, align 8
  %31 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %18, align 8
  %32 = call i64 @nvbios_ocfg_parse(%struct.nvkm_bios* %22, i64 %23, i32 %26, i64* %27, i64* %28, i64* %29, i64* %30, %struct.nvbios_ocfg* %31)
  store i64 %32, i64* %19, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %21
  %35 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %18, align 8
  %36 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %18, align 8
  %42 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 255
  br i1 %44, label %45, label %52

45:                                               ; preds = %40, %34
  %46 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %18, align 8
  %47 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %45, %40
  br label %21

53:                                               ; preds = %51, %21
  %54 = load i64, i64* %19, align 8
  ret i64 %54
}

declare dso_local i64 @nvbios_ocfg_parse(%struct.nvkm_bios*, i64, i32, i64*, i64*, i64*, i64*, %struct.nvbios_ocfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
