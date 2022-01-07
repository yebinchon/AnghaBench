; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_extdev.c_nvbios_extdev_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_extdev.c_nvbios_extdev_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_extdev_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_extdev_find(%struct.nvkm_bios* %0, i32 %1, %struct.nvbios_extdev_func* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_extdev_func*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvbios_extdev_func* %2, %struct.nvbios_extdev_func** %7, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %14 = load i64, i64* %10, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %10, align 8
  %16 = trunc i64 %14 to i32
  %17 = call i32 @nvbios_extdev_entry(%struct.nvkm_bios* %13, i32 %16, i64* %8, i64* %9)
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.nvbios_extdev_func*, %struct.nvbios_extdev_func** %7, align 8
  %23 = call i32 @extdev_parse_entry(%struct.nvkm_bios* %20, i32 %21, %struct.nvbios_extdev_func* %22)
  %24 = load %struct.nvbios_extdev_func*, %struct.nvbios_extdev_func** %7, align 8
  %25 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %34

30:                                               ; preds = %19
  br label %12

31:                                               ; preds = %12
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nvbios_extdev_entry(%struct.nvkm_bios*, i32, i64*, i64*) #1

declare dso_local i32 @extdev_parse_entry(%struct.nvkm_bios*, i32, %struct.nvbios_extdev_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
