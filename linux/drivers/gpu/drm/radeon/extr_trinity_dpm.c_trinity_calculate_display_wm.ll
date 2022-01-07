; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_calculate_display_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_calculate_display_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_ps = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.trinity_ps*, i64)* @trinity_calculate_display_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_calculate_display_wm(%struct.radeon_device* %0, %struct.trinity_ps* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.trinity_ps*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.trinity_ps* %1, %struct.trinity_ps** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %9 = icmp eq %struct.trinity_ps* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %12 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %41

16:                                               ; preds = %10
  %17 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %18 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %41

26:                                               ; preds = %16
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %41

30:                                               ; preds = %26
  %31 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %32 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 30000
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %41

40:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %39, %29, %25, %24, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
