; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_store_cc6_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_store_cc6_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, i32, i32, i32)* @smu8_store_cc6_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_store_cc6_data(%struct.pp_hwmgr* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.smu8_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %13, align 8
  store %struct.smu8_hwmgr* %14, %struct.smu8_hwmgr** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %17 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %24 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %31 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %38 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %35, %28, %21, %5
  %43 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %44 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 1, i32* %45, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %48 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %52 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %56 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  %60 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  br label %62

62:                                               ; preds = %42, %35
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
