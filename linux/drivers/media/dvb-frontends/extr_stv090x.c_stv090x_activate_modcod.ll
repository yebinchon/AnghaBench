; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_activate_modcod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_activate_modcod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@MODCODLST0 = common dso_local global i32 0, align 4
@MODCODLST1 = common dso_local global i32 0, align 4
@MODCODLST2 = common dso_local global i32 0, align 4
@MODCODLST3 = common dso_local global i32 0, align 4
@MODCODLST4 = common dso_local global i32 0, align 4
@MODCODLST5 = common dso_local global i32 0, align 4
@MODCODLST6 = common dso_local global i32 0, align 4
@MODCODLST7 = common dso_local global i32 0, align 4
@MODCODLST8 = common dso_local global i32 0, align 4
@MODCODLST9 = common dso_local global i32 0, align 4
@MODCODLSTA = common dso_local global i32 0, align 4
@MODCODLSTB = common dso_local global i32 0, align 4
@MODCODLSTC = common dso_local global i32 0, align 4
@MODCODLSTD = common dso_local global i32 0, align 4
@MODCODLSTE = common dso_local global i32 0, align 4
@MODCODLSTF = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_activate_modcod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_activate_modcod(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %4 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %5 = load i32, i32* @MODCODLST0, align 4
  %6 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %4, i32 %5, i32 255)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %100

9:                                                ; preds = %1
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %11 = load i32, i32* @MODCODLST1, align 4
  %12 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %10, i32 %11, i32 252)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %100

15:                                               ; preds = %9
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %17 = load i32, i32* @MODCODLST2, align 4
  %18 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %16, i32 %17, i32 204)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %100

21:                                               ; preds = %15
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %23 = load i32, i32* @MODCODLST3, align 4
  %24 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %22, i32 %23, i32 204)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %100

27:                                               ; preds = %21
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = load i32, i32* @MODCODLST4, align 4
  %30 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %28, i32 %29, i32 204)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %100

33:                                               ; preds = %27
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = load i32, i32* @MODCODLST5, align 4
  %36 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %34, i32 %35, i32 204)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %100

39:                                               ; preds = %33
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %41 = load i32, i32* @MODCODLST6, align 4
  %42 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %40, i32 %41, i32 204)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %100

45:                                               ; preds = %39
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %47 = load i32, i32* @MODCODLST7, align 4
  %48 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %46, i32 %47, i32 204)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %100

51:                                               ; preds = %45
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %53 = load i32, i32* @MODCODLST8, align 4
  %54 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %52, i32 %53, i32 204)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %100

57:                                               ; preds = %51
  %58 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %59 = load i32, i32* @MODCODLST9, align 4
  %60 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %58, i32 %59, i32 204)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %100

63:                                               ; preds = %57
  %64 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %65 = load i32, i32* @MODCODLSTA, align 4
  %66 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %64, i32 %65, i32 204)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %100

69:                                               ; preds = %63
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %71 = load i32, i32* @MODCODLSTB, align 4
  %72 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %70, i32 %71, i32 204)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %100

75:                                               ; preds = %69
  %76 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %77 = load i32, i32* @MODCODLSTC, align 4
  %78 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %76, i32 %77, i32 204)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %100

81:                                               ; preds = %75
  %82 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %83 = load i32, i32* @MODCODLSTD, align 4
  %84 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %82, i32 %83, i32 204)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %100

87:                                               ; preds = %81
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %89 = load i32, i32* @MODCODLSTE, align 4
  %90 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %88, i32 %89, i32 204)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %100

93:                                               ; preds = %87
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %95 = load i32, i32* @MODCODLSTF, align 4
  %96 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %94, i32 %95, i32 207)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %103

100:                                              ; preds = %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8
  %101 = load i32, i32* @FE_ERROR, align 4
  %102 = call i32 @dprintk(i32 %101, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
