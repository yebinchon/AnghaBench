; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_therm.c_therm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_therm.c_therm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"unknown offset for thermal in BIT P %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_bios*, i64*, i64*, i64*, i64*)* @therm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @therm_table(%struct.nvkm_bios* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = call i32 @bit_entry(%struct.nvkm_bios* %14, i8 signext 80, %struct.bit_entry* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %23 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 12
  %26 = call i64 @nvbios_rd32(%struct.nvkm_bios* %22, i64 %25)
  store i64 %26, i64* %13, align 8
  br label %44

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %33 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 16
  %36 = call i64 @nvbios_rd32(%struct.nvkm_bios* %32, i64 %35)
  store i64 %36, i64* %13, align 8
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %39 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nvkm_error(i32* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %21
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i64 0, i64* %6, align 8
  br label %76

49:                                               ; preds = %45
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add nsw i64 %51, 0
  %53 = call i64 @nvbios_rd08(%struct.nvkm_bios* %50, i64 %52)
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i64 @nvbios_rd08(%struct.nvkm_bios* %55, i64 %57)
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %61, 2
  %63 = call i64 @nvbios_rd08(%struct.nvkm_bios* %60, i64 %62)
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  %65 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add nsw i64 %66, 3
  %68 = call i64 @nvbios_rd08(%struct.nvkm_bios* %65, i64 %67)
  %69 = load i64*, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i64 @nvbios_rd08(%struct.nvkm_bios* %71, i64 %73)
  %75 = add nsw i64 %70, %74
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %49, %48
  %77 = load i64, i64* %6, align 8
  ret i64 %77
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_error(i32*, i8*, i32) #1

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
