; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_reset_to_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_reset_to_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cm_id_private = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IB_CM_IDLE = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_id_private*)* @cm_reset_to_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_reset_to_idle(%struct.cm_id_private* %0) #0 {
  %2 = alloca %struct.cm_id_private*, align 8
  %3 = alloca i64, align 8
  store %struct.cm_id_private* %0, %struct.cm_id_private** %2, align 8
  %4 = load i32, i32* @IB_CM_IDLE, align 4
  %5 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %6 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %9 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), i64 %13)
  %15 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %16 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @cm_cleanup_timewait(i32* %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), i64 %19)
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %22 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  %26 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cm_cleanup_timewait(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
