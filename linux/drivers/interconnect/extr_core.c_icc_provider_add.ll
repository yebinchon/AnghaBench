; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_provider_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_provider_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_provider = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@icc_lock = common dso_local global i32 0, align 4
@icc_providers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"interconnect provider added to topology\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icc_provider_add(%struct.icc_provider* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icc_provider*, align 8
  store %struct.icc_provider* %0, %struct.icc_provider** %3, align 8
  %4 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %5 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %17 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %15
  %28 = call i32 @mutex_lock(i32* @icc_lock)
  %29 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %30 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %29, i32 0, i32 2
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %33 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %32, i32 0, i32 1
  %34 = call i32 @list_add_tail(i32* %33, i32* @icc_providers)
  %35 = call i32 @mutex_unlock(i32* @icc_lock)
  %36 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %37 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %24, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
