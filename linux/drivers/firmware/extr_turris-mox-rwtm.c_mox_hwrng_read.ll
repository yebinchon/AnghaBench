; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_hwrng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_hwrng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.mox_rwtm = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.armada_37xx_rwtm_tx_msg = type { i32*, i32 }

@MBOX_CMD_GET_RANDOM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @mox_hwrng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mox_hwrng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mox_rwtm*, align 8
  %11 = alloca %struct.armada_37xx_rwtm_tx_msg, align 8
  %12 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %14 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mox_rwtm*
  store %struct.mox_rwtm* %16, %struct.mox_rwtm** %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 4096
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 4096, i64* %8, align 8
  br label %20

20:                                               ; preds = %19, %4
  %21 = load i32, i32* @MBOX_CMD_GET_RANDOM, align 4
  %22 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %11, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %11, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %27 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %11, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %28, i32* %31, align 4
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 3
  %34 = and i64 %33, -4
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %20
  %42 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %43 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %42, i32 0, i32 1
  %44 = call i32 @mutex_trylock(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %93

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %20
  %51 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %52 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %56 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mbox_send_message(i32 %57, %struct.armada_37xx_rwtm_tx_msg* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %88

62:                                               ; preds = %54
  %63 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %64 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %63, i32 0, i32 4
  %65 = call i32 @wait_for_completion_interruptible(i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %88

69:                                               ; preds = %62
  %70 = load i32, i32* @MBOX_CMD_GET_RANDOM, align 4
  %71 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %72 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mox_get_status(i32 %70, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %88

79:                                               ; preds = %69
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %82 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @memcpy(i8* %80, i32 %83, i64 %84)
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %79, %78, %68, %61
  %89 = load %struct.mox_rwtm*, %struct.mox_rwtm** %10, align 8
  %90 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %46
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mbox_send_message(i32, %struct.armada_37xx_rwtm_tx_msg*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @mox_get_status(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
