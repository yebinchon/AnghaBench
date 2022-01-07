; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadowacpi.c_acpi_read_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadowacpi.c_acpi_read_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.nvkm_bios*)* @acpi_read_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_read_slow(i8* %0, i32 %1, i32 %2, %struct.nvkm_bios* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_bios* %3, %struct.nvkm_bios** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 4095
  %17 = and i32 %16, -4096
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -4096
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @nvbios_extend(%struct.nvkm_bios* %20, i32 %21)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %33 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @nouveau_acpi_get_bios_chunk(i32 %34, i32 %37, i32 4096)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 4096
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 4096
  store i32 %44, i32* %11, align 4
  br label %25

45:                                               ; preds = %41, %25
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local i64 @nvbios_extend(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nouveau_acpi_get_bios_chunk(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
