; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_sr_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_sr_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_softreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@jiffies = common dso_local global i64 0, align 8
@PENDING_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"comp not done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_softreq*)* @sr_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_completed(%struct.nitrox_softreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_softreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nitrox_softreq* %0, %struct.nitrox_softreq** %3, align 8
  %6 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %7 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @READ_ONCE(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = call i64 @msecs_to_jiffies(i32 1)
  %14 = add i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PENDING_SIG, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 255
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %42

23:                                               ; preds = %18, %1
  br label %24

24:                                               ; preds = %40, %23
  %25 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %26 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @READ_ONCE(i32 %29)
  %31 = load i32, i32* @PENDING_SIG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @time_after(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

40:                                               ; preds = %33
  br label %24

41:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
