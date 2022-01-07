; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wf_fcu: Failure writing to FCU: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_fcu_priv*, i32, i8*, i32)* @wf_fcu_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_write_reg(%struct.wf_fcu_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.wf_fcu_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store %struct.wf_fcu_priv* %0, %struct.wf_fcu_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  store i8 %13, i8* %14, align 16
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @memcpy(i8* %16, i8* %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %43, %4
  %23 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @i2c_master_send(i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 100
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %34, %22
  br label %47

43:                                               ; preds = %39
  %44 = call i32 @msleep(i32 10)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %22

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
