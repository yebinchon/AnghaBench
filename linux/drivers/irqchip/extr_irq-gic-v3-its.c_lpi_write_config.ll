; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_lpi_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_lpi_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.irq_data = type { i32 }
%struct.its_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.its_vlpi_map*, %struct.TYPE_4__* }
%struct.its_vlpi_map = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LPI_PROP_GROUP1 = common dso_local global i32 0, align 4
@gic_rdists = common dso_local global %struct.TYPE_6__* null, align 8
@RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32, i32)* @lpi_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpi_write_config(%struct.irq_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.its_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.its_vlpi_map*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call i64 @irqd_is_forwarded_to_vcpu(%struct.irq_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %17)
  store %struct.its_device* %18, %struct.its_device** %10, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = call i64 @its_get_event_id(%struct.irq_data* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.its_device*, %struct.its_device** %10, align 8
  %22 = getelementptr inbounds %struct.its_device, %struct.its_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @page_address(i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.its_device*, %struct.its_device** %10, align 8
  %29 = getelementptr inbounds %struct.its_device, %struct.its_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %31, i64 %32
  store %struct.its_vlpi_map* %33, %struct.its_vlpi_map** %12, align 8
  %34 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %12, align 8
  %35 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %12, align 8
  %40 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @LPI_PROP_GROUP1, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %12, align 8
  %47 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %57

50:                                               ; preds = %3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gic_rdists, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %55 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %50, %16
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = getelementptr i8, i8* %61, i64 -8192
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %9, align 8
  %64 = load i32, i32* %5, align 4
  %65 = xor i32 %64, -1
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LPI_PROP_GROUP1, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gic_rdists, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %57
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @gic_flush_dcache_to_poc(i32* %82, i32 4)
  br label %87

84:                                               ; preds = %57
  %85 = load i32, i32* @ishst, align 4
  %86 = call i32 @dsb(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i64 @irqd_is_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @gic_flush_dcache_to_poc(i32*, i32) #1

declare dso_local i32 @dsb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
