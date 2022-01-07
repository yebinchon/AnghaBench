; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { %struct.drx_demod_instance* }
%struct.drx_demod_instance = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"drx39xxj: could not get lock status!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"drx says NEVER_LOCK\0A\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Lock state unknown %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @drx39xxj_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drx39xxj_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drx39xxj_state*, align 8
  %6 = alloca %struct.drx_demod_instance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %10, align 8
  store %struct.drx39xxj_state* %11, %struct.drx39xxj_state** %5, align 8
  %12 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %5, align 8
  %13 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %12, i32 0, i32 0
  %14 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %13, align 8
  store %struct.drx_demod_instance* %14, %struct.drx_demod_instance** %6, align 8
  %15 = load i32*, i32** %4, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %17 = call i32 @ctrl_lock_status(%struct.drx_demod_instance* %16, i32* %8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %50 [
    i32 129, label %25
    i32 128, label %28
    i32 138, label %30
    i32 137, label %30
    i32 136, label %30
    i32 135, label %30
    i32 134, label %30
    i32 133, label %30
    i32 132, label %30
    i32 131, label %30
    i32 130, label %30
    i32 139, label %39
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %4, align 8
  store i32 0, i32* %26, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %53

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  store i32 0, i32* %29, align 4
  br label %53

30:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23
  %31 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %32 = load i32, i32* @FE_HAS_CARRIER, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FE_HAS_VITERBI, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FE_HAS_SYNC, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %53

39:                                               ; preds = %23
  %40 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %41 = load i32, i32* @FE_HAS_CARRIER, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FE_HAS_VITERBI, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FE_HAS_SYNC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FE_HAS_LOCK, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %23
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %39, %30, %28, %25
  %54 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ctrl_sig_quality(%struct.drx_demod_instance* %54, i32 %55)
  ret i32 0
}

declare dso_local i32 @ctrl_lock_status(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ctrl_sig_quality(%struct.drx_demod_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
