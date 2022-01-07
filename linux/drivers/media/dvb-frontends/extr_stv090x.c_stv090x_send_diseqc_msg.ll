; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dvb_diseqc_master_cmd = type { i32, i32* }

@DISTXCTL = common dso_local global i32 0, align 4
@DISTX_MODE_FIELD = common dso_local global i32 0, align 4
@DISEQC_RESET_FIELD = common dso_local global i32 0, align 4
@DIS_PRECHARGE_FIELD = common dso_local global i32 0, align 4
@DISTXSTATUS = common dso_local global i32 0, align 4
@FIFO_FULL_FIELD = common dso_local global i32 0, align 4
@DISTXDATA = common dso_local global i32 0, align 4
@TX_IDLE_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @stv090x_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.stv090x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %12, align 8
  store %struct.stv090x_state* %13, %struct.stv090x_state** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %15 = load i32, i32* @DISTXCTL, align 4
  %16 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DISTX_MODE_FIELD, align 4
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4, i32 2
  %27 = call i32 @STV090x_SETFIELD_Px(i32 %17, i32 %18, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %30 = call i32 @STV090x_SETFIELD_Px(i32 %28, i32 %29, i32 1)
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %32 = load i32, i32* @DISTXCTL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %31, i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %125

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %40 = call i32 @STV090x_SETFIELD_Px(i32 %38, i32 %39, i32 0)
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %42 = load i32, i32* @DISTXCTL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %41, i32 %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %125

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @DIS_PRECHARGE_FIELD, align 4
  %50 = call i32 @STV090x_SETFIELD_Px(i32 %48, i32 %49, i32 1)
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %52 = load i32, i32* @DISTXCTL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %51, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %125

57:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %89, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %68, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %70 = load i32, i32* @DISTXSTATUS, align 4
  %71 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FIFO_FULL_FIELD, align 4
  %74 = call i32 @STV090x_GETFIELD_Px(i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %65

75:                                               ; preds = %65
  %76 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %77 = load i32, i32* @DISTXDATA, align 4
  %78 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %79 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %76, i32 %77, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %125

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %58

92:                                               ; preds = %58
  %93 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %94 = load i32, i32* @DISTXCTL, align 4
  %95 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @DIS_PRECHARGE_FIELD, align 4
  %98 = call i32 @STV090x_SETFIELD_Px(i32 %96, i32 %97, i32 0)
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %100 = load i32, i32* @DISTXCTL, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %99, i32 %100, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %125

105:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %114, %105
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 10
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %114, label %124

114:                                              ; preds = %112
  %115 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %116 = load i32, i32* @DISTXSTATUS, align 4
  %117 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @TX_IDLE_FIELD, align 4
  %120 = call i32 @STV090x_GETFIELD_Px(i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = call i32 @msleep(i32 10)
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %106

124:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %128

125:                                              ; preds = %104, %87, %56, %46, %36
  %126 = load i32, i32* @FE_ERROR, align 4
  %127 = call i32 @dprintk(i32 %126, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
