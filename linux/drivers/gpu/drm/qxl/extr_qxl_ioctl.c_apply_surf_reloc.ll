; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_apply_surf_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_apply_surf_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_reloc_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qxl_device*, %struct.qxl_reloc_info*)* @apply_surf_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_surf_reloc(%struct.qxl_device* %0, %struct.qxl_reloc_info* %1) #0 {
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca %struct.qxl_reloc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  store %struct.qxl_reloc_info* %1, %struct.qxl_reloc_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %8 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %13 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %20 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %11, %2
  %25 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %26 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %27 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %30 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device* %25, i32 %28, i32 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %38 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %36, i64 %43
  %45 = bitcast i8* %44 to i32*
  store i32 %35, i32* %45, align 4
  %46 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %47 = load %struct.qxl_reloc_info*, %struct.qxl_reloc_info** %4, align 8
  %48 = getelementptr inbounds %struct.qxl_reloc_info, %struct.qxl_reloc_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @qxl_bo_kunmap_atomic_page(%struct.qxl_device* %46, i32 %49, i8* %50)
  ret void
}

declare dso_local i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device*, i32, i32) #1

declare dso_local i32 @qxl_bo_kunmap_atomic_page(%struct.qxl_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
