; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_simpleondemand.c_devfreq_simple_ondemand_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_simpleondemand.c_devfreq_simple_ondemand_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { %struct.devfreq_dev_status, %struct.devfreq_simple_ondemand_data* }
%struct.devfreq_dev_status = type { i32, i32, i64 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }

@DFSO_UPTHRESHOLD = common dso_local global i32 0, align 4
@DFSO_DOWNDIFFERENCTIAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEVFREQ_MAX_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*, i64*)* @devfreq_simple_ondemand_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_simple_ondemand_func(%struct.devfreq* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devfreq_dev_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.devfreq_simple_ondemand_data*, align 8
  store %struct.devfreq* %0, %struct.devfreq** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i32, i32* @DFSO_UPTHRESHOLD, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @DFSO_DOWNDIFFERENCTIAL, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %16 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %15, i32 0, i32 1
  %17 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %16, align 8
  store %struct.devfreq_simple_ondemand_data* %17, %struct.devfreq_simple_ondemand_data** %12, align 8
  %18 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %19 = call i32 @devfreq_update_stats(%struct.devfreq* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %150

24:                                               ; preds = %2
  %25 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %26 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %25, i32 0, i32 0
  store %struct.devfreq_dev_status* %26, %struct.devfreq_dev_status** %7, align 8
  %27 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %12, align 8
  %28 = icmp ne %struct.devfreq_simple_ondemand_data* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %12, align 8
  %31 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, %struct.devfreq_simple_ondemand_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %12, align 8
  %36 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, %struct.devfreq_simple_ondemand_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %12, align 8
  %40 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, %struct.devfreq_simple_ondemand_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %12, align 8
  %45 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, %struct.devfreq_simple_ondemand_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %10, align 4
  %50 = icmp ugt i32 %49, 100
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %150

58:                                               ; preds = %51
  %59 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %60 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64, i64* @DEVFREQ_MAX_FREQ, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %150

66:                                               ; preds = %58
  %67 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %68 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 16777216
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %73 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 16777216
  br i1 %75, label %76, label %85

76:                                               ; preds = %71, %66
  %77 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %78 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 7
  store i32 %80, i32* %78, align 4
  %81 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %82 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 7
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %87 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 100
  %90 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %91 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = mul i32 %92, %93
  %95 = icmp ugt i32 %89, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i64, i64* @DEVFREQ_MAX_FREQ, align 8
  %98 = load i64*, i64** %5, align 8
  store i64 %97, i64* %98, align 8
  store i32 0, i32* %3, align 4
  br label %150

99:                                               ; preds = %85
  %100 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %101 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i64, i64* @DEVFREQ_MAX_FREQ, align 8
  %106 = load i64*, i64** %5, align 8
  store i64 %105, i64* %106, align 8
  store i32 0, i32* %3, align 4
  br label %150

107:                                              ; preds = %99
  %108 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %109 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 100
  %112 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %113 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub i32 %115, %116
  %118 = mul i32 %114, %117
  %119 = icmp ugt i32 %111, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %107
  %121 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %122 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %5, align 8
  store i64 %123, i64* %124, align 8
  store i32 0, i32* %3, align 4
  br label %150

125:                                              ; preds = %107
  %126 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %127 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %8, align 8
  %130 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %131 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = mul i64 %133, %132
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %7, align 8
  %137 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @div_u64(i64 %135, i32 %138)
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = mul i64 %140, 100
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = udiv i32 %144, 2
  %146 = sub i32 %143, %145
  %147 = call i64 @div_u64(i64 %142, i32 %146)
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64*, i64** %5, align 8
  store i64 %148, i64* %149, align 8
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %125, %120, %104, %96, %63, %55, %22
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @devfreq_update_stats(%struct.devfreq*) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
