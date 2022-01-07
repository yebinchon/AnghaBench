; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_mad_ifc_vendor_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_mad_ifc_vendor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_smp = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_mad_ifc_vendor_id(%struct.ib_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %6, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_smp* @kmalloc(i32 8, i32 %10)
  store %struct.ib_smp* %11, %struct.ib_smp** %6, align 8
  %12 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %13 = icmp ne %struct.ib_smp* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %20 = call i32 @mlx5_query_mad_ifc_smp_attr_node_info(%struct.ib_device* %18, %struct.ib_smp* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %33

24:                                               ; preds = %17
  %25 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %26 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 36
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @be32_to_cpup(i32* %29)
  %31 = and i32 %30, 65535
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %23
  %34 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %35 = call i32 @kfree(%struct.ib_smp* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx5_query_mad_ifc_smp_attr_node_info(%struct.ib_device*, %struct.ib_smp*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
