; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_post_se_instr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_post_se_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_softreq = type { i32, i32, i32, %struct.nitrox_device* }
%struct.nitrox_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nitrox_cmdq = type { i32, i32, i32, i32, i32* }

@REQ_POSTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_softreq*, %struct.nitrox_cmdq*)* @post_se_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_se_instr(%struct.nitrox_softreq* %0, %struct.nitrox_cmdq* %1) #0 {
  %3 = alloca %struct.nitrox_softreq*, align 8
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca %struct.nitrox_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.nitrox_softreq* %0, %struct.nitrox_softreq** %3, align 8
  store %struct.nitrox_cmdq* %1, %struct.nitrox_cmdq** %4, align 8
  %8 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %9 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %8, i32 0, i32 3
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %9, align 8
  store %struct.nitrox_device* %10, %struct.nitrox_device** %5, align 8
  %11 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %12 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %15 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %18 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %22 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %29 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %28, i32 0, i32 2
  %30 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %31 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32* %27, i32* %29, i32 %32)
  %34 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %35 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %34, i32 0, i32 1
  %36 = load i32, i32* @REQ_POSTED, align 4
  %37 = call i32 @atomic_set(i32* %35, i32 %36)
  %38 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %39 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %40 = call i32 @response_list_add(%struct.nitrox_softreq* %38, %struct.nitrox_cmdq* %39)
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %43 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = call i32 (...) @dma_wmb()
  %45 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %46 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @writeq(i32 1, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %51 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @incr_index(i32 %49, i32 1, i32 %52)
  %54 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %55 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %57 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %60 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @atomic64_inc(i32* %61)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @response_list_add(%struct.nitrox_softreq*, %struct.nitrox_cmdq*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @incr_index(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
