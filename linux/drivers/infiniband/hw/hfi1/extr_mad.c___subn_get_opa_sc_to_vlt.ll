; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_sc_to_vlt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_sc_to_vlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_sc_to_vlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_sc_to_vlt(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hfi1_devdata*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @OPA_AM_NBLK(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %23 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %22)
  store %struct.hfi1_devdata* %23, %struct.hfi1_devdata** %17, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %18, align 8
  store i64 16, i64* %19, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %7
  %29 = load i64, i64* %19, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @smp_length_check(i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %7
  %34 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %35 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %36 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %40 = bitcast %struct.opa_smp* %39 to %struct.ib_mad_hdr*
  %41 = call i32 @reply(%struct.ib_mad_hdr* %40)
  store i32 %41, i32* %8, align 4
  br label %59

42:                                               ; preds = %28
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = call i32 @get_sc2vlt_tables(%struct.hfi1_devdata* %43, i8* %44)
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* %19, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %49
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %57 = bitcast %struct.opa_smp* %56 to %struct.ib_mad_hdr*
  %58 = call i32 @reply(%struct.ib_mad_hdr* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %33
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @OPA_AM_NBLK(i32) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @smp_length_check(i64, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @get_sc2vlt_tables(%struct.hfi1_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
