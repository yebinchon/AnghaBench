; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_remove_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_remove_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_data = type { %struct.temp_data**, %struct.TYPE_2__* }
%struct.temp_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_data*, i32)* @coretemp_remove_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coretemp_remove_core(%struct.platform_data* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.temp_data*, align 8
  store %struct.platform_data* %0, %struct.platform_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_data*, %struct.platform_data** %3, align 8
  %7 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %6, i32 0, i32 0
  %8 = load %struct.temp_data**, %struct.temp_data*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %8, i64 %10
  %12 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  store %struct.temp_data* %12, %struct.temp_data** %5, align 8
  %13 = load %struct.platform_data*, %struct.platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.temp_data*, %struct.temp_data** %5, align 8
  %18 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %17, i32 0, i32 0
  %19 = call i32 @sysfs_remove_group(i32* %16, i32* %18)
  %20 = load %struct.platform_data*, %struct.platform_data** %3, align 8
  %21 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %20, i32 0, i32 0
  %22 = load %struct.temp_data**, %struct.temp_data*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %22, i64 %24
  %26 = load %struct.temp_data*, %struct.temp_data** %25, align 8
  %27 = call i32 @kfree(%struct.temp_data* %26)
  %28 = load %struct.platform_data*, %struct.platform_data** %3, align 8
  %29 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %28, i32 0, i32 0
  %30 = load %struct.temp_data**, %struct.temp_data*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %30, i64 %32
  store %struct.temp_data* null, %struct.temp_data** %33, align 8
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.temp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
