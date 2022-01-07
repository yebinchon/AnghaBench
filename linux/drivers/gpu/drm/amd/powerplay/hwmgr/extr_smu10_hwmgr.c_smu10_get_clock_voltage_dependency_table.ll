; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_clock_voltage_dependency_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_get_clock_voltage_dependency_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.smu10_voltage_dependency_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.smu10_voltage_dependency_table**, i32, %struct.TYPE_5__*)* @smu10_get_clock_voltage_dependency_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_get_clock_voltage_dependency_table(%struct.pp_hwmgr* %0, %struct.smu10_voltage_dependency_table** %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.smu10_voltage_dependency_table**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.smu10_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.smu10_voltage_dependency_table** %1, %struct.smu10_voltage_dependency_table*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 16, %14
  %16 = add i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.smu10_voltage_dependency_table* @kzalloc(i32 %18, i32 %19)
  store %struct.smu10_voltage_dependency_table* %20, %struct.smu10_voltage_dependency_table** %12, align 8
  %21 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %12, align 8
  %22 = icmp eq %struct.smu10_voltage_dependency_table* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %12, align 8
  %29 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %60, %26
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %12, align 8
  %33 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 100
  %41 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %12, align 8
  %42 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %12, align 8
  %52 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %50, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 1
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %9, align 8
  br label %60

60:                                               ; preds = %36
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %12, align 8
  %65 = load %struct.smu10_voltage_dependency_table**, %struct.smu10_voltage_dependency_table*** %7, align 8
  store %struct.smu10_voltage_dependency_table* %64, %struct.smu10_voltage_dependency_table** %65, align 8
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %23
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.smu10_voltage_dependency_table* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
