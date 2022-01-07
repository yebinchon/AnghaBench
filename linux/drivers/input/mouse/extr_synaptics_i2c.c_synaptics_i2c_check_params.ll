; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_check_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_i2c = type { i64, i64, i64, i64, i32 }

@scan_rate = common dso_local global i64 0, align 8
@no_decel = common dso_local global i64 0, align 8
@no_filter = common dso_local global i64 0, align 8
@reduce_report = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synaptics_i2c*)* @synaptics_i2c_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synaptics_i2c_check_params(%struct.synaptics_i2c* %0) #0 {
  %2 = alloca %struct.synaptics_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.synaptics_i2c* %0, %struct.synaptics_i2c** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @scan_rate, align 8
  %5 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %4, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %11 = load i64, i64* @scan_rate, align 8
  %12 = call i32 @set_scan_rate(%struct.synaptics_i2c* %10, i64 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i64, i64* @no_decel, align 8
  %15 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i64, i64* @no_decel, align 8
  %21 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %22 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i64, i64* @no_filter, align 8
  %25 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %26 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* @no_filter, align 8
  %31 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %32 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i64, i64* @reduce_report, align 8
  %35 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @reduce_report, align 8
  %41 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %42 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %48 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @synaptics_i2c_reset_config(i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @set_scan_rate(%struct.synaptics_i2c*, i64) #1

declare dso_local i32 @synaptics_i2c_reset_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
