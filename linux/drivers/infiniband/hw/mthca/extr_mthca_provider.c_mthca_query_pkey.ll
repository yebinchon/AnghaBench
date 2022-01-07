; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_smp = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PKEY_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, i32*)* @mthca_query_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_query_pkey(%struct.ib_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ib_smp* @kzalloc(i32 16, i32 %14)
  store %struct.ib_smp* %15, %struct.ib_smp** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ib_smp* @kmalloc(i32 16, i32 %16)
  store %struct.ib_smp* %17, %struct.ib_smp** %10, align 8
  %18 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %19 = icmp ne %struct.ib_smp* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %22 = icmp ne %struct.ib_smp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %56

24:                                               ; preds = %20
  %25 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %26 = call i32 @init_query_mad(%struct.ib_smp* %25)
  %27 = load i32, i32* @IB_SMP_ATTR_PKEY_TABLE, align 4
  %28 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 32
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %34 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %36 = call i32 @to_mdev(%struct.ib_device* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %39 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %40 = call i32 @mthca_MAD_IFC(i32 %36, i32 1, i32 1, i32 %37, i32* null, i32* null, %struct.ib_smp* %38, %struct.ib_smp* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %56

44:                                               ; preds = %24
  %45 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %46 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %7, align 4
  %50 = srem i32 %49, 32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %43, %23
  %57 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %58 = call i32 @kfree(%struct.ib_smp* %57)
  %59 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %60 = call i32 @kfree(%struct.ib_smp* %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mthca_MAD_IFC(i32, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
