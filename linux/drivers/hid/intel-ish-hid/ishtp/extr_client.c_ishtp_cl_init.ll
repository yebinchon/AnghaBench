; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ishtp_device*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ishtp_device = type { i32 }

@CL_DEF_RX_RING_SIZE = common dso_local global i32 0, align 4
@CL_DEF_TX_RING_SIZE = common dso_local global i32 0, align 4
@CL_TX_PATH_IPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_cl*, %struct.ishtp_device*)* @ishtp_cl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ishtp_cl_init(%struct.ishtp_cl* %0, %struct.ishtp_device* %1) #0 {
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca %struct.ishtp_device*, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %3, align 8
  store %struct.ishtp_device* %1, %struct.ishtp_device** %4, align 8
  %5 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %6 = call i32 @memset(%struct.ishtp_cl* %5, i32 0, i32 88)
  %7 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %8 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %7, i32 0, i32 18
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %11 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %10, i32 0, i32 17
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %14 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %13, i32 0, i32 16
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %17 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %16, i32 0, i32 15
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %20 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %19, i32 0, i32 14
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %23 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %22, i32 0, i32 13
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %26 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %25, i32 0, i32 12
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %29 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %30 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %29, i32 0, i32 11
  store %struct.ishtp_device* %28, %struct.ishtp_device** %30, align 8
  %31 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %32 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %36 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %40 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %44 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* @CL_DEF_RX_RING_SIZE, align 4
  %48 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %49 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @CL_DEF_TX_RING_SIZE, align 4
  %51 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %52 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %54 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %57 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @CL_TX_PATH_IPC, align 4
  %59 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %60 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %62 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %64 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %66 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ishtp_cl*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
