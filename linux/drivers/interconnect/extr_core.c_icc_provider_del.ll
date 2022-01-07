; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_provider_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_provider_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_provider = type { i32, i32, i64 }

@icc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"interconnect provider still has %d users\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"interconnect provider still has nodes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icc_provider_del(%struct.icc_provider* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icc_provider*, align 8
  store %struct.icc_provider* %0, %struct.icc_provider** %3, align 8
  %4 = call i32 @mutex_lock(i32* @icc_lock)
  %5 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %6 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %11 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = call i32 @mutex_unlock(i32* @icc_lock)
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %19 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %18, i32 0, i32 1
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @mutex_unlock(i32* @icc_lock)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.icc_provider*, %struct.icc_provider** %3, align 8
  %29 = getelementptr inbounds %struct.icc_provider, %struct.icc_provider* %28, i32 0, i32 0
  %30 = call i32 @list_del(i32* %29)
  %31 = call i32 @mutex_unlock(i32* @icc_lock)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %22, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
