; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_notify = type { i32, i32 }

@NVIF_NOTIFY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_notify_get(%struct.nvif_notify* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvif_notify*, align 8
  store %struct.nvif_notify* %0, %struct.nvif_notify** %3, align 8
  %4 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %5 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @NVIF_NOTIFY_USER, align 4
  %11 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %12 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %11, i32 0, i32 0
  %13 = call i32 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %17 = call i32 @nvif_notify_get_(%struct.nvif_notify* %16)
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nvif_notify_get_(%struct.nvif_notify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
