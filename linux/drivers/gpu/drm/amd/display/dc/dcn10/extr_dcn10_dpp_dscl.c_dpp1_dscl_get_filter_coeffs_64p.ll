; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_get_filter_coeffs_64p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_get_filter_coeffs_64p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @dpp1_dscl_get_filter_coeffs_64p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp1_dscl_get_filter_coeffs_64p(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store i32 %0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @get_filter_8tap_64p(i32 %11)
  store i32* %12, i32** %3, align 8
  br label %59

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @get_filter_7tap_64p(i32 %18)
  store i32* %19, i32** %3, align 8
  br label %59

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @get_filter_6tap_64p(i32 %25)
  store i32* %26, i32** %3, align 8
  br label %59

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @get_filter_5tap_64p(i32 %32)
  store i32* %33, i32** %3, align 8
  br label %59

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @get_filter_4tap_64p(i32 %39)
  store i32* %40, i32** %3, align 8
  br label %59

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @get_filter_3tap_64p(i32 %46)
  store i32* %47, i32** %3, align 8
  br label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32* (...) @get_filter_2tap_64p()
  store i32* %52, i32** %3, align 8
  br label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32* null, i32** %3, align 8
  br label %59

57:                                               ; preds = %53
  %58 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32* null, i32** %3, align 8
  br label %59

59:                                               ; preds = %57, %56, %51, %44, %37, %30, %23, %16, %9
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32* @get_filter_8tap_64p(i32) #1

declare dso_local i32* @get_filter_7tap_64p(i32) #1

declare dso_local i32* @get_filter_6tap_64p(i32) #1

declare dso_local i32* @get_filter_5tap_64p(i32) #1

declare dso_local i32* @get_filter_4tap_64p(i32) #1

declare dso_local i32* @get_filter_3tap_64p(i32) #1

declare dso_local i32* @get_filter_2tap_64p(...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
