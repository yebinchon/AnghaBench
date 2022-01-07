; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_mbx.c_pf2vf_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_mbx.c_pf2vf_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, i32 }
%struct.nitrox_vfdev = type { i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%union.mbox_msg = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@__NDEV_READY = common dso_local global i32 0, align 4
@__NDEV_NOT_READY = common dso_local global i32 0, align 4
@MBX_MSG_TYPE_NOP = common dso_local global i64 0, align 8
@MBX_MSG_TYPE_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*, %struct.nitrox_vfdev*)* @pf2vf_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf2vf_send_response(%struct.nitrox_device* %0, %struct.nitrox_vfdev* %1) #0 {
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.nitrox_vfdev*, align 8
  %5 = alloca %union.mbox_msg, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store %struct.nitrox_vfdev* %1, %struct.nitrox_vfdev** %4, align 8
  %6 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %7 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %union.mbox_msg* %5 to i64*
  store i64 %9, i64* %10, align 8
  %11 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %12 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %49 [
    i32 129, label %15
    i32 128, label %20
    i32 131, label %31
    i32 130, label %42
  ]

15:                                               ; preds = %2
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %17 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.mbox_msg* %5 to i32*
  store i32 %18, i32* %19, align 8
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %22 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %26 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %28 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %27, i32 0, i32 3
  %29 = load i32, i32* @__NDEV_READY, align 4
  %30 = call i32 @atomic_set(i32* %28, i32 %29)
  br label %52

31:                                               ; preds = %2
  %32 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %33 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.mbox_msg* %5 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %38 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %union.mbox_msg* %5 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %44 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %43, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %46 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %45, i32 0, i32 3
  %47 = load i32, i32* @__NDEV_NOT_READY, align 4
  %48 = call i32 @atomic_set(i32* %46, i32 %47)
  br label %52

49:                                               ; preds = %2
  %50 = load i64, i64* @MBX_MSG_TYPE_NOP, align 8
  %51 = bitcast %union.mbox_msg* %5 to i64*
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %42, %31, %20, %15
  %53 = bitcast %union.mbox_msg* %5 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MBX_MSG_TYPE_NOP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %74

58:                                               ; preds = %52
  %59 = load i64, i64* @MBX_MSG_TYPE_ACK, align 8
  %60 = bitcast %union.mbox_msg* %5 to i64*
  store i64 %59, i64* %60, align 8
  %61 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %62 = bitcast %union.mbox_msg* %5 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %65 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pf2vf_write_mbox(%struct.nitrox_device* %61, i64 %63, i32 %66)
  %68 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %69 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %72 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %71, i32 0, i32 0
  %73 = call i32 @atomic64_inc(i32* %72)
  br label %74

74:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pf2vf_write_mbox(%struct.nitrox_device*, i64, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
