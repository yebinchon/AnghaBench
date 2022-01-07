; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_post_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_post_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd_block = type { i32 }
%struct.its_node = type { %struct.its_cmd_block*, i64 }

@GITS_CWRITER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_cmd_block* (%struct.its_node*)* @its_post_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_cmd_block* @its_post_commands(%struct.its_node* %0) #0 {
  %2 = alloca %struct.its_node*, align 8
  %3 = alloca i32, align 4
  store %struct.its_node* %0, %struct.its_node** %2, align 8
  %4 = load %struct.its_node*, %struct.its_node** %2, align 8
  %5 = load %struct.its_node*, %struct.its_node** %2, align 8
  %6 = getelementptr inbounds %struct.its_node, %struct.its_node* %5, i32 0, i32 0
  %7 = load %struct.its_cmd_block*, %struct.its_cmd_block** %6, align 8
  %8 = call i32 @its_cmd_ptr_to_offset(%struct.its_node* %4, %struct.its_cmd_block* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.its_node*, %struct.its_node** %2, align 8
  %11 = getelementptr inbounds %struct.its_node, %struct.its_node* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GITS_CWRITER, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %9, i64 %14)
  %16 = load %struct.its_node*, %struct.its_node** %2, align 8
  %17 = getelementptr inbounds %struct.its_node, %struct.its_node* %16, i32 0, i32 0
  %18 = load %struct.its_cmd_block*, %struct.its_cmd_block** %17, align 8
  ret %struct.its_cmd_block* %18
}

declare dso_local i32 @its_cmd_ptr_to_offset(%struct.its_node*, %struct.its_cmd_block*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
