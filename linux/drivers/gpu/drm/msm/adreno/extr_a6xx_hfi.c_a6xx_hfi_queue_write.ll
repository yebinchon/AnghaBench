; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_queue_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_queue_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }
%struct.a6xx_hfi_queue = type { i32, i64*, %struct.a6xx_hfi_queue_header* }
%struct.a6xx_hfi_queue_header = type { i64, i64, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@REG_A6XX_GMU_HOST2GMU_INTR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*, %struct.a6xx_hfi_queue*, i64*, i64)* @a6xx_hfi_queue_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_queue_write(%struct.a6xx_gmu* %0, %struct.a6xx_hfi_queue* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.a6xx_gmu*, align 8
  %7 = alloca %struct.a6xx_hfi_queue*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.a6xx_hfi_queue_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %6, align 8
  store %struct.a6xx_hfi_queue* %1, %struct.a6xx_hfi_queue** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %7, align 8
  %15 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %14, i32 0, i32 2
  %16 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %15, align 8
  store %struct.a6xx_hfi_queue_header* %16, %struct.a6xx_hfi_queue_header** %10, align 8
  %17 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %18 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %7, align 8
  %21 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %24 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %27 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %30 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @CIRC_SPACE(i64 %25, i32 %28, i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %38 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %7, align 8
  %42 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %80

46:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %7, align 8
  %57 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %55, i64* %60, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %61, 1
  %63 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %64 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = srem i64 %62, %65
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %51
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %47

70:                                               ; preds = %47
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %10, align 8
  %73 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %7, align 8
  %75 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %78 = load i32, i32* @REG_A6XX_GMU_HOST2GMU_INTR_SET, align 4
  %79 = call i32 @gmu_write(%struct.a6xx_gmu* %77, i32 %78, i32 1)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %70, %36
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @CIRC_SPACE(i64, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
