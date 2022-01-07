; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_bit.c_bit_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_bit.c_bit_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i64 }
%struct.bit_entry = type { i8*, i8*, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bit_entry(%struct.nvkm_bios* %0, i64 %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bit_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %10 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @likely(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %3
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 10
  %21 = call i64 @nvbios_rd08(%struct.nvkm_bios* %16, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 12
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %62, %15
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %8, align 8
  %29 = icmp ne i64 %27, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %32, 0
  %34 = call i64 @nvbios_rd08(%struct.nvkm_bios* %31, i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 0
  %41 = call i64 @nvbios_rd08(%struct.nvkm_bios* %38, i64 %40)
  %42 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %43 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i64 @nvbios_rd08(%struct.nvkm_bios* %44, i64 %46)
  %48 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %49 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 2
  %53 = call i8* @nvbios_rd16(%struct.nvkm_bios* %50, i64 %52)
  %54 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %55 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, 4
  %59 = call i8* @nvbios_rd16(%struct.nvkm_bios* %56, i64 %58)
  %60 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %61 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  store i32 0, i32* %4, align 4
  br label %77

62:                                               ; preds = %30
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %65 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 9
  %68 = call i64 @nvbios_rd08(%struct.nvkm_bios* %63, i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %26

71:                                               ; preds = %26
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %77

74:                                               ; preds = %3
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %71, %37
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i8* @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
