; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_process_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_process_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i32, i32 }
%struct.cqp_commands_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_process_bh(%struct.i40iw_sc_dev* %0) #0 {
  %2 = alloca %struct.i40iw_sc_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cqp_commands_info*, align 8
  %5 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  br label %10

10:                                               ; preds = %35, %1
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i40iw_ring_full(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %10
  %23 = phi i1 [ false, %10 ], [ %21, %15 ]
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %25, i32 0, i32 1
  %27 = call i64 @i40iw_remove_head(i32* %26)
  %28 = inttoptr i64 %27 to %struct.cqp_commands_info*
  store %struct.cqp_commands_info* %28, %struct.cqp_commands_info** %4, align 8
  %29 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %30 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %31 = call i32 @i40iw_exec_cqp_cmd(%struct.i40iw_sc_dev* %29, %struct.cqp_commands_info* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %36

35:                                               ; preds = %24
  br label %10

36:                                               ; preds = %34, %22
  %37 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @i40iw_ring_full(i32) #1

declare dso_local i64 @i40iw_remove_head(i32*) #1

declare dso_local i32 @i40iw_exec_cqp_cmd(%struct.i40iw_sc_dev*, %struct.cqp_commands_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
