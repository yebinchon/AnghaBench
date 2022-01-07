; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state* }
%struct.cx24120_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_DISEQC_MSG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"send 1st message(0x%x) failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@CMD_DISEQC_MSG2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"send 2nd message(0x%x) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"diseqc sequence sent\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Too long waiting for diseqc.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @cx24120_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.cx24120_state*, align 8
  %7 = alloca %struct.cx24120_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.cx24120_state*, %struct.cx24120_state** %10, align 8
  store %struct.cx24120_state* %11, %struct.cx24120_state** %6, align 8
  %12 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %13 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @CMD_DISEQC_MSG1, align 4
  %18 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 11, i32* %19, align 8
  %20 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 3, i32* %28, align 4
  %29 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 22, i32* %31, align 4
  %32 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 40, i32* %34, align 4
  %35 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  store i32 20, i32* %43, align 4
  %44 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  store i32 25, i32* %46, align 4
  %47 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 9
  store i32 20, i32* %49, align 4
  %50 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 10
  store i32 30, i32* %52, align 4
  %53 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %54 = call i64 @cx24120_message_send(%struct.cx24120_state* %53, %struct.cx24120_cmd* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %132

62:                                               ; preds = %2
  %63 = load i32, i32* @CMD_DISEQC_MSG2, align 4
  %64 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 6
  %69 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 1, i32* %75, align 4
  %76 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 2, i32* %78, align 4
  %79 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 0, i32* %84, align 4
  %85 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  %94 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %95 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %94, i32 0, i32 1
  %96 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32* %93, i32* %95, i32 %98)
  %100 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %101 = call i64 @cx24120_message_send(%struct.cx24120_state* %100, %struct.cx24120_cmd* %7)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %62
  %104 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EREMOTEIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %132

109:                                              ; preds = %62
  store i32 500, i32* %8, align 4
  br label %110

110:                                              ; preds = %125, %109
  %111 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %112 = call i32 @cx24120_readreg(%struct.cx24120_state* %111, i32 147)
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %117 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @dev_dbg(i32* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

121:                                              ; preds = %110
  %122 = call i32 @msleep(i32 20)
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %123, 20
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %110, label %128

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @ETIMEDOUT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %115, %103, %56
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
