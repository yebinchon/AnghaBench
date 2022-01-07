; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rl.c_pblk_rl_user_may_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rl.c_pblk_rl_user_may_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_rl = type { i32, i32, i32 }

@NVM_IO_ERR = common dso_local global i32 0, align 4
@NVM_IO_REQUEUE = common dso_local global i32 0, align 4
@NVM_IO_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_rl_user_may_insert(%struct.pblk_rl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk_rl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pblk_rl* %0, %struct.pblk_rl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pblk_rl*, %struct.pblk_rl** %4, align 8
  %9 = getelementptr inbounds %struct.pblk_rl, %struct.pblk_rl* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pblk_rl*, %struct.pblk_rl** %4, align 8
  %12 = getelementptr inbounds %struct.pblk_rl, %struct.pblk_rl* %11, i32 0, i32 1
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @NVM_IO_ERR, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pblk_rl*, %struct.pblk_rl** %4, align 8
  %29 = getelementptr inbounds %struct.pblk_rl, %struct.pblk_rl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @NVM_IO_REQUEUE, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @NVM_IO_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
