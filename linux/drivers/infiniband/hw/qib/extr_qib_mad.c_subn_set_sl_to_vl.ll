; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_sl_to_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_sl_to_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64 }
%struct.ib_device = type { i32 }
%struct.qib_ibport = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_PORT_SL_MAP_SUP = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@_QIB_EVENT_SL2VL_CHANGE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_sl_to_vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_sl_to_vl(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %11, i32 %12)
  store %struct.qib_ibport* %13, %struct.qib_ibport** %8, align 8
  %14 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %19 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IB_PORT_SL_MAP_SUP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %27 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %28 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %32 = call i32 @reply(%struct.ib_smp* %31)
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %37 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  %45 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %46 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %55 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 2
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  br label %34

66:                                               ; preds = %34
  %67 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %67, i32 %68)
  %70 = call i32 @ppd_from_ibp(%struct.qib_ibport* %69)
  %71 = load i32, i32* @_QIB_EVENT_SL2VL_CHANGE_BIT, align 4
  %72 = call i32 @qib_set_uevent_bits(i32 %70, i32 %71)
  %73 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @subn_get_sl_to_vl(%struct.ib_smp* %73, %struct.ib_device* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %66, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qib_set_uevent_bits(i32, i32) #1

declare dso_local i32 @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @subn_get_sl_to_vl(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
