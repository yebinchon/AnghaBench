; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_qam_lock_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_qam_lock_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@LG3306_UNLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"no fec lock!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cnt=%d errors=%d snr=%d\0A\00", align 1
@LG3306_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"not locked!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_qam_lock_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_qam_lock_poll(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %12 = call i64 @lgdt3306a_fec_lock_poll(%struct.lgdt3306a_state* %11)
  %13 = load i64, i64* @LG3306_UNLOCK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @LG3306_UNLOCK, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %10
  %20 = call i32 @msleep(i32 20)
  %21 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %22 = call i32 @lgdt3306a_get_packet_error(%struct.lgdt3306a_state* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %24 = call i32 @lgdt3306a_calculate_snr_x100(%struct.lgdt3306a_state* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 1500
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 255
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @LG3306_LOCK, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %31, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %7

40:                                               ; preds = %7
  %41 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @LG3306_UNLOCK, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %34, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @lgdt3306a_fec_lock_poll(%struct.lgdt3306a_state*) #1

declare dso_local i32 @dbg_info(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lgdt3306a_get_packet_error(%struct.lgdt3306a_state*) #1

declare dso_local i32 @lgdt3306a_calculate_snr_x100(%struct.lgdt3306a_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
