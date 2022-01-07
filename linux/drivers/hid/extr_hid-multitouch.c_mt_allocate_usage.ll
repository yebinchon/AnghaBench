; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_allocate_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_allocate_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_usages = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hid_device = type { i32 }
%struct.mt_application = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DEFAULT_ZERO = common dso_local global i8* null, align 8
@DEFAULT_FALSE = common dso_local global i8* null, align 8
@DEFAULT_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt_usages* (%struct.hid_device*, %struct.mt_application*)* @mt_allocate_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt_usages* @mt_allocate_usage(%struct.hid_device* %0, %struct.mt_application* %1) #0 {
  %3 = alloca %struct.mt_usages*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.mt_application*, align 8
  %6 = alloca %struct.mt_usages*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.mt_application* %1, %struct.mt_application** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mt_usages* @devm_kzalloc(i32* %8, i32 96, i32 %9)
  store %struct.mt_usages* %10, %struct.mt_usages** %6, align 8
  %11 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %12 = icmp ne %struct.mt_usages* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.mt_usages* null, %struct.mt_usages** %3, align 8
  br label %57

14:                                               ; preds = %2
  %15 = load i8*, i8** @DEFAULT_ZERO, align 8
  %16 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %17 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @DEFAULT_ZERO, align 8
  %19 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %20 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %19, i32 0, i32 11
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @DEFAULT_ZERO, align 8
  %22 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %23 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @DEFAULT_ZERO, align 8
  %25 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %26 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @DEFAULT_ZERO, align 8
  %28 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %29 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @DEFAULT_ZERO, align 8
  %31 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %32 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @DEFAULT_ZERO, align 8
  %34 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %35 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @DEFAULT_ZERO, align 8
  %37 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %38 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @DEFAULT_ZERO, align 8
  %40 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %41 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @DEFAULT_FALSE, align 8
  %43 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %44 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @DEFAULT_FALSE, align 8
  %46 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %47 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @DEFAULT_TRUE, align 4
  %49 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %50 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  %52 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %51, i32 0, i32 0
  %53 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %54 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.mt_usages*, %struct.mt_usages** %6, align 8
  store %struct.mt_usages* %56, %struct.mt_usages** %3, align 8
  br label %57

57:                                               ; preds = %14, %13
  %58 = load %struct.mt_usages*, %struct.mt_usages** %3, align 8
  ret %struct.mt_usages* %58
}

declare dso_local %struct.mt_usages* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
