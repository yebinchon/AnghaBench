; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v4.c_its_map_vlpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v4.c_its_map_vlpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_vlpi_map = type { i32 }
%struct.its_cmd_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.its_vlpi_map* }

@MAP_VLPI = common dso_local global i32 0, align 4
@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @its_map_vlpi(i32 %0, %struct.its_vlpi_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.its_vlpi_map*, align 8
  %5 = alloca %struct.its_cmd_info, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.its_vlpi_map* %1, %struct.its_vlpi_map** %4, align 8
  %7 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %5, i32 0, i32 0
  %8 = bitcast %struct.TYPE_2__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %5, i32 0, i32 1
  %10 = load i32, i32* @MAP_VLPI, align 4
  store i32 %10, i32* %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %13 = call i32 @irq_set_status_flags(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @irq_set_vcpu_affinity(i32 %14, %struct.its_cmd_info* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %21 = call i32 @irq_clear_status_flags(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #2

declare dso_local i32 @irq_set_vcpu_affinity(i32, %struct.its_cmd_info*) #2

declare dso_local i32 @irq_clear_status_flags(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
