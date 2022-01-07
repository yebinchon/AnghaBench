; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_set_default_gid_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_set_default_gid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_device = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cma_set_default_gid_type(%struct.cma_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cma_device* %0, %struct.cma_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %10 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @rdma_is_port_valid(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %20 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @roce_gid_type_mask_support(i32 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = and i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %36 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %40 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rdma_start_port(i32 %41)
  %43 = sub i32 %38, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  store i32 %34, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %33, %30, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @rdma_is_port_valid(i32, i32) #1

declare dso_local i64 @roce_gid_type_mask_support(i32, i32) #1

declare dso_local i32 @rdma_start_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
