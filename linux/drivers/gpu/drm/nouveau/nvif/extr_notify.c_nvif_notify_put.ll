; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_notify = type { i32, i32, i32 }

@NVIF_NOTIFY_USER = common dso_local global i32 0, align 4
@NVIF_NOTIFY_WORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_notify_put(%struct.nvif_notify* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvif_notify*, align 8
  %4 = alloca i32, align 4
  store %struct.nvif_notify* %0, %struct.nvif_notify** %3, align 8
  %5 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %6 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* @NVIF_NOTIFY_USER, align 4
  %12 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %13 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %12, i32 0, i32 1
  %14 = call i64 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %18 = call i32 @nvif_notify_put_(%struct.nvif_notify* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @NVIF_NOTIFY_WORK, align 4
  %20 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %21 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %26 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %25, i32 0, i32 0
  %27 = call i32 @flush_work(i32* %26)
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nvif_notify_put_(%struct.nvif_notify*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
