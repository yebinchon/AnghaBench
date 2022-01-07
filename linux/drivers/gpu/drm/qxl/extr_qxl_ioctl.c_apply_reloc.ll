; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_apply_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_apply_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_reloc_info = type { i32, i32, i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qxl_device*, %struct.qxl_reloc_info*)* @apply_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_reloc(%struct.qxl_device* %0, %struct.qxl_reloc_info* %1) #0 {
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca %struct.qxl_reloc_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  store %struct.qxl_reloc_info* %1, %struct.qxl_reloc_info** %4, align 8
  %6 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %7 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %8 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %11 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PAGE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = call i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device* %6, i32 %9, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %17 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %18 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %21 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qxl_bo_physical_address(%struct.qxl_device* %16, i32 %19, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %26 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %24, i64 %31
  %33 = bitcast i8* %32 to i32*
  store i32 %23, i32* %33, align 4
  %34 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %35 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %36 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @qxl_bo_kunmap_atomic_page(%struct.qxl_device* %34, i32 %37, i8* %38)
  ret void
}

declare dso_local i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device*, i32, i32) #1

declare dso_local i32 @qxl_bo_physical_address(%struct.qxl_device*, i32, i32) #1

declare dso_local i32 @qxl_bo_kunmap_atomic_page(%struct.qxl_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
