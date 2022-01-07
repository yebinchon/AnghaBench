; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_phase_shedding_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_phase_shedding_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_phase_shedding_limits_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_phase_shedding_limits_table*, i64, i64, i64, %struct.TYPE_5__*)* @si_populate_phase_shedding_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_phase_shedding_value(%struct.amdgpu_device* %0, %struct.amdgpu_phase_shedding_limits_table* %1, i64 %2, i64 %3, i64 %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_phase_shedding_limits_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_phase_shedding_limits_table* %1, %struct.amdgpu_phase_shedding_limits_table** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %55, %6
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.amdgpu_phase_shedding_limits_table*, %struct.amdgpu_phase_shedding_limits_table** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_phase_shedding_limits_table, %struct.amdgpu_phase_shedding_limits_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %14
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.amdgpu_phase_shedding_limits_table*, %struct.amdgpu_phase_shedding_limits_table** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_phase_shedding_limits_table, %struct.amdgpu_phase_shedding_limits_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %21, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.amdgpu_phase_shedding_limits_table*, %struct.amdgpu_phase_shedding_limits_table** %8, align 8
  %34 = getelementptr inbounds %struct.amdgpu_phase_shedding_limits_table, %struct.amdgpu_phase_shedding_limits_table* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %32, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.amdgpu_phase_shedding_limits_table*, %struct.amdgpu_phase_shedding_limits_table** %8, align 8
  %45 = getelementptr inbounds %struct.amdgpu_phase_shedding_limits_table, %struct.amdgpu_phase_shedding_limits_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %43, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %58

54:                                               ; preds = %42, %31, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %14

58:                                               ; preds = %53, %14
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
