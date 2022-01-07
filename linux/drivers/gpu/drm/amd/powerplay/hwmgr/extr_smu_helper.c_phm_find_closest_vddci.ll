; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_find_closest_vddci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_find_closest_vddci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_atomctrl_voltage_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"vddci is larger than max value in vddci_table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @phm_find_closest_vddci(%struct.pp_atomctrl_voltage_table* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pp_atomctrl_voltage_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pp_atomctrl_voltage_table* %0, %struct.pp_atomctrl_voltage_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.pp_atomctrl_voltage_table*, %struct.pp_atomctrl_voltage_table** %4, align 8
  %10 = getelementptr inbounds %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.pp_atomctrl_voltage_table*, %struct.pp_atomctrl_voltage_table** %4, align 8
  %15 = getelementptr inbounds %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.pp_atomctrl_voltage_table*, %struct.pp_atomctrl_voltage_table** %4, align 8
  %25 = getelementptr inbounds %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %45

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %7

35:                                               ; preds = %7
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.pp_atomctrl_voltage_table*, %struct.pp_atomctrl_voltage_table** %4, align 8
  %38 = getelementptr inbounds %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %35, %23
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
