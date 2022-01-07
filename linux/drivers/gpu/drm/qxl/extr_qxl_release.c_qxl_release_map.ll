; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.qxl_release_info = type { i32 }
%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32, %struct.qxl_bo* }
%struct.qxl_bo = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.qxl_release_info* @qxl_release_map(%struct.qxl_device* %0, %struct.qxl_release* %1) #0 {
  %3 = alloca %union.qxl_release_info*, align 8
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_release*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.qxl_release_info*, align 8
  %8 = alloca %struct.qxl_bo*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_release* %1, %struct.qxl_release** %5, align 8
  %9 = load %struct.qxl_release*, %struct.qxl_release** %5, align 8
  %10 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %9, i32 0, i32 1
  %11 = load %struct.qxl_bo*, %struct.qxl_bo** %10, align 8
  store %struct.qxl_bo* %11, %struct.qxl_bo** %8, align 8
  %12 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %13 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %14 = load %struct.qxl_release*, %struct.qxl_release** %5, align 8
  %15 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device* %12, %struct.qxl_bo* %13, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %union.qxl_release_info* null, %union.qxl_release_info** %3, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.qxl_release*, %struct.qxl_release** %5, align 8
  %26 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %24, i64 %31
  %33 = bitcast i8* %32 to %union.qxl_release_info*
  store %union.qxl_release_info* %33, %union.qxl_release_info** %7, align 8
  %34 = load %union.qxl_release_info*, %union.qxl_release_info** %7, align 8
  store %union.qxl_release_info* %34, %union.qxl_release_info** %3, align 8
  br label %35

35:                                               ; preds = %23, %22
  %36 = load %union.qxl_release_info*, %union.qxl_release_info** %3, align 8
  ret %union.qxl_release_info* %36
}

declare dso_local i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
