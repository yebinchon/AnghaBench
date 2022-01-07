; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_ramcfg.c_nvbios_ramcfg_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_ramcfg.c_nvbios_ramcfg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_ramcfg_count(%struct.nvkm_bios* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.bit_entry, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  %5 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %6 = call i32 @bit_entry(%struct.nvkm_bios* %5, i8 signext 77, %struct.bit_entry* %4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 5
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @nvbios_rd08(%struct.nvkm_bios* %17, i64 %20)
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %12, %8
  %23 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %32 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 0
  %35 = call i32 @nvbios_rd08(%struct.nvkm_bios* %31, i64 %34)
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %26, %22
  br label %37

37:                                               ; preds = %36, %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
