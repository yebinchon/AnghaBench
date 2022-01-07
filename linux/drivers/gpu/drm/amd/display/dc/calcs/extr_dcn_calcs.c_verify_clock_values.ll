; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_verify_clock_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_verify_clock_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pp_clock_levels_with_voltage = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pp_clock_levels_with_voltage*)* @verify_clock_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_clock_values(%struct.dm_pp_clock_levels_with_voltage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pp_clock_levels_with_voltage*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_pp_clock_levels_with_voltage* %0, %struct.dm_pp_clock_levels_with_voltage** %3, align 8
  %5 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %3, align 8
  %6 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %3, align 8
  %14 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %3, align 8
  %19 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %33

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
