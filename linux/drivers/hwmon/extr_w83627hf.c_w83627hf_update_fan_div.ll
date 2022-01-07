; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_update_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_update_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627hf_data = type { i32*, i64 }

@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@w83697hf = common dso_local global i64 0, align 8
@W83781D_REG_PIN = common dso_local global i32 0, align 4
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627hf_data*)* @w83627hf_update_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627hf_update_fan_div(%struct.w83627hf_data* %0) #0 {
  %2 = alloca %struct.w83627hf_data*, align 8
  %3 = alloca i32, align 4
  store %struct.w83627hf_data* %0, %struct.w83627hf_data** %2, align 8
  %4 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %5 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  %6 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 4
  %9 = and i32 %8, 3
  %10 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %11 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 6
  %16 = and i32 %15, 3
  %17 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %18 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %22 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @w83697hf, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %28 = load i32, i32* @W83781D_REG_PIN, align 4
  %29 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %27, i32 %28)
  %30 = ashr i32 %29, 6
  %31 = and i32 %30, 3
  %32 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %33 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %38 = load i32, i32* @W83781D_REG_VBAT, align 4
  %39 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 4
  %43 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %44 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 4
  %52 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %53 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %59 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @w83697hf, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %36
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 5
  %66 = and i32 %65, 4
  %67 = load %struct.w83627hf_data*, %struct.w83627hf_data** %2, align 8
  %68 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %63, %36
  ret void
}

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
