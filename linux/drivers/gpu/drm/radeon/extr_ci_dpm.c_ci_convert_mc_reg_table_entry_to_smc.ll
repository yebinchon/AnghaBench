; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_convert_mc_reg_table_entry_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_convert_mc_reg_table_entry_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i64, i32*)* @ci_convert_mc_reg_table_entry_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ci_power_info*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %21 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ule i64 %19, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %8, align 8
  br label %11

34:                                               ; preds = %29, %11
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %37 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %41, %34
  %48 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %49 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %56 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %60 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ci_convert_mc_registers(%struct.TYPE_4__* %53, i32* %54, i32 %58, i32 %62)
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_convert_mc_registers(%struct.TYPE_4__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
