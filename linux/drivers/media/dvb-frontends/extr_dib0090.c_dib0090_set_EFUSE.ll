; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_EFUSE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_EFUSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@P1D_E_F = common dso_local global i64 0, align 8
@P1G = common dso_local global i64 0, align 8
@CAP_VALUE_MAX = common dso_local global i32 0, align 4
@CAP_VALUE_MIN = common dso_local global i32 0, align 4
@HR_MAX = common dso_local global i32 0, align 4
@HR_MIN = common dso_local global i32 0, align 4
@POLY_MAX = common dso_local global i32 0, align 4
@POLY_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*)* @dib0090_set_EFUSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_set_EFUSE(%struct.dib0090_state* %0) #0 {
  %2 = alloca %struct.dib0090_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %2, align 8
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %10 = call i32 @dib0090_read_reg(%struct.dib0090_state* %9, i32 38)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %12 = call i32 @dib0090_read_reg(%struct.dib0090_state* %11, i32 40)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %14 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @P1D_E_F, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %21 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @P1G, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 65535
  br i1 %28, label %29, label %49

29:                                               ; preds = %26, %19, %1
  %30 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %31 = call i32 @dib0090_write_reg(%struct.dib0090_state* %30, i32 34, i32 16)
  %32 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %33 = call i32 @dib0090_read_reg(%struct.dib0090_state* %32, i32 34)
  %34 = ashr i32 %33, 6
  %35 = and i32 %34, 1023
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 670
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1023
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %29
  store i32 850, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 10
  %45 = ashr i32 %44, 6
  %46 = sub nsw i32 165, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 14464, %47
  store i32 %48, i32* %7, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %26
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 65535
  br i1 %59, label %60, label %114

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 63
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 12
  %65 = and i32 %64, 15
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 6
  %68 = and i32 %67, 63
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @CAP_VALUE_MAX, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @CAP_VALUE_MIN, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %60
  store i32 32, i32* %3, align 4
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 14
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @HR_MAX, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @HR_MIN, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  store i32 34, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @POLY_MAX, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @POLY_MIN, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89
  store i32 3, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = shl i32 %100, 10
  %102 = call i32 @dib0090_write_reg(%struct.dib0090_state* %99, i32 19, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 %103, 11
  %105 = load i32, i32* %4, align 4
  %106 = ashr i32 %105, 2
  %107 = shl i32 %106, 6
  %108 = or i32 %104, %107
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %6, align 4
  %111 = load %struct.dib0090_state*, %struct.dib0090_state** %2, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @dib0090_write_reg(%struct.dib0090_state* %111, i32 2, i32 %112)
  br label %114

114:                                              ; preds = %98, %57
  ret void
}

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
