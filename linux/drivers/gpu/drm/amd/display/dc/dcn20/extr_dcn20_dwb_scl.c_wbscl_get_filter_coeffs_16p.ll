; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_wbscl_get_filter_coeffs_16p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_wbscl_get_filter_coeffs_16p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @wbscl_get_filter_coeffs_16p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wbscl_get_filter_coeffs_16p(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store i32 %0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @wbscl_get_filter_12tap_16p(i32 %11)
  store i32* %12, i32** %3, align 8
  br label %87

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 11
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @wbscl_get_filter_11tap_16p(i32 %18)
  store i32* %19, i32** %3, align 8
  br label %87

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @wbscl_get_filter_10tap_16p(i32 %25)
  store i32* %26, i32** %3, align 8
  br label %87

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @wbscl_get_filter_9tap_16p(i32 %32)
  store i32* %33, i32** %3, align 8
  br label %87

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @wbscl_get_filter_8tap_16p(i32 %39)
  store i32* %40, i32** %3, align 8
  br label %87

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @wbscl_get_filter_7tap_16p(i32 %46)
  store i32* %47, i32** %3, align 8
  br label %87

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @wbscl_get_filter_6tap_16p(i32 %53)
  store i32* %54, i32** %3, align 8
  br label %87

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @wbscl_get_filter_5tap_16p(i32 %60)
  store i32* %61, i32** %3, align 8
  br label %87

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @wbscl_get_filter_4tap_16p(i32 %67)
  store i32* %68, i32** %3, align 8
  br label %87

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @wbscl_get_filter_3tap_16p(i32 %74)
  store i32* %75, i32** %3, align 8
  br label %87

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32* (...) @get_filter_2tap_16p()
  store i32* %80, i32** %3, align 8
  br label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32* null, i32** %3, align 8
  br label %87

85:                                               ; preds = %81
  %86 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32* null, i32** %3, align 8
  br label %87

87:                                               ; preds = %85, %84, %79, %72, %65, %58, %51, %44, %37, %30, %23, %16, %9
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local i32* @wbscl_get_filter_12tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_11tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_10tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_9tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_8tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_7tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_6tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_5tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_4tap_16p(i32) #1

declare dso_local i32* @wbscl_get_filter_3tap_16p(i32) #1

declare dso_local i32* @get_filter_2tap_16p(...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
