; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_ftimer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_ftimer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@ftimer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: ftimer flags %lx\0A\00", align 1
@FLG_FTI_RUN = common dso_local global i32 0, align 4
@FLG_LL_CONN = common dso_local global i32 0, align 4
@HW_MOD_CONNECT = common dso_local global i32 0, align 4
@ch = common dso_local global %struct.isar_ch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ftimer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftimer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.isar_ch*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %5 = ptrtoint %struct.isar_ch* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @ftimer, align 4
  %8 = call %struct.isar_ch* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.isar_ch* %8, %struct.isar_ch** %3, align 8
  %9 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %10 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %15 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load i32, i32* @FLG_FTI_RUN, align 4
  %20 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %21 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i64 @test_and_clear_bit(i32 %19, i32* %22)
  %24 = load i32, i32* @FLG_LL_CONN, align 4
  %25 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %26 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i64 @test_and_clear_bit(i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %32 = load i32, i32* @HW_MOD_CONNECT, align 4
  %33 = call i32 @deliver_status(%struct.isar_ch* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.isar_ch* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @deliver_status(%struct.isar_ch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
