; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_is_ch_eq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_is_ch_eq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lane_status = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%union.lane_align_status_updated = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.lane_status*, %union.lane_align_status_updated*)* @is_ch_eq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ch_eq_done(i32 %0, %union.lane_status* %1, %union.lane_align_status_updated* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.lane_status*, align 8
  %6 = alloca %union.lane_align_status_updated*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %union.lane_status* %1, %union.lane_status** %5, align 8
  store %union.lane_align_status_updated* %2, %union.lane_align_status_updated** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %union.lane_align_status_updated*, %union.lane_align_status_updated** %6, align 8
  %10 = bitcast %union.lane_align_status_updated* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %43

15:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %union.lane_status*, %union.lane_status** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %union.lane_status, %union.lane_status* %22, i64 %23
  %25 = bitcast %union.lane_status* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %union.lane_status*, %union.lane_status** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %union.lane_status, %union.lane_status* %30, i64 %31
  %33 = bitcast %union.lane_status* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29, %21
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %16

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
