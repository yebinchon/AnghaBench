; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32, %struct.qxl_bo* }
%struct.qxl_bo = type { i32 }
%union.qxl_release_info = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_release_unmap(%struct.qxl_device* %0, %struct.qxl_release* %1, %union.qxl_release_info* %2) #0 {
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_release*, align 8
  %6 = alloca %union.qxl_release_info*, align 8
  %7 = alloca %struct.qxl_bo*, align 8
  %8 = alloca i8*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_release* %1, %struct.qxl_release** %5, align 8
  store %union.qxl_release_info* %2, %union.qxl_release_info** %6, align 8
  %9 = load %struct.qxl_release*, %struct.qxl_release** %5, align 8
  %10 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %9, i32 0, i32 1
  %11 = load %struct.qxl_bo*, %struct.qxl_bo** %10, align 8
  store %struct.qxl_bo* %11, %struct.qxl_bo** %7, align 8
  %12 = load %union.qxl_release_info*, %union.qxl_release_info** %6, align 8
  %13 = bitcast %union.qxl_release_info* %12 to i8*
  %14 = load %struct.qxl_release*, %struct.qxl_release** %5, align 8
  %15 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr i8, i8* %13, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %24 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @qxl_bo_kunmap_atomic_page(%struct.qxl_device* %23, %struct.qxl_bo* %24, i8* %25)
  ret void
}

declare dso_local i32 @qxl_bo_kunmap_atomic_page(%struct.qxl_device*, %struct.qxl_bo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
