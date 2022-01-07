; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_nitrox_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_nitrox_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_softreq = type { i32, %struct.nitrox_device*, %struct.nitrox_cmdq* }
%struct.nitrox_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nitrox_cmdq = type { i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_softreq*)* @nitrox_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_enqueue_request(%struct.nitrox_softreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_softreq*, align 8
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca %struct.nitrox_device*, align 8
  store %struct.nitrox_softreq* %0, %struct.nitrox_softreq** %3, align 8
  %6 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %7 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %6, i32 0, i32 2
  %8 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %7, align 8
  store %struct.nitrox_cmdq* %8, %struct.nitrox_cmdq** %4, align 8
  %9 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %10 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %9, i32 0, i32 1
  %11 = load %struct.nitrox_device*, %struct.nitrox_device** %10, align 8
  store %struct.nitrox_device* %11, %struct.nitrox_device** %5, align 8
  %12 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %13 = call i32 @post_backlog_cmds(%struct.nitrox_cmdq* %12)
  %14 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %16 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cmdq_full(%struct.nitrox_cmdq* %14, i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %23 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %30 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @atomic64_inc(i32* %31)
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %37 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %38 = call i32 @backlog_list_add(%struct.nitrox_softreq* %36, %struct.nitrox_cmdq* %37)
  %39 = load i32, i32* @EINPROGRESS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %1
  %42 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %3, align 8
  %43 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %44 = call i32 @post_se_instr(%struct.nitrox_softreq* %42, %struct.nitrox_cmdq* %43)
  %45 = load i32, i32* @EINPROGRESS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %35, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @post_backlog_cmds(%struct.nitrox_cmdq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cmdq_full(%struct.nitrox_cmdq*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @backlog_list_add(%struct.nitrox_softreq*, %struct.nitrox_cmdq*) #1

declare dso_local i32 @post_se_instr(%struct.nitrox_softreq*, %struct.nitrox_cmdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
