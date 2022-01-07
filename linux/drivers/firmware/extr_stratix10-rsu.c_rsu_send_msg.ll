; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stratix10_rsu_priv = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.stratix10_svc_client_msg = type { i32, i64* }

@RSU_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for SMC call\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error %d waiting for SMC call\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stratix10_rsu_priv*, i32, i64, i32)* @rsu_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_send_msg(%struct.stratix10_rsu_priv* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.stratix10_rsu_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stratix10_svc_client_msg, align 8
  %10 = alloca i32, align 4
  store %struct.stratix10_rsu_priv* %0, %struct.stratix10_rsu_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %12 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %15 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %14, i32 0, i32 3
  %16 = call i32 @reinit_completion(i32* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %19 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.stratix10_svc_client_msg, %struct.stratix10_svc_client_msg* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.stratix10_svc_client_msg, %struct.stratix10_svc_client_msg* %9, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %4
  %31 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %32 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @stratix10_svc_send(i32 %33, %struct.stratix10_svc_client_msg* %9)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %66

38:                                               ; preds = %30
  %39 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %40 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %39, i32 0, i32 3
  %41 = load i32, i32* @RSU_TIMEOUT, align 4
  %42 = call i32 @wait_for_completion_interruptible_timeout(i32* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %47 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %66

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %58 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %56, %45, %37
  %67 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %68 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @stratix10_svc_done(i32 %69)
  %71 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %72 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @stratix10_svc_send(i32, %struct.stratix10_svc_client_msg*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @stratix10_svc_done(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
