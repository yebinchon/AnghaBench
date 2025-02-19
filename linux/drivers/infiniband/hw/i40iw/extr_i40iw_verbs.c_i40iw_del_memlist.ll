; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_del_memlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_del_memlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_mr = type { i32, %struct.i40iw_pbl }
%struct.i40iw_pbl = type { i32, i32 }
%struct.i40iw_ucontext = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_mr*, %struct.i40iw_ucontext*)* @i40iw_del_memlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_del_memlist(%struct.i40iw_mr* %0, %struct.i40iw_ucontext* %1) #0 {
  %3 = alloca %struct.i40iw_mr*, align 8
  %4 = alloca %struct.i40iw_ucontext*, align 8
  %5 = alloca %struct.i40iw_pbl*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_mr* %0, %struct.i40iw_mr** %3, align 8
  store %struct.i40iw_ucontext* %1, %struct.i40iw_ucontext** %4, align 8
  %7 = load %struct.i40iw_mr*, %struct.i40iw_mr** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %7, i32 0, i32 1
  store %struct.i40iw_pbl* %8, %struct.i40iw_pbl** %5, align 8
  %9 = load %struct.i40iw_mr*, %struct.i40iw_mr** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %52 [
    i32 129, label %12
    i32 128, label %32
  ]

12:                                               ; preds = %2
  %13 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %4, align 8
  %14 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %5, align 8
  %18 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %24, i32 0, i32 1
  %26 = call i32 @list_del(i32* %25)
  br label %27

27:                                               ; preds = %21, %12
  %28 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %4, align 8
  %29 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %5, align 8
  %38 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %5, align 8
  %43 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %5, align 8
  %45 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %44, i32 0, i32 1
  %46 = call i32 @list_del(i32* %45)
  br label %47

47:                                               ; preds = %41, %32
  %48 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %4, align 8
  %49 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %47, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
