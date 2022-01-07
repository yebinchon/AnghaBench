; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_get_model_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_get_model_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2pp_info = type { i32, i32, i8, i32 }

@get_model_info.ps2pp_list = internal constant [34 x %struct.ps2pp_info] [%struct.ps2pp_info { i32 1, i32 0, i8 0, i32 0 }, %struct.ps2pp_info { i32 12, i32 0, i8 -126, i32 0 }, %struct.ps2pp_info { i32 13, i32 0, i8 0, i32 0 }, %struct.ps2pp_info { i32 15, i32 135, i8 -117, i32 0 }, %struct.ps2pp_info { i32 40, i32 0, i8 -126, i32 0 }, %struct.ps2pp_info { i32 41, i32 0, i8 -126, i32 0 }, %struct.ps2pp_info { i32 42, i32 0, i8 -126, i32 0 }, %struct.ps2pp_info { i32 43, i32 0, i8 -126, i32 0 }, %struct.ps2pp_info { i32 50, i32 0, i8 0, i32 0 }, %struct.ps2pp_info { i32 51, i32 0, i8 0, i32 0 }, %struct.ps2pp_info { i32 52, i32 132, i8 -126, i32 0 }, %struct.ps2pp_info { i32 53, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 56, i32 132, i8 -126, i32 0 }, %struct.ps2pp_info { i32 61, i32 135, i8 -117, i32 0 }, %struct.ps2pp_info { i32 66, i32 135, i8 -117, i32 0 }, %struct.ps2pp_info { i32 72, i32 133, i8 0, i32 0 }, %struct.ps2pp_info { i32 73, i32 133, i8 -126, i32 0 }, %struct.ps2pp_info { i32 75, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 76, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 79, i32 133, i8 -128, i32 0 }, %struct.ps2pp_info { i32 80, i32 132, i8 -126, i32 0 }, %struct.ps2pp_info { i32 81, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 83, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 85, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 86, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 87, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 88, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 96, i32 0, i8 0, i32 0 }, %struct.ps2pp_info { i32 97, i32 134, i8 -120, i32 0 }, %struct.ps2pp_info { i32 99, i32 132, i8 -128, i32 0 }, %struct.ps2pp_info { i32 100, i32 135, i8 -117, i32 0 }, %struct.ps2pp_info { i32 111, i32 135, i8 -126, i32 0 }, %struct.ps2pp_info { i32 112, i32 135, i8 -117, i32 0 }, %struct.ps2pp_info { i32 114, i32 135, i8 -117, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ps2pp_info* (i8)* @get_model_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ps2pp_info* @get_model_info(i8 zeroext %0) #0 {
  %2 = alloca %struct.ps2pp_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ARRAY_SIZE(%struct.ps2pp_info* getelementptr inbounds ([34 x %struct.ps2pp_info], [34 x %struct.ps2pp_info]* @get_model_info.ps2pp_list, i64 0, i64 0))
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [34 x %struct.ps2pp_info], [34 x %struct.ps2pp_info]* @get_model_info.ps2pp_list, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [34 x %struct.ps2pp_info], [34 x %struct.ps2pp_info]* @get_model_info.ps2pp_list, i64 0, i64 %21
  store %struct.ps2pp_info* %22, %struct.ps2pp_info** %2, align 8
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  store %struct.ps2pp_info* null, %struct.ps2pp_info** %2, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.ps2pp_info*, %struct.ps2pp_info** %2, align 8
  ret %struct.ps2pp_info* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.ps2pp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
