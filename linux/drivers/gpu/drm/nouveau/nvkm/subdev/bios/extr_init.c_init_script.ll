; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_script.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32, i32 }
%struct.nvbios_init = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i32)* @init_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_script(%struct.nvkm_bios* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvbios_init, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 0
  %10 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %10, i32 0, i32 1
  store i32* %11, i32** %9, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %13 = call i32 @bmp_version(%struct.nvkm_bios* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1296
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %53

26:                                               ; preds = %22
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 512
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 14, i32 18
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %36, %38
  %40 = call i32 @nvbios_rd16(%struct.nvkm_bios* %35, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %16, %2
  %42 = call i32 @init_script_table(%struct.nvbios_init* %6)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %47, %49
  %51 = call i32 @nvbios_rd16(%struct.nvkm_bios* %46, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %45, %26, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @bmp_version(%struct.nvkm_bios*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @init_script_table(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
