; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_nct6775_update_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_nct6775_update_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32*, i32 }

@NCT6775_REG_FANDIV1 = common dso_local global i32 0, align 4
@NCT6775_REG_FANDIV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*)* @nct6775_update_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_update_fan_div(%struct.w83627ehf_data* %0) #0 {
  %2 = alloca %struct.w83627ehf_data*, align 8
  %3 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %2, align 8
  %4 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %5 = load i32, i32* @NCT6775_REG_FANDIV1, align 4
  %6 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 7
  %9 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %10 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 112
  %15 = ashr i32 %14, 4
  %16 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %17 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %21 = load i32, i32* @NCT6775_REG_FANDIV2, align 4
  %22 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 7
  %25 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %26 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %24, i32* %28, align 4
  %29 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %30 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 112
  %37 = ashr i32 %36, 4
  %38 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %39 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
