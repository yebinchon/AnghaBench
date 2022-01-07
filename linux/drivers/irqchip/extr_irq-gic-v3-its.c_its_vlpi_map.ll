; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vlpi_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vlpi_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.its_cmd_info = type { %struct.its_vlpi_map* }
%struct.its_vlpi_map = type { i64, i32 }
%struct.its_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.its_vlpi_map*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.its_cmd_info*)* @its_vlpi_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vlpi_map(%struct.irq_data* %0, %struct.its_cmd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.its_cmd_info*, align 8
  %6 = alloca %struct.its_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.its_vlpi_map*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.its_cmd_info* %1, %struct.its_cmd_info** %5, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.its_device* %11, %struct.its_device** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call i64 @its_get_event_id(%struct.irq_data* %12)
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %15 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %14, i32 0, i32 0
  %16 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %15, align 8
  %17 = icmp ne %struct.its_vlpi_map* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %127

21:                                               ; preds = %2
  %22 = load %struct.its_device*, %struct.its_device** %6, align 8
  %23 = getelementptr inbounds %struct.its_device, %struct.its_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.its_device*, %struct.its_device** %6, align 8
  %27 = getelementptr inbounds %struct.its_device, %struct.its_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %21
  %32 = load %struct.its_device*, %struct.its_device** %6, align 8
  %33 = getelementptr inbounds %struct.its_device, %struct.its_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.its_vlpi_map* @kcalloc(i32 %35, i32 16, i32 %36)
  store %struct.its_vlpi_map* %37, %struct.its_vlpi_map** %9, align 8
  %38 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %9, align 8
  %39 = icmp ne %struct.its_vlpi_map* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %121

43:                                               ; preds = %31
  %44 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %45 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %44, i32 0, i32 0
  %46 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %45, align 8
  %47 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.its_device*, %struct.its_device** %6, align 8
  %50 = getelementptr inbounds %struct.its_device, %struct.its_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %9, align 8
  %53 = load %struct.its_device*, %struct.its_device** %6, align 8
  %54 = getelementptr inbounds %struct.its_device, %struct.its_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store %struct.its_vlpi_map* %52, %struct.its_vlpi_map** %55, align 8
  br label %71

56:                                               ; preds = %21
  %57 = load %struct.its_device*, %struct.its_device** %6, align 8
  %58 = getelementptr inbounds %struct.its_device, %struct.its_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %62 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %61, i32 0, i32 0
  %63 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %62, align 8
  %64 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %121

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.its_device*, %struct.its_device** %6, align 8
  %73 = getelementptr inbounds %struct.its_device, %struct.its_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %75, i64 %76
  %78 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %79 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %78, i32 0, i32 0
  %80 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %79, align 8
  %81 = bitcast %struct.its_vlpi_map* %77 to i8*
  %82 = bitcast %struct.its_vlpi_map* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  %83 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %84 = call i64 @irqd_is_forwarded_to_vcpu(%struct.irq_data* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load %struct.its_device*, %struct.its_device** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @its_send_vmovi(%struct.its_device* %87, i64 %88)
  br label %120

90:                                               ; preds = %71
  %91 = load %struct.its_device*, %struct.its_device** %6, align 8
  %92 = getelementptr inbounds %struct.its_device, %struct.its_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %95 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %94, i32 0, i32 0
  %96 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %95, align 8
  %97 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @its_map_vm(i32 %93, i64 %98)
  %100 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %101 = call i32 @irqd_set_forwarded_to_vcpu(%struct.irq_data* %100)
  %102 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %103 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %104 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %103, i32 0, i32 0
  %105 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %104, align 8
  %106 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @lpi_write_config(%struct.irq_data* %102, i32 255, i32 %107)
  %109 = load %struct.its_device*, %struct.its_device** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @its_send_discard(%struct.its_device* %109, i64 %110)
  %112 = load %struct.its_device*, %struct.its_device** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @its_send_vmapti(%struct.its_device* %112, i64 %113)
  %115 = load %struct.its_device*, %struct.its_device** %6, align 8
  %116 = getelementptr inbounds %struct.its_device, %struct.its_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %90, %86
  br label %121

121:                                              ; preds = %120, %67, %40
  %122 = load %struct.its_device*, %struct.its_device** %6, align 8
  %123 = getelementptr inbounds %struct.its_device, %struct.its_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %18
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.its_vlpi_map* @kcalloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @irqd_is_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local i32 @its_send_vmovi(%struct.its_device*, i64) #1

declare dso_local i32 @its_map_vm(i32, i64) #1

declare dso_local i32 @irqd_set_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local i32 @lpi_write_config(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @its_send_discard(%struct.its_device*, i64) #1

declare dso_local i32 @its_send_vmapti(%struct.its_device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
