; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_process_cqp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_process_cqp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i32, i32 }
%struct.cqp_commands_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_process_cqp_cmd(%struct.i40iw_sc_dev* %0, %struct.cqp_commands_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.cqp_commands_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store %struct.cqp_commands_info* %1, %struct.cqp_commands_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 1
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i40iw_ring_full(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %23 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %24 = call i32 @i40iw_exec_cqp_cmd(%struct.i40iw_sc_dev* %22, %struct.cqp_commands_info* %23)
  store i32 %24, i32* %5, align 4
  br label %31

25:                                               ; preds = %15, %2
  %26 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %27 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %26, i32 0, i32 0
  %28 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @i40iw_ring_full(i32) #1

declare dso_local i32 @i40iw_exec_cqp_cmd(%struct.i40iw_sc_dev*, %struct.cqp_commands_info*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
