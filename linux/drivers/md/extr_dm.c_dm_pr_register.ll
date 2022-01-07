; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_pr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.dm_pr = type { i32, i64, i64, i64 }

@__dm_pr_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i64, i64, i64)* @dm_pr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_pr_register(%struct.block_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dm_pr, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 2
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 3
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %16, align 8
  %18 = load %struct.block_device*, %struct.block_device** %5, align 8
  %19 = load i32, i32* @__dm_pr_register, align 4
  %20 = call i32 @dm_call_pr(%struct.block_device* %18, i32 %19, %struct.dm_pr* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.dm_pr, %struct.dm_pr* %9, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.block_device*, %struct.block_device** %5, align 8
  %33 = load i32, i32* @__dm_pr_register, align 4
  %34 = call i32 @dm_call_pr(%struct.block_device* %32, i32 %33, %struct.dm_pr* %9)
  br label %35

35:                                               ; preds = %26, %23, %4
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local i32 @dm_call_pr(%struct.block_device*, i32, %struct.dm_pr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
