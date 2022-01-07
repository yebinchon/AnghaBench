; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_dvbs2_nbch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_dvbs2_nbch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dvbs2_nbch.nbch = internal constant [29 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 16200, i32 3240], [2 x i32] [i32 21600, i32 5400], [2 x i32] [i32 25920, i32 6480], [2 x i32] [i32 32400, i32 7200], [2 x i32] [i32 38880, i32 9720], [2 x i32] [i32 43200, i32 10800], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 43200, i32 9720], [2 x i32] [i32 48600, i32 10800], [2 x i32] [i32 51840, i32 11880], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 43200, i32 10800], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000]], align 16
@DVBS2_QPSK_1_4 = common dso_local global i32 0, align 4
@DVBS2_32APSK_9_10 = common dso_local global i32 0, align 4
@DVBS2_16K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dvbs2_nbch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbs2_nbch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DVBS2_QPSK_1_4, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DVBS2_32APSK_9_10, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DVBS2_16K, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @dvbs2_nbch.nbch, i64 0, i64 %19
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %13, %9, %2
  store i32 64800, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
