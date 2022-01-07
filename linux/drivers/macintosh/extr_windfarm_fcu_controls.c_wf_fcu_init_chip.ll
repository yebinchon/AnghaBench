; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wf_fcu: FCU Initialized, RPM fan shift is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_fcu_priv*)* @wf_fcu_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_init_chip(%struct.wf_fcu_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wf_fcu_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.wf_fcu_priv* %0, %struct.wf_fcu_priv** %3, align 8
  store i8 -1, i8* %4, align 1
  %6 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %7 = call i32 @wf_fcu_write_reg(%struct.wf_fcu_priv* %6, i32 14, i8* %4, i32 1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %15 = call i32 @wf_fcu_write_reg(%struct.wf_fcu_priv* %14, i32 46, i8* %4, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %13
  %22 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %23 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %22, i32 0, i8* %4, i32 1)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %41

29:                                               ; preds = %21
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 3
  %35 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %36 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %38 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %29, %26, %18, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @wf_fcu_write_reg(%struct.wf_fcu_priv*, i32, i8*, i32) #1

declare dso_local i32 @wf_fcu_read_reg(%struct.wf_fcu_priv*, i32, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
