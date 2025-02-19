; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @cx24110_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx24110_state*, align 8
  %9 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %11, align 8
  store %struct.cx24110_state* %12, %struct.cx24110_state** %8, align 8
  %13 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 6
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 121, %34
  %36 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cx24110_writereg(%struct.cx24110_state* %33, i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %49 = call i32 @cx24110_readreg(%struct.cx24110_state* %48, i32 119)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, -5
  %57 = call i32 @cx24110_writereg(%struct.cx24110_state* %54, i32 119, i32 %56)
  %58 = call i32 @msleep(i32 30)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %61 = call i32 @cx24110_readreg(%struct.cx24110_state* %60, i32 118)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 144
  %65 = or i32 %64, 64
  %66 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 3
  %70 = and i32 %69, 3
  %71 = or i32 %65, %70
  %72 = call i32 @cx24110_writereg(%struct.cx24110_state* %62, i32 118, i32 %71)
  %73 = load i64, i64* @jiffies, align 8
  %74 = call i64 @msecs_to_jiffies(i32 100)
  %75 = add i64 %73, %74
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %89, %59
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @time_after(i64 %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %83 = call i32 @cx24110_readreg(%struct.cx24110_state* %82, i32 118)
  %84 = and i32 %83, 64
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi i1 [ false, %76 ], [ %86, %81 ]
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %76

90:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
