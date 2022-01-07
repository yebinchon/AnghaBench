; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24123_state*, i32)* @cx24123_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_symbolrate(%struct.cx24123_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24123_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx24123_state* %0, %struct.cx24123_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %13 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %11, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %22 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %132

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XTAL, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sdiv i32 %34, 2
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 2, i32* %10, align 4
  br label %87

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @XTAL, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sdiv i32 %41, 2
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 3, i32* %10, align 4
  br label %86

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @XTAL, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sdiv i32 %48, 2
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 4, i32* %10, align 4
  br label %85

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @XTAL, align 4
  %55 = mul nsw i32 %54, 5
  %56 = sdiv i32 %55, 2
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 5, i32* %10, align 4
  br label %84

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @XTAL, align 4
  %62 = mul nsw i32 %61, 6
  %63 = sdiv i32 %62, 2
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 6, i32* %10, align 4
  br label %83

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @XTAL, align 4
  %69 = mul nsw i32 %68, 7
  %70 = sdiv i32 %69, 2
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 7, i32* %10, align 4
  br label %82

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @XTAL, align 4
  %76 = mul nsw i32 %75, 8
  %77 = sdiv i32 %76, 2
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 8, i32* %10, align 4
  br label %81

80:                                               ; preds = %73
  store i32 9, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %37
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @XTAL, align 4
  %90 = mul nsw i32 %88, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 %91, 23
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @do_div(i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = mul nsw i32 %98, 6
  %100 = call i32 @cx24123_writereg(%struct.cx24123_state* %97, i32 1, i32 %99)
  %101 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 16
  %104 = and i32 %103, 63
  %105 = call i32 @cx24123_writereg(%struct.cx24123_state* %101, i32 8, i32 %104)
  %106 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = ashr i32 %107, 8
  %109 = and i32 %108, 255
  %110 = call i32 @cx24123_writereg(%struct.cx24123_state* %106, i32 9, i32 %109)
  %111 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, 255
  %114 = call i32 @cx24123_writereg(%struct.cx24123_state* %111, i32 10, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @cx24123_int_log2(i32 %115, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %119 = call i32 @cx24123_readreg(%struct.cx24123_state* %118, i32 12)
  %120 = and i32 %119, -225
  store i32 %120, i32* %6, align 4
  %121 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 %123, 5
  %125 = or i32 %122, %124
  %126 = call i32 @cx24123_writereg(%struct.cx24123_state* %121, i32 12, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %87, %28
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_int_log2(i32, i32) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
