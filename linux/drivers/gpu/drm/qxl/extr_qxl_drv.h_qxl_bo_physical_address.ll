; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.h_qxl_bo_physical_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.h_qxl_bo_physical_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.qxl_memslot, %struct.qxl_memslot }
%struct.qxl_memslot = type { i32, i64 }
%struct.qxl_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qxl_device*, %struct.qxl_bo*, i64)* @qxl_bo_physical_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qxl_bo_physical_address(%struct.qxl_device* %0, %struct.qxl_bo* %1, i64 %2) #0 {
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_bo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qxl_memslot*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %9 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TTM_PL_VRAM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %17 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %16, i32 0, i32 1
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.qxl_memslot* [ %17, %15 ], [ %20, %18 ]
  store %struct.qxl_memslot* %22, %struct.qxl_memslot** %7, align 8
  %23 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %24 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qxl_memslot*, %struct.qxl_memslot** %7, align 8
  %28 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = load %struct.qxl_memslot*, %struct.qxl_memslot** %7, align 8
  %32 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load %struct.qxl_memslot*, %struct.qxl_memslot** %7, align 8
  %38 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %41 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qxl_memslot*, %struct.qxl_memslot** %7, align 8
  %45 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %48, %49
  %51 = or i64 %39, %50
  ret i64 %51
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
