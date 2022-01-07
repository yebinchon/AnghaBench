; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_notify = type { i64, i32*, i32, i32, i64, %struct.nvkm_event* }
%struct.nvkm_event = type { i32, i32 }

@NVKM_NOTIFY_WORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_notify_send(%struct.nvkm_notify* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_notify*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_event*, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_notify* %0, %struct.nvkm_notify** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %9, i32 0, i32 5
  %11 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  store %struct.nvkm_event* %11, %struct.nvkm_event** %7, align 8
  %12 = load %struct.nvkm_event*, %struct.nvkm_event** %7, align 8
  %13 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %12, i32 0, i32 1
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.nvkm_event*, %struct.nvkm_event** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.nvkm_event*, %struct.nvkm_event** %7, align 8
  %32 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %67

35:                                               ; preds = %3
  %36 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %37 = call i32 @nvkm_notify_put_locked(%struct.nvkm_notify* %36)
  %38 = load %struct.nvkm_event*, %struct.nvkm_event** %7, align 8
  %39 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* @NVKM_NOTIFY_WORK, align 4
  %43 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %49 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %56 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %55, i32 0, i32 2
  %57 = call i32 @schedule_work(i32* %56)
  br label %67

58:                                               ; preds = %35
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %62 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %64 = call i32 @nvkm_notify_func(%struct.nvkm_notify* %63)
  %65 = load %struct.nvkm_notify*, %struct.nvkm_notify** %4, align 8
  %66 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %30, %58, %47
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvkm_notify_put_locked(%struct.nvkm_notify*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nvkm_notify_func(%struct.nvkm_notify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
