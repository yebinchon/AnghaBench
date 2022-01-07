; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_compute_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_compute_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @hdmi_compute_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_compute_n(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = mul i32 128, %7
  %9 = udiv i32 %8, 1000
  store i32 %9, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %13, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ugt i32 %11, 48000
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = mul i32 %14, 2
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = udiv i32 %16, 2
  store i32 %17, i32* %3, align 4
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %85 [
    i32 32000, label %20
    i32 44100, label %42
    i32 48000, label %61
  ]

20:                                               ; preds = %18
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 25175000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 4576, i32* %5, align 4
  br label %38

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 27027000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 4096, i32* %5, align 4
  br label %37

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 74176000
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %32, 148352000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  store i32 11648, i32* %5, align 4
  br label %36

35:                                               ; preds = %31
  store i32 4096, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %86

42:                                               ; preds = %18
  %43 = load i64, i64* %4, align 8
  %44 = icmp eq i64 %43, 25175000
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 7007, i32* %5, align 4
  br label %57

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = icmp eq i64 %47, 74176000
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 17836, i32* %5, align 4
  br label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = icmp eq i64 %51, 148352000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 8918, i32* %5, align 4
  br label %55

54:                                               ; preds = %50
  store i32 6272, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %49
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %86

61:                                               ; preds = %18
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %62, 25175000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 6864, i32* %5, align 4
  br label %81

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %66, 27027000
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 6144, i32* %5, align 4
  br label %80

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %70, 74176000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 11648, i32* %5, align 4
  br label %79

73:                                               ; preds = %69
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %74, 148352000
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 5824, i32* %5, align 4
  br label %78

77:                                               ; preds = %73
  store i32 6144, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %72
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = mul i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %18
  br label %86

86:                                               ; preds = %85, %81, %57, %38
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
