; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_rps_power_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_rps_power_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rps_power_to_str.strings = internal constant [131 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"low power\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"high power\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @rps_power_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rps_power_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([131 x i8*], [131 x i8*]* @rps_power_to_str.strings, i64 0, i64 0))
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [131 x i8*], [131 x i8*]* @rps_power_to_str.strings, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %19

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [131 x i8*], [131 x i8*]* @rps_power_to_str.strings, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
