; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_force_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_force_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { %struct.ipu_image_convert_chan* }
%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_run*, i32 }
%struct.ipu_image_convert_run = type { i32, i32, %struct.ipu_image_convert_ctx* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_image_convert_ctx*)* @force_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_abort(%struct.ipu_image_convert_ctx* %0) #0 {
  %2 = alloca %struct.ipu_image_convert_ctx*, align 8
  %3 = alloca %struct.ipu_image_convert_chan*, align 8
  %4 = alloca %struct.ipu_image_convert_run*, align 8
  %5 = alloca i64, align 8
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %2, align 8
  %6 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %6, i32 0, i32 0
  %8 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %7, align 8
  store %struct.ipu_image_convert_chan* %8, %struct.ipu_image_convert_chan** %3, align 8
  %9 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %14 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %13, i32 0, i32 1
  %15 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %14, align 8
  store %struct.ipu_image_convert_run* %15, %struct.ipu_image_convert_run** %4, align 8
  %16 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %4, align 8
  %17 = icmp ne %struct.ipu_image_convert_run* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %4, align 8
  %20 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %19, i32 0, i32 2
  %21 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %20, align 8
  %22 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %2, align 8
  %23 = icmp eq %struct.ipu_image_convert_ctx* %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %4, align 8
  %26 = call i32 @convert_stop(%struct.ipu_image_convert_run* %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %4, align 8
  %30 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %4, align 8
  %32 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %31, i32 0, i32 0
  %33 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %34 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %33, i32 0, i32 2
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %37 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %36, i32 0, i32 1
  store %struct.ipu_image_convert_run* null, %struct.ipu_image_convert_run** %37, align 8
  %38 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %39 = call i32 @run_next(%struct.ipu_image_convert_chan* %38)
  br label %40

40:                                               ; preds = %24, %18, %1
  %41 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %42 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %46 = call i32 @empty_done_q(%struct.ipu_image_convert_chan* %45)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @convert_stop(%struct.ipu_image_convert_run*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @run_next(%struct.ipu_image_convert_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @empty_done_q(%struct.ipu_image_convert_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
