; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_nct6775_update_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_nct6775_update_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i32*, i32*, i32*, i32*, i8** }

@W83627EHF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@NCT6775_REG_FAN_MODE = common dso_local global i32* null, align 8
@W83627EHF_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*)* @nct6775_update_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_update_pwm(%struct.w83627ehf_data* %0) #0 {
  %2 = alloca %struct.w83627ehf_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %79, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %9 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %82

12:                                               ; preds = %6
  %13 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %14 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @w83627ehf_read_value(%struct.w83627ehf_data* %13, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %22 = load i32*, i32** @NCT6775_REG_FAN_MODE, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @w83627ehf_read_value(%struct.w83627ehf_data* %21, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** @W83627EHF_PWM_MODE_SHIFT, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %29, %34
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  %40 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %41 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 7
  %49 = add nsw i32 %48, 1
  %50 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %51 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 15
  %58 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %59 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %65 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %66 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @w83627ehf_read_value(%struct.w83627ehf_data* %64, i32 %71)
  %73 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %74 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %73, i32 0, i32 5
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %72, i8** %78, align 8
  br label %79

79:                                               ; preds = %12
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %6

82:                                               ; preds = %6
  ret void
}

declare dso_local i8* @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
