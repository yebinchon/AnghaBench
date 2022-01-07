; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/pmem/extr_compat.c_dax_pmem_compat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/pmem/extr_compat.c_dax_pmem_compat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dev_dax = type { i32 }

@DEV_DAX_CLASS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dax_pmem_compat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_pmem_compat_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_dax*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @DEV_DAX_CLASS, align 4
  %8 = call %struct.dev_dax* @__dax_pmem_probe(%struct.device* %6, i32 %7)
  store %struct.dev_dax* %8, %struct.dev_dax** %4, align 8
  %9 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %10 = call i64 @IS_ERR(%struct.dev_dax* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.dev_dax* %13)
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %17 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %16, i32 0, i32 0
  %18 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @devres_open_group(i32* %17, %struct.dev_dax* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %48

25:                                               ; preds = %15
  %26 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %27 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %26, i32 0, i32 0
  %28 = call i32 @device_lock(i32* %27)
  %29 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %30 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %29, i32 0, i32 0
  %31 = call i32 @dev_dax_probe(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %33 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %32, i32 0, i32 0
  %34 = call i32 @device_unlock(i32* %33)
  %35 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %36 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %35, i32 0, i32 0
  %37 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %38 = call i32 @devres_close_group(i32* %36, %struct.dev_dax* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %43 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %42, i32 0, i32 0
  %44 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %45 = call i32 @devres_release_group(i32* %43, %struct.dev_dax* %44)
  br label %46

46:                                               ; preds = %41, %25
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %22, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.dev_dax* @__dax_pmem_probe(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_dax*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_dax*) #1

declare dso_local i32 @devres_open_group(i32*, %struct.dev_dax*, i32) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @dev_dax_probe(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @devres_close_group(i32*, %struct.dev_dax*) #1

declare dso_local i32 @devres_release_group(i32*, %struct.dev_dax*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
