; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_vblank_too_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_vblank_too_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64 }
%struct.smu7_hwmgr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64)* @smu7_vblank_too_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_vblank_too_short(%struct.pp_hwmgr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %38 [
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 128, label %37
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %22 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 450, i32 150
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  br label %36

28:                                               ; preds = %15
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %30 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 190, i32 150
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %28, %20
  br label %46

37:                                               ; preds = %2
  store i64 30, i64* %7, align 8
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %40 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 450, i32 150
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %38, %37, %36
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
