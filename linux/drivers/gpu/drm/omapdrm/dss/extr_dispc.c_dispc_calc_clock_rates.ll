; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_calc_clock_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_calc_clock_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.dispc_clock_info = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_calc_clock_rates(%struct.dispc_device* %0, i64 %1, %struct.dispc_clock_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dispc_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dispc_clock_info*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dispc_clock_info* %2, %struct.dispc_clock_info** %7, align 8
  %8 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %9 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %14 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %12
  %21 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %22 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %27 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 255
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %53

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %36 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %34, %38
  %40 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %41 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %43 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %46 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %44, %48
  %50 = trunc i64 %49 to i32
  %51 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %7, align 8
  %52 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %33, %30, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
