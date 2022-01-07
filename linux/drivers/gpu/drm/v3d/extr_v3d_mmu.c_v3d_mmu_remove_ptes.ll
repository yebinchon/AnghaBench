; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_mmu.c_v3d_mmu_remove_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_mmu.c_v3d_mmu_remove_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_bo = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.v3d_dev = type { i32, i64* }

@V3D_MMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MMU flush timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v3d_mmu_remove_ptes(%struct.v3d_bo* %0) #0 {
  %2 = alloca %struct.v3d_bo*, align 8
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.v3d_bo* %0, %struct.v3d_bo** %2, align 8
  %6 = load %struct.v3d_bo*, %struct.v3d_bo** %2, align 8
  %7 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.v3d_dev* @to_v3d_dev(i32 %10)
  store %struct.v3d_dev* %11, %struct.v3d_dev** %3, align 8
  %12 = load %struct.v3d_bo*, %struct.v3d_bo** %2, align 8
  %13 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V3D_MMU_PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %4, align 8
  %19 = load %struct.v3d_bo*, %struct.v3d_bo** %2, align 8
  %20 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %38, %1
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.v3d_bo*, %struct.v3d_bo** %2, align 8
  %26 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %28, %29
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %34 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %43 = call i64 @v3d_mmu_flush_all(%struct.v3d_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %47 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %41
  ret void
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(i32) #1

declare dso_local i64 @v3d_mmu_flush_all(%struct.v3d_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
