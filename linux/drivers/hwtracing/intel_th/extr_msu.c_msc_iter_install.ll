; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_iter_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_iter_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_iter = type { i32, %struct.msc* }
%struct.msc = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msc_iter* (%struct.msc*)* @msc_iter_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msc_iter* @msc_iter_install(%struct.msc* %0) #0 {
  %2 = alloca %struct.msc_iter*, align 8
  %3 = alloca %struct.msc*, align 8
  %4 = alloca %struct.msc_iter*, align 8
  store %struct.msc* %0, %struct.msc** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.msc_iter* @kzalloc(i32 16, i32 %5)
  store %struct.msc_iter* %6, %struct.msc_iter** %4, align 8
  %7 = load %struct.msc_iter*, %struct.msc_iter** %4, align 8
  %8 = icmp ne %struct.msc_iter* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.msc_iter* @ERR_PTR(i32 %11)
  store %struct.msc_iter* %12, %struct.msc_iter** %2, align 8
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.msc*, %struct.msc** %3, align 8
  %15 = getelementptr inbounds %struct.msc, %struct.msc* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.msc*, %struct.msc** %3, align 8
  %18 = getelementptr inbounds %struct.msc, %struct.msc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.msc_iter*, %struct.msc_iter** %4, align 8
  %23 = call i32 @kfree(%struct.msc_iter* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.msc_iter* @ERR_PTR(i32 %25)
  store %struct.msc_iter* %26, %struct.msc_iter** %4, align 8
  br label %36

27:                                               ; preds = %13
  %28 = load %struct.msc*, %struct.msc** %3, align 8
  %29 = load %struct.msc_iter*, %struct.msc_iter** %4, align 8
  %30 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %29, i32 0, i32 1
  store %struct.msc* %28, %struct.msc** %30, align 8
  %31 = load %struct.msc_iter*, %struct.msc_iter** %4, align 8
  %32 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %31, i32 0, i32 0
  %33 = load %struct.msc*, %struct.msc** %3, align 8
  %34 = getelementptr inbounds %struct.msc, %struct.msc* %33, i32 0, i32 1
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %27, %21
  %37 = load %struct.msc*, %struct.msc** %3, align 8
  %38 = getelementptr inbounds %struct.msc, %struct.msc* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.msc_iter*, %struct.msc_iter** %4, align 8
  store %struct.msc_iter* %40, %struct.msc_iter** %2, align 8
  br label %41

41:                                               ; preds = %36, %9
  %42 = load %struct.msc_iter*, %struct.msc_iter** %2, align 8
  ret %struct.msc_iter* %42
}

declare dso_local %struct.msc_iter* @kzalloc(i32, i32) #1

declare dso_local %struct.msc_iter* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.msc_iter*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
