; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_default_roce_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_default_roce_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.cma_device = type { i32 }
%struct.cma_dev_port_group = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @default_roce_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @default_roce_mode_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cma_device*, align 8
  %9 = alloca %struct.cma_dev_port_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @ib_cache_gid_parse_type_str(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.config_item*, %struct.config_item** %5, align 8
  %21 = call i64 @cma_configfs_params_get(%struct.config_item* %20, %struct.cma_device** %8, %struct.cma_dev_port_group** %9)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %4, align 8
  br label %45

26:                                               ; preds = %19
  %27 = load %struct.cma_device*, %struct.cma_device** %8, align 8
  %28 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %9, align 8
  %29 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @cma_set_default_gid_type(%struct.cma_device* %27, i32 %30, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load %struct.cma_device*, %struct.cma_device** %8, align 8
  %34 = call i32 @cma_configfs_params_put(%struct.cma_device* %33)
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @strnlen(i8* %38, i64 %39)
  br label %43

41:                                               ; preds = %26
  %42 = load i64, i64* %11, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i64 [ %40, %37 ], [ %42, %41 ]
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %24, %16
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @ib_cache_gid_parse_type_str(i8*) #1

declare dso_local i64 @cma_configfs_params_get(%struct.config_item*, %struct.cma_device**, %struct.cma_dev_port_group**) #1

declare dso_local i64 @cma_set_default_gid_type(%struct.cma_device*, i32, i32) #1

declare dso_local i32 @cma_configfs_params_put(%struct.cma_device*) #1

declare dso_local i64 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
