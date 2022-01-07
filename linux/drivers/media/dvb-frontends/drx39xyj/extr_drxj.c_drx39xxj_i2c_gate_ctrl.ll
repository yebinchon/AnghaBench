; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { i32, %struct.drx_demod_instance* }
%struct.drx_demod_instance = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"drx39xxj: could not open i2c gate [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @drx39xxj_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drx39xxj_i2c_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drx39xxj_state*, align 8
  %7 = alloca %struct.drx_demod_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %11, align 8
  store %struct.drx39xxj_state* %12, %struct.drx39xxj_state** %6, align 8
  %13 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %6, align 8
  %14 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %13, i32 0, i32 1
  %15 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %14, align 8
  store %struct.drx_demod_instance* %15, %struct.drx_demod_instance** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %6, align 8
  %22 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %41

27:                                               ; preds = %20
  %28 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %7, align 8
  %29 = call i32 @ctrl_i2c_bridge(%struct.drx_demod_instance* %28, i32* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 (...) @dump_stack()
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %6, align 8
  %39 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ctrl_i2c_bridge(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
