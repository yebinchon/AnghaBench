; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_init_temp_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_init_temp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_data = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_STATUS = common dso_local global i32 0, align 4
@MSR_IA32_THERM_STATUS = common dso_local global i32 0, align 4
@MAX_CORE_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.temp_data* (i32, i32)* @init_temp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.temp_data* @init_temp_data(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.temp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.temp_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.temp_data* @kzalloc(i32 24, i32 %7)
  store %struct.temp_data* %8, %struct.temp_data** %6, align 8
  %9 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %10 = icmp ne %struct.temp_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.temp_data* null, %struct.temp_data** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @MSR_IA32_PACKAGE_THERM_STATUS, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @MSR_IA32_THERM_STATUS, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %22 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %25 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %28 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TO_CORE_ID(i32 %29)
  %31 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %32 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MAX_CORE_ATTRS, align 4
  %34 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %35 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %37 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  store %struct.temp_data* %39, %struct.temp_data** %3, align 8
  br label %40

40:                                               ; preds = %19, %11
  %41 = load %struct.temp_data*, %struct.temp_data** %3, align 8
  ret %struct.temp_data* %41
}

declare dso_local %struct.temp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @TO_CORE_ID(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
