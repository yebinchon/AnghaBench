; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_get_filter_coeffs_16p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_get_filter_coeffs_16p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @get_filter_coeffs_16p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_filter_coeffs_16p(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store i32 %0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @get_filter_4tap_16p(i32 %11)
  store i32* %12, i32** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @get_filter_3tap_16p(i32 %18)
  store i32* %19, i32** %3, align 8
  br label %31

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32* (...) @get_filter_2tap_16p()
  store i32* %24, i32** %3, align 8
  br label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32* null, i32** %3, align 8
  br label %31

31:                                               ; preds = %29, %28, %23, %16, %9
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local i32* @get_filter_4tap_16p(i32) #1

declare dso_local i32* @get_filter_3tap_16p(i32) #1

declare dso_local i32* @get_filter_2tap_16p(...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
