; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_waitforXFW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_waitforXFW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPAC_STARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: B%1d XFW %d us\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: B%1d XFW timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @waitforXFW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitforXFW(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  store i32 50, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %10 = load i32, i32* @IPAC_STARB, align 4
  %11 = call i32 @ReadHSCX(%struct.hscx_hw* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 68
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  %17 = call i32 @udelay(i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  br label %5

20:                                               ; preds = %15, %5
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 50
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %25 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %30 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 50, %33
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %41 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %46 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @ReadHSCX(%struct.hscx_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
