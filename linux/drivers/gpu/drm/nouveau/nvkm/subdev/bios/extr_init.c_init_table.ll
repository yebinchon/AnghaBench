; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i32*)* @init_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_table(%struct.nvkm_bios* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bit_entry, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %8 = call i32 @bit_entry(%struct.nvkm_bios* %7, i8 signext 73, %struct.bit_entry* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %18 = call i32 @bmp_version(%struct.nvkm_bios* %17)
  %19 = icmp sge i32 %18, 1296
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  store i32 14, i32* %21, align 4
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 75
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %20, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @bmp_version(%struct.nvkm_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
