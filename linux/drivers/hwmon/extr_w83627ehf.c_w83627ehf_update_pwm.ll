; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i32, i32*, i32*, i32*, i32*, i8** }

@W83627EHF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627EHF_REG_TOLERANCE = common dso_local global i32* null, align 8
@W83627EHF_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@W83627EHF_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*)* @w83627ehf_update_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_update_pwm(%struct.w83627ehf_data* %0) #0 {
  %2 = alloca %struct.w83627ehf_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %102, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %9 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %105

12:                                               ; preds = %6
  %13 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %14 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %102

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %26 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @w83627ehf_read_value(%struct.w83627ehf_data* %25, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %34 = load i32*, i32** @W83627EHF_REG_TOLERANCE, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @w83627ehf_read_value(%struct.w83627ehf_data* %33, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** @W83627EHF_PWM_MODE_SHIFT, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %42, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %54 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** @W83627EHF_PWM_ENABLE_SHIFT, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %59, %64
  %66 = and i32 %65, 3
  %67 = add nsw i32 %66, 1
  %68 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %69 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %75 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %76 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @w83627ehf_read_value(%struct.w83627ehf_data* %74, i32 %81)
  %83 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %84 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %83, i32 0, i32 6
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 4, i32 0
  %94 = ashr i32 %89, %93
  %95 = and i32 %94, 15
  %96 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %2, align 8
  %97 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %41, %20
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %6

105:                                              ; preds = %6
  ret void
}

declare dso_local i8* @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
