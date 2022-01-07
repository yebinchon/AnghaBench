; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_notify = type { i32 (%struct.nvif_notify*)*, i32, i32 }

@NVIF_NOTIFY_KEEP = common dso_local global i32 0, align 4
@NVIF_NOTIFY_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvif_notify*, i32)* @nvif_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvif_notify_func(%struct.nvif_notify* %0, i32 %1) #0 {
  %3 = alloca %struct.nvif_notify*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvif_notify* %0, %struct.nvif_notify** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %7 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %6, i32 0, i32 0
  %8 = load i32 (%struct.nvif_notify*)*, i32 (%struct.nvif_notify*)** %7, align 8
  %9 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %10 = call i32 %8(%struct.nvif_notify* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NVIF_NOTIFY_KEEP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @NVIF_NOTIFY_USER, align 4
  %16 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %17 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %16, i32 0, i32 2
  %18 = call i32 @test_and_clear_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %25 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %24, i32 0, i32 1
  %26 = call i32 @atomic_dec(i32* %25)
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.nvif_notify*, %struct.nvif_notify** %3, align 8
  %29 = call i32 @nvif_notify_get_(%struct.nvif_notify* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @nvif_notify_get_(%struct.nvif_notify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
