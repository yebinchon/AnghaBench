; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_priv = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failure writing address to FCU: %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"wf_fcu: Failure reading data from FCU: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_fcu_priv*, i32, i8*, i32)* @wf_fcu_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.wf_fcu_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wf_fcu_priv* %0, %struct.wf_fcu_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %13 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %39, %4
  %20 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %21 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @i2c_master_send(i32 %22, i8* %23, i32 1)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 100
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %30, %19
  br label %43

39:                                               ; preds = %35
  %40 = call i32 @msleep(i32 10)
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %19

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %10, align 4
  br label %83

50:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %72, %50
  %52 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @i2c_master_recv(i32 %54, i8* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %9, align 4
  %70 = icmp sge i32 %69, 100
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %63, %51
  br label %76

72:                                               ; preds = %68
  %73 = call i32 @msleep(i32 10)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %51

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %5, align 8
  %85 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
