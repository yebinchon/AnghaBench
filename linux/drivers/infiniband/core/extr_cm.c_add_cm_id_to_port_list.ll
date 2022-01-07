; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_add_cm_id_to_port_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_add_cm_id_to_port_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cm_id_private = type { i32, %struct.cm_av, i32, %struct.cm_av }
%struct.cm_av = type { i32 }
%struct.cm_port = type { i32, i32 }

@cm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_id_private*, %struct.cm_av*, %struct.cm_port*)* @add_cm_id_to_port_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cm_id_to_port_list(%struct.cm_id_private* %0, %struct.cm_av* %1, %struct.cm_port* %2) #0 {
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_av*, align 8
  %6 = alloca %struct.cm_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store %struct.cm_av* %1, %struct.cm_av** %5, align 8
  store %struct.cm_port* %2, %struct.cm_port** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %9)
  %11 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %12 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %11, i32 0, i32 3
  %13 = load %struct.cm_av*, %struct.cm_av** %5, align 8
  %14 = icmp eq %struct.cm_av* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %17 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %16, i32 0, i32 2
  %18 = load %struct.cm_port*, %struct.cm_port** %6, align 8
  %19 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 1
  %24 = load %struct.cm_av*, %struct.cm_av** %5, align 8
  %25 = icmp eq %struct.cm_av* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %28 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %27, i32 0, i32 0
  %29 = load %struct.cm_port*, %struct.cm_port** %6, align 8
  %30 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
