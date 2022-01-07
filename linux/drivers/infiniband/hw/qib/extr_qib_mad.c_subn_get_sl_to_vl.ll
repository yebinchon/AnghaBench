; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_sl_to_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_sl_to_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64 }
%struct.ib_device = type { i32 }
%struct.qib_ibport = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_PORT_SL_MAP_SUP = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_sl_to_vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_sl_to_vl(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %10, i32 %11)
  store %struct.qib_ibport* %12, %struct.qib_ibport** %7, align 8
  %13 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %14 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @memset(i64 %19, i32 0, i32 8)
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %22 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IB_PORT_SL_MAP_SUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %30 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %31 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %66

34:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %62, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %38 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %44 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 4
  %51 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %52 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %50, %58
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 2
  store i32 %64, i32* %9, align 4
  br label %35

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %68 = call i32 @reply(%struct.ib_smp* %67)
  ret i32 %68
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
