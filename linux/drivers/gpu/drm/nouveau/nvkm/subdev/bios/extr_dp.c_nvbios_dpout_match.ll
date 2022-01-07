; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpout_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpout_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_dpout = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_dpout_match(%struct.nvkm_bios* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5, i64* %6, %struct.nvbios_dpout* %7) #0 {
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.nvbios_dpout*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store %struct.nvbios_dpout* %7, %struct.nvbios_dpout** %16, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %56, %8
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %21 = load i64, i64* %18, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %18, align 8
  %23 = trunc i64 %21 to i32
  %24 = load i64*, i64** %12, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = load i64*, i64** %14, align 8
  %27 = load i64*, i64** %15, align 8
  %28 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %16, align 8
  %29 = call i64 @nvbios_dpout_parse(%struct.nvkm_bios* %20, i32 %23, i64* %24, i64* %25, i64* %26, i64* %27, %struct.nvbios_dpout* %28)
  store i64 %29, i64* %17, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %19
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %19
  %36 = phi i1 [ true, %19 ], [ %34, %31 ]
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = load i64, i64* %17, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %16, align 8
  %42 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %16, align 8
  %48 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %40, %37
  br label %19

57:                                               ; preds = %54, %35
  %58 = load i64, i64* %17, align 8
  ret i64 %58
}

declare dso_local i64 @nvbios_dpout_parse(%struct.nvkm_bios*, i32, i64*, i64*, i64*, i64*, %struct.nvbios_dpout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
