; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_setup_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_setup_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i64, i64, i32*, i64*, i32*, i64* }

@NCT6683_NUM_REG_MON = common dso_local global i32 0, align 4
@NUM_MON_LABELS = common dso_local global i64 0, align 8
@nct6683_mon_label = common dso_local global i32** null, align 8
@MON_VOLTAGE_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6683_data*)* @nct6683_setup_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6683_setup_sensors(%struct.nct6683_data* %0) #0 {
  %2 = alloca %struct.nct6683_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.nct6683_data* %0, %struct.nct6683_data** %2, align 8
  %5 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %6 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %8 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %78, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NCT6683_NUM_REG_MON, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %81

13:                                               ; preds = %9
  %14 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @NCT6683_REG_MON_CFG(i32 %15)
  %17 = call i32 @nct6683_read(%struct.nct6683_data* %14, i32 %16)
  %18 = and i32 %17, 127
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @NUM_MON_LABELS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %78

24:                                               ; preds = %13
  %25 = load i32**, i32*** @nct6683_mon_label, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %78

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @MON_VOLTAGE_START, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %38 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %41 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %36, i32* %43, align 4
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %46 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %49 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 %44, i64* %51, align 8
  %52 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %53 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %77

56:                                               ; preds = %31
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %59 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %62 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %67 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %66, i32 0, i32 5
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %70 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %65, i64* %72, align 8
  %73 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %74 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %56, %35
  br label %78

78:                                               ; preds = %77, %30, %23
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %9

81:                                               ; preds = %9
  ret void
}

declare dso_local i32 @nct6683_read(%struct.nct6683_data*, i32) #1

declare dso_local i32 @NCT6683_REG_MON_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
