; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_viterbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32 }

@FECM = common dso_local global i32 0, align 4
@PRVIT = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_set_viterbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_viterbi(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %4 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %5 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %112 [
    i32 130, label %7
    i32 128, label %20
    i32 129, label %73
  ]

7:                                                ; preds = %1
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %9 = load i32, i32* @FECM, align 4
  %10 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %8, i32 %9, i32 16)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %114

13:                                               ; preds = %7
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = load i32, i32* @PRVIT, align 4
  %16 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %14, i32 %15, i32 63)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %114

19:                                               ; preds = %13
  br label %113

20:                                               ; preds = %1
  %21 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %22 = load i32, i32* @FECM, align 4
  %23 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %21, i32 %22, i32 0)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %114

26:                                               ; preds = %20
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %28 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %65 [
    i32 136, label %30
    i32 135, label %37
    i32 134, label %44
    i32 133, label %51
    i32 131, label %58
  ]

30:                                               ; preds = %26
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %32 = load i32, i32* @PRVIT, align 4
  %33 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %31, i32 %32, i32 1)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %114

36:                                               ; preds = %30
  br label %72

37:                                               ; preds = %26
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %39 = load i32, i32* @PRVIT, align 4
  %40 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %38, i32 %39, i32 2)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %114

43:                                               ; preds = %37
  br label %72

44:                                               ; preds = %26
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %46 = load i32, i32* @PRVIT, align 4
  %47 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %45, i32 %46, i32 4)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %114

50:                                               ; preds = %44
  br label %72

51:                                               ; preds = %26
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %53 = load i32, i32* @PRVIT, align 4
  %54 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %52, i32 %53, i32 8)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %114

57:                                               ; preds = %51
  br label %72

58:                                               ; preds = %26
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %60 = load i32, i32* @PRVIT, align 4
  %61 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %59, i32 %60, i32 32)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %114

64:                                               ; preds = %58
  br label %72

65:                                               ; preds = %26
  %66 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %67 = load i32, i32* @PRVIT, align 4
  %68 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %66, i32 %67, i32 47)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %114

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %64, %57, %50, %43, %36
  br label %113

73:                                               ; preds = %1
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %75 = load i32, i32* @FECM, align 4
  %76 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %74, i32 %75, i32 128)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %114

79:                                               ; preds = %73
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %81 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %104 [
    i32 136, label %83
    i32 135, label %90
    i32 132, label %97
  ]

83:                                               ; preds = %79
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %85 = load i32, i32* @PRVIT, align 4
  %86 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %84, i32 %85, i32 1)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %114

89:                                               ; preds = %83
  br label %111

90:                                               ; preds = %79
  %91 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %92 = load i32, i32* @PRVIT, align 4
  %93 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %91, i32 %92, i32 2)
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %114

96:                                               ; preds = %90
  br label %111

97:                                               ; preds = %79
  %98 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %99 = load i32, i32* @PRVIT, align 4
  %100 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %98, i32 %99, i32 16)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %114

103:                                              ; preds = %97
  br label %111

104:                                              ; preds = %79
  %105 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %106 = load i32, i32* @PRVIT, align 4
  %107 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %105, i32 %106, i32 19)
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %114

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %103, %96, %89
  br label %113

112:                                              ; preds = %1
  br label %113

113:                                              ; preds = %112, %111, %72, %19
  store i32 0, i32* %2, align 4
  br label %117

114:                                              ; preds = %109, %102, %95, %88, %78, %70, %63, %56, %49, %42, %35, %25, %18, %12
  %115 = load i32, i32* @FE_ERROR, align 4
  %116 = call i32 @dprintk(i32 %115, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %113
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
