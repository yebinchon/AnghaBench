; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_pkeytable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_pkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.qib_devdata = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_pkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_pkeytable(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
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
  %28 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memset(i64 %30, i32 0, i32 8)
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %3
  %35 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %36 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %35)
  store %struct.qib_devdata* %36, %struct.qib_devdata** %10, align 8
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %38 = call i32 @qib_get_npkeys(%struct.qib_devdata* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @get_pkeys(%struct.qib_devdata* %39, i32 %40, i32* %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %58, %34
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_be16(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %43

61:                                               ; preds = %43
  br label %68

62:                                               ; preds = %3
  %63 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %64 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %65 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %61
  %69 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %70 = call i32 @reply(%struct.ib_smp* %69)
  ret i32 %70
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

declare dso_local i32 @get_pkeys(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
