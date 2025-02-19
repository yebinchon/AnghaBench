; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvbios_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvbios_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"OOB %d %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i64*, i64)* @nvbios_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbios_addr(%struct.nvkm_bios* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %31
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %22, %17, %3
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %41 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %49 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %48, i32 0, i32 2
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @nvkm_error(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %51, i64 %53)
  store i32 0, i32* %4, align 4
  br label %56

55:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvkm_error(i32*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
