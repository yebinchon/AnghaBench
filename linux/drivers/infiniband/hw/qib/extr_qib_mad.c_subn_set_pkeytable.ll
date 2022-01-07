; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_pkeytable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_pkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.qib_devdata = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_pkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_pkeytable(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qib_devdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %14 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = and i32 %16, 65535
  %18 = mul nsw i32 32, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %8, align 8
  %24 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %25 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %9, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %29 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %28)
  store %struct.qib_devdata* %29, %struct.qib_devdata** %10, align 8
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %31 = call i32 @qib_get_npkeys(%struct.qib_devdata* %30)
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %47, %3
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @set_pkeys(%struct.qib_devdata* %54, i32 %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %50
  %60 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %61 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %62 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %67 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @subn_get_pkeytable(%struct.ib_smp* %66, %struct.ib_device* %67, i32 %68)
  ret i32 %69
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @set_pkeys(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @subn_get_pkeytable(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
