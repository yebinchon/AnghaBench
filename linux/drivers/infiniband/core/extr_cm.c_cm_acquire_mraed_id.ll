; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_acquire_mraed_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_acquire_mraed_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32 }
%struct.cm_mra_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_id_private* (%struct.cm_mra_msg*)* @cm_acquire_mraed_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_id_private* @cm_acquire_mraed_id(%struct.cm_mra_msg* %0) #0 {
  %2 = alloca %struct.cm_id_private*, align 8
  %3 = alloca %struct.cm_mra_msg*, align 8
  store %struct.cm_mra_msg* %0, %struct.cm_mra_msg** %3, align 8
  %4 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %3, align 8
  %5 = call i32 @cm_mra_get_msg_mraed(%struct.cm_mra_msg* %4)
  switch i32 %5, label %19 [
    i32 128, label %6
    i32 129, label %11
    i32 130, label %11
  ]

6:                                                ; preds = %1
  %7 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %3, align 8
  %8 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cm_id_private* @cm_acquire_id(i32 %9, i32 0)
  store %struct.cm_id_private* %10, %struct.cm_id_private** %2, align 8
  br label %20

11:                                               ; preds = %1, %1
  %12 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %3, align 8
  %13 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %3, align 8
  %16 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cm_id_private* @cm_acquire_id(i32 %14, i32 %17)
  store %struct.cm_id_private* %18, %struct.cm_id_private** %2, align 8
  br label %20

19:                                               ; preds = %1
  store %struct.cm_id_private* null, %struct.cm_id_private** %2, align 8
  br label %20

20:                                               ; preds = %19, %11, %6
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  ret %struct.cm_id_private* %21
}

declare dso_local i32 @cm_mra_get_msg_mraed(%struct.cm_mra_msg*) #1

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
