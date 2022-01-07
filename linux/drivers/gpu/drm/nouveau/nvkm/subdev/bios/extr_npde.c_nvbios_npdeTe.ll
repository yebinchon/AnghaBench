; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_npde.c_nvbios_npdeTe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_npde.c_nvbios_npdeTe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_pcirT = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%08x: NPDE signature (%08x) unknown\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_npdeTe(%struct.nvkm_bios* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvbios_pcirT, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @nvbios_pcirTp(%struct.nvkm_bios* %9, i32 %10, i32* %6, i32* %7, %struct.nvbios_pcirT* %5)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = add nsw i32 %14, 15
  %16 = and i32 %15, -16
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 0
  %23 = call i32 @nvbios_rd32(%struct.nvkm_bios* %20, i32 %22)
  switch i32 %23, label %25 [
    i32 1162104910, label %24
  ]

24:                                               ; preds = %19
  br label %34

25:                                               ; preds = %19
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 0
  %32 = call i32 @nvbios_rd32(%struct.nvkm_bios* %29, i32 %31)
  %33 = call i32 @nvkm_debug(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %25, %24
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @nvbios_pcirTp(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_pcirT*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
