; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_claim_log_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_claim_log_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, i32, i32, i32*, i32, i64 }

@cec_config_thread_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ceccfg-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*, i32)* @cec_claim_log_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_claim_log_addrs(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %56

20:                                               ; preds = %14
  %21 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %21, i32 0, i32 2
  %23 = call i32 @init_completion(i32* %22)
  %24 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @cec_config_thread_func, align 4
  %27 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %28 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @kthread_run(i32 %26, %struct.cec_adapter* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %56

42:                                               ; preds = %20
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %49, i32 0, i32 2
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  br label %55

55:                                               ; preds = %45, %42
  br label %56

56:                                               ; preds = %19, %55, %39
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.cec_adapter*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
