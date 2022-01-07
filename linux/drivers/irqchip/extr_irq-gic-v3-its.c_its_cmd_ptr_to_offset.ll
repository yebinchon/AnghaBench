; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_cmd_ptr_to_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_cmd_ptr_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_node = type { %struct.its_cmd_block* }
%struct.its_cmd_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.its_node*, %struct.its_cmd_block*)* @its_cmd_ptr_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_cmd_ptr_to_offset(%struct.its_node* %0, %struct.its_cmd_block* %1) #0 {
  %3 = alloca %struct.its_node*, align 8
  %4 = alloca %struct.its_cmd_block*, align 8
  store %struct.its_node* %0, %struct.its_node** %3, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %4, align 8
  %5 = load %struct.its_cmd_block*, %struct.its_cmd_block** %4, align 8
  %6 = load %struct.its_node*, %struct.its_node** %3, align 8
  %7 = getelementptr inbounds %struct.its_node, %struct.its_node* %6, i32 0, i32 0
  %8 = load %struct.its_cmd_block*, %struct.its_cmd_block** %7, align 8
  %9 = ptrtoint %struct.its_cmd_block* %5 to i64
  %10 = ptrtoint %struct.its_cmd_block* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
