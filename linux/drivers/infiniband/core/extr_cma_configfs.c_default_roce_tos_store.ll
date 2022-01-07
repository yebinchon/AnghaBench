; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_default_roce_tos_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_default_roce_tos_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.cma_device = type { i32 }
%struct.cma_dev_port_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @default_roce_tos_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @default_roce_tos_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cma_device*, align 8
  %9 = alloca %struct.cma_dev_port_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @kstrtou8(i8* %12, i32 0, i32* %11)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %4, align 8
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.config_item*, %struct.config_item** %5, align 8
  %20 = call i64 @cma_configfs_params_get(%struct.config_item* %19, %struct.cma_device** %8, %struct.cma_dev_port_group** %9)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %4, align 8
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.cma_device*, %struct.cma_device** %8, align 8
  %27 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %28 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @cma_set_default_roce_tos(%struct.cma_device* %26, i32 %29, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.cma_device*, %struct.cma_device** %8, align 8
  %33 = call i32 @cma_configfs_params_put(%struct.cma_device* %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i64, i64* %10, align 8
  br label %42

38:                                               ; preds = %25
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @strnlen(i8* %39, i64 %40)
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ]
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %23, %16
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i64 @cma_configfs_params_get(%struct.config_item*, %struct.cma_device**, %struct.cma_dev_port_group**) #1

declare dso_local i64 @cma_set_default_roce_tos(%struct.cma_device*, i32, i32) #1

declare dso_local i32 @cma_configfs_params_put(%struct.cma_device*) #1

declare dso_local i64 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
