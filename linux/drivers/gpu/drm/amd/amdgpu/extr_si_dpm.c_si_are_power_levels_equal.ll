; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_are_power_levels_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_are_power_levels_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv7xx_pl = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rv7xx_pl*, %struct.rv7xx_pl*)* @si_are_power_levels_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_are_power_levels_equal(%struct.rv7xx_pl* %0, %struct.rv7xx_pl* %1) #0 {
  %3 = alloca %struct.rv7xx_pl*, align 8
  %4 = alloca %struct.rv7xx_pl*, align 8
  store %struct.rv7xx_pl* %0, %struct.rv7xx_pl** %3, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %4, align 8
  %5 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %3, align 8
  %6 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %4, align 8
  %9 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %3, align 8
  %14 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %4, align 8
  %17 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %12
  %21 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %3, align 8
  %22 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %4, align 8
  %25 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %3, align 8
  %30 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %4, align 8
  %33 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %3, align 8
  %38 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %4, align 8
  %41 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br label %44

44:                                               ; preds = %36, %28, %20, %12, %2
  %45 = phi i1 [ false, %28 ], [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
