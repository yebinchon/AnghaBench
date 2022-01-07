; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_dvbs_track_crl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_dvbs_track_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ACLC = common dso_local global i32 0, align 4
@BCLC = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_dvbs_track_crl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_dvbs_track_crl(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %4 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %5 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 48
  br i1 %9, label %10, label %72

10:                                               ; preds = %1
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %12 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 15000000
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %17 = load i32, i32* @ACLC, align 4
  %18 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %16, i32 %17, i32 43)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %86

21:                                               ; preds = %15
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %23 = load i32, i32* @BCLC, align 4
  %24 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %22, i32 %23, i32 26)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %86

27:                                               ; preds = %21
  br label %71

28:                                               ; preds = %10
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %30 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 7000000
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 15000000, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %40 = load i32, i32* @ACLC, align 4
  %41 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %39, i32 %40, i32 12)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %86

44:                                               ; preds = %38
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %46 = load i32, i32* @BCLC, align 4
  %47 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %45, i32 %46, i32 27)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %86

50:                                               ; preds = %44
  br label %70

51:                                               ; preds = %33, %28
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %53 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 7000000
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %58 = load i32, i32* @ACLC, align 4
  %59 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %57, i32 %58, i32 44)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %86

62:                                               ; preds = %56
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = load i32, i32* @BCLC, align 4
  %65 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %63, i32 %64, i32 28)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %86

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %27
  br label %85

72:                                               ; preds = %1
  %73 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %74 = load i32, i32* @ACLC, align 4
  %75 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %73, i32 %74, i32 26)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %86

78:                                               ; preds = %72
  %79 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %80 = load i32, i32* @BCLC, align 4
  %81 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %79, i32 %80, i32 9)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %86

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %71
  store i32 0, i32* %2, align 4
  br label %89

86:                                               ; preds = %83, %77, %67, %61, %49, %43, %26, %20
  %87 = load i32, i32* @FE_ERROR, align 4
  %88 = call i32 @dprintk(i32 %87, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
