; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32, %struct.a6xx_hfi_queue* }
%struct.a6xx_hfi_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"HFI queue %d is not empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a6xx_hfi_stop(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.a6xx_hfi_queue*, align 8
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %51, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %8 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %7, i32 0, i32 1
  %9 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.a6xx_hfi_queue* %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %5
  %13 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %14 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %13, i32 0, i32 1
  %15 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %15, i64 %17
  store %struct.a6xx_hfi_queue* %18, %struct.a6xx_hfi_queue** %4, align 8
  %19 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %4, align 8
  %20 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %51

24:                                               ; preds = %12
  %25 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %4, align 8
  %26 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %4, align 8
  %31 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %38 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @DRM_DEV_ERROR(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %24
  %43 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %4, align 8
  %44 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %4, align 8
  %48 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %23
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %5

54:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.a6xx_hfi_queue*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
