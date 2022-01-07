; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydration_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydration_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_region_hydration = type { i64, %struct.clone* }
%struct.clone = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_io_region = type { i32, i32, i32 }

@hydration_kcopyd_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_clone_region_hydration*, i32)* @hydration_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hydration_copy(%struct.dm_clone_region_hydration* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_clone_region_hydration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_io_region, align 4
  %11 = alloca %struct.dm_io_region, align 4
  %12 = alloca %struct.clone*, align 8
  store %struct.dm_clone_region_hydration* %0, %struct.dm_clone_region_hydration** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %3, align 8
  %14 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %13, i32 0, i32 1
  %15 = load %struct.clone*, %struct.clone** %14, align 8
  store %struct.clone* %15, %struct.clone** %12, align 8
  %16 = load %struct.clone*, %struct.clone** %12, align 8
  %17 = getelementptr inbounds %struct.clone, %struct.clone* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %3, align 8
  %20 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = sub i64 %25, 1
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub i32 %27, 1
  %29 = load %struct.clone*, %struct.clone** %12, align 8
  %30 = getelementptr inbounds %struct.clone, %struct.clone* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.clone*, %struct.clone** %12, align 8
  %35 = getelementptr inbounds %struct.clone, %struct.clone* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %2
  %41 = load %struct.clone*, %struct.clone** %12, align 8
  %42 = getelementptr inbounds %struct.clone, %struct.clone* %41, i32 0, i32 7
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %40
  br label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.clone*, %struct.clone** %12, align 8
  %61 = getelementptr inbounds %struct.clone, %struct.clone* %60, i32 0, i32 6
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.clone*, %struct.clone** %12, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @region_to_sector(%struct.clone* %66, i64 %67)
  %69 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.clone*, %struct.clone** %12, align 8
  %73 = getelementptr inbounds %struct.clone, %struct.clone* %72, i32 0, i32 5
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %11, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %11, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %11, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.clone*, %struct.clone** %12, align 8
  %86 = getelementptr inbounds %struct.clone, %struct.clone* %85, i32 0, i32 4
  %87 = call i32 @atomic_add(i32 %84, i32* %86)
  %88 = load %struct.clone*, %struct.clone** %12, align 8
  %89 = getelementptr inbounds %struct.clone, %struct.clone* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @hydration_kcopyd_callback, align 4
  %92 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %3, align 8
  %93 = call i32 @dm_kcopyd_copy(i32 %90, %struct.dm_io_region* %10, i32 1, %struct.dm_io_region* %11, i32 0, i32 %91, %struct.dm_clone_region_hydration* %92)
  ret void
}

declare dso_local i32 @region_to_sector(%struct.clone*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @dm_kcopyd_copy(i32, %struct.dm_io_region*, i32, %struct.dm_io_region*, i32, i32, %struct.dm_clone_region_hydration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
