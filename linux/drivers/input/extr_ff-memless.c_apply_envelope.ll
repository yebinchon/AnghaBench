; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_apply_envelope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_apply_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ml_effect_state = type { i64, i64, %struct.ff_effect* }
%struct.ff_effect = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ff_envelope = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"value = 0x%x, attack_level = 0x%x\0A\00", align 1
@u16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"difference = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"time_from_level = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"time_of_envelope = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ml_effect_state*, i32, %struct.ff_envelope*)* @apply_envelope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_envelope(%struct.ml_effect_state* %0, i32 %1, %struct.ff_envelope* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ml_effect_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ff_envelope*, align 8
  %8 = alloca %struct.ff_effect*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ml_effect_state* %0, %struct.ml_effect_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ff_envelope* %2, %struct.ff_envelope** %7, align 8
  %14 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %15 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %14, i32 0, i32 2
  %16 = load %struct.ff_effect*, %struct.ff_effect** %15, align 8
  store %struct.ff_effect* %16, %struct.ff_effect** %8, align 8
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %19 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %25 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %28 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %26, %30
  %32 = call i64 @time_before(i64 %23, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %37 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %42 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  %45 = call i32 @jiffies_to_msecs(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %47 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @u16, align 4
  %50 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %51 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @min_t(i32 %49, i32 %52, i32 32767)
  store i32 %53, i32* %12, align 4
  br label %102

54:                                               ; preds = %22, %3
  %55 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %56 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %54
  %60 = load %struct.ff_effect*, %struct.ff_effect** %8, align 8
  %61 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %59
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %68 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %71 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @msecs_to_jiffies(i32 %72)
  %74 = sub nsw i64 %69, %73
  %75 = call i64 @time_after(i64 %66, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %65
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %80 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @time_before(i64 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %86 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  %90 = call i32 @jiffies_to_msecs(i64 %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %92 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @u16, align 4
  %95 = load %struct.ff_envelope*, %struct.ff_envelope** %7, align 8
  %96 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @min_t(i32 %94, i32 %97, i32 32767)
  store i32 %98, i32* %12, align 4
  br label %101

99:                                               ; preds = %77, %65, %59, %54
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %4, align 4
  br label %133

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101, %34
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @abs(i32 %103) #3
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = sdiv i32 %115, %116
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %102
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %123, %124
  %126 = sub nsw i32 0, %125
  br label %131

127:                                              ; preds = %102
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %128, %129
  br label %131

131:                                              ; preds = %127, %122
  %132 = phi i32 [ %126, %122 ], [ %130, %127 ]
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %99
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

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
