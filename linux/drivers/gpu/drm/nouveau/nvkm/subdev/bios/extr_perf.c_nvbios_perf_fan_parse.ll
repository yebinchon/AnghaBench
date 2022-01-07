; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perf_fan_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perf_fan_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_perf_fan = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_perf_fan_parse(%struct.nvkm_bios* %0, %struct.nvbios_perf_fan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.nvbios_perf_fan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store %struct.nvbios_perf_fan* %1, %struct.nvbios_perf_fan** %5, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %14 = call i64 @nvbios_perf_table(%struct.nvkm_bios* %13, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 32
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 6
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %31 = load i64, i64* %12, align 8
  %32 = add nsw i64 %31, 6
  %33 = call i32 @nvbios_rd16(%struct.nvkm_bios* %30, i64 %32)
  %34 = load %struct.nvbios_perf_fan*, %struct.nvbios_perf_fan** %5, align 8
  %35 = getelementptr inbounds %struct.nvbios_perf_fan, %struct.nvbios_perf_fan* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %26, %23, %20
  %37 = load %struct.nvbios_perf_fan*, %struct.nvbios_perf_fan** %5, align 8
  %38 = getelementptr inbounds %struct.nvbios_perf_fan, %struct.nvbios_perf_fan* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @nvbios_perf_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
