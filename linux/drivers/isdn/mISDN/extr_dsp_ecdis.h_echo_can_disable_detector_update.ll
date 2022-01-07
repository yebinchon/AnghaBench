; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_ecdis.h_echo_can_disable_detector_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_ecdis.h_echo_can_disable_detector_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_disable_detector_state = type { i32, i32, i32, i32, i32, i8*, i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ec_disable_detector_state*, i32)* @echo_can_disable_detector_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echo_can_disable_detector_update(%struct.ec_disable_detector_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ec_disable_detector_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ec_disable_detector_state* %0, %struct.ec_disable_detector_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %7 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %6, i32 0, i32 6
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @biquad2(i32* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @abs(i32 %10) #3
  %12 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %13 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  %16 = ashr i32 %15, 5
  %17 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %18 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @abs(i32 %21) #3
  %23 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %24 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = ashr i32 %26, 4
  %28 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %29 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %33 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 280
  br i1 %35, label %36, label %91

36:                                               ; preds = %2
  %37 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %38 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 6
  %41 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %42 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %36
  %46 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %47 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %78, label %50

50:                                               ; preds = %45
  %51 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %52 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 3400
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %57 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %58, 3800
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %62 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %66 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i8*, i8** @TRUE, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %73 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %60
  br label %75

75:                                               ; preds = %74, %55, %50
  %76 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %77 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %45
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %81 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  br label %86

82:                                               ; preds = %36
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %85 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %88 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %99

91:                                               ; preds = %2
  %92 = load i8*, i8** @FALSE, align 8
  %93 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %94 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %96 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %98 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %97, i32 0, i32 3
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %86
  %100 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %3, align 8
  %101 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  ret i32 %102
}

declare dso_local i32 @biquad2(i32*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
