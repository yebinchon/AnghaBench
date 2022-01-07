; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cep_set_inuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cep_set_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_cep*)* @siw_cep_set_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_cep_set_inuse(%struct.siw_cep* %0) #0 {
  %2 = alloca %struct.siw_cep*, align 8
  %3 = alloca i64, align 8
  store %struct.siw_cep* %0, %struct.siw_cep** %2, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %6 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %10 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %15 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %14, i32 0, i32 1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %19 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %22 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event_interruptible(i32 %20, i32 %26)
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %13
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @flush_signals(i32 %32)
  br label %34

34:                                               ; preds = %31, %13
  br label %4

35:                                               ; preds = %4
  %36 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %37 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %39 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %38, i32 0, i32 1
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %35
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
