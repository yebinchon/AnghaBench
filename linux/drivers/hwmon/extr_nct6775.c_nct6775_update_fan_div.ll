; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32*, i32 }

@NCT6775_REG_FANDIV1 = common dso_local global i32 0, align 4
@NCT6775_REG_FANDIV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*)* @nct6775_update_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_update_fan_div(%struct.nct6775_data* %0) #0 {
  %2 = alloca %struct.nct6775_data*, align 8
  %3 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %2, align 8
  %4 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %5 = load i32, i32* @NCT6775_REG_FANDIV1, align 4
  %6 = call i32 @nct6775_read_value(%struct.nct6775_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 7
  %9 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %10 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 112
  %15 = ashr i32 %14, 4
  %16 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %17 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %21 = load i32, i32* @NCT6775_REG_FANDIV2, align 4
  %22 = call i32 @nct6775_read_value(%struct.nct6775_data* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 7
  %25 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %26 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %24, i32* %28, align 4
  %29 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %30 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIT(i32 3)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 112
  %38 = ashr i32 %37, 4
  %39 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %40 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
