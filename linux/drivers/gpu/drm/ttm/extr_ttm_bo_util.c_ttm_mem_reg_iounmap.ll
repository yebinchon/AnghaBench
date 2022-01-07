; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_reg_iounmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_reg_iounmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_device*, %struct.ttm_mem_reg*, i8*)* @ttm_mem_reg_iounmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_mem_reg_iounmap(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1, i8* %2) #0 {
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %8, i32 0, i32 0
  %10 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %10, i64 %13
  store %struct.ttm_mem_type_manager* %14, %struct.ttm_mem_type_manager** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @iounmap(i8* %24)
  br label %26

26:                                               ; preds = %23, %17, %3
  %27 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %28 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %27, i32 0)
  %29 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %30 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %31 = call i32 @ttm_mem_io_free(%struct.ttm_bo_device* %29, %struct.ttm_mem_reg* %30)
  %32 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %33 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %32)
  ret void
}

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_free(%struct.ttm_bo_device*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
