; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_queue_resubmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_queue_resubmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32 }
%struct.pblk_c_ctx = type { i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.pblk_c_ctx*)* @pblk_queue_resubmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_queue_resubmit(%struct.pblk* %0, %struct.pblk_c_ctx* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_c_ctx*, align 8
  %5 = alloca %struct.pblk_c_ctx*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_c_ctx* %1, %struct.pblk_c_ctx** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.pblk_c_ctx* @kzalloc(i32 24, i32 %6)
  store %struct.pblk_c_ctx* %7, %struct.pblk_c_ctx** %5, align 8
  %8 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %5, align 8
  %9 = icmp ne %struct.pblk_c_ctx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pblk*, %struct.pblk** %3, align 8
  %30 = getelementptr inbounds %struct.pblk, %struct.pblk* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %32, i32 0, i32 1
  %34 = load %struct.pblk*, %struct.pblk** %3, align 8
  %35 = getelementptr inbounds %struct.pblk, %struct.pblk* %34, i32 0, i32 2
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  %37 = load %struct.pblk*, %struct.pblk** %3, align 8
  %38 = getelementptr inbounds %struct.pblk, %struct.pblk* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.pblk_c_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
