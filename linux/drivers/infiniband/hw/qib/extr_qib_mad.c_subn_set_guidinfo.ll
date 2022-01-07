; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_guidinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_guidinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.qib_devdata = type { i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { %struct.qib_ibport }
%struct.qib_ibport = type { i32* }

@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_guidinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_guidinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_pportdata*, align 8
  %12 = alloca %struct.qib_ibport*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %14)
  store %struct.qib_devdata* %15, %struct.qib_devdata** %7, align 8
  %16 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %17 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = mul nsw i32 8, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %23 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %30
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 1
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i64 %41
  store %struct.qib_pportdata* %42, %struct.qib_pportdata** %11, align 8
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %44 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %43, i32 0, i32 0
  store %struct.qib_ibport* %44, %struct.qib_ibport** %12, align 8
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %62, %36
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %56 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sub i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %54, i32* %61, align 4
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %45

65:                                               ; preds = %45
  br label %72

66:                                               ; preds = %30, %3
  %67 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %68 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %69 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %65
  %73 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @subn_get_guidinfo(%struct.ib_smp* %73, %struct.ib_device* %74, i32 %75)
  ret i32 %76
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @subn_get_guidinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
