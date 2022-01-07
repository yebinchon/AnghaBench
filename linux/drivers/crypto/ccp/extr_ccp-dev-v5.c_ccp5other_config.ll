; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5other_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5other_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i64 }

@CMD5_TRNG_CTL_OFFSET = common dso_local global i64 0, align 8
@CMD5_CONFIG_0_OFFSET = common dso_local global i64 0, align 8
@TRNG_OUT_REG = common dso_local global i64 0, align 8
@CMD5_AES_MASK_OFFSET = common dso_local global i64 0, align 8
@CMD5_QUEUE_MASK_OFFSET = common dso_local global i64 0, align 8
@CMD5_QUEUE_PRIO_OFFSET = common dso_local global i64 0, align 8
@CMD5_CMD_TIMEOUT_OFFSET = common dso_local global i64 0, align 8
@LSB_PRIVATE_MASK_LO_OFFSET = common dso_local global i64 0, align 8
@LSB_PRIVATE_MASK_HI_OFFSET = common dso_local global i64 0, align 8
@CMD5_CLK_GATE_CTL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_device*)* @ccp5other_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp5other_config(%struct.ccp_device* %0) #0 {
  %2 = alloca %struct.ccp_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %2, align 8
  %5 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CMD5_TRNG_CTL_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @iowrite32(i32 77143, i64 %9)
  %11 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CMD5_CONFIG_0_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite32(i32 3, i64 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 12
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TRNG_OUT_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @ioread32(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %29 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CMD5_AES_MASK_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %39 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMD5_QUEUE_MASK_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @iowrite32(i32 31, i64 %42)
  %44 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %45 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CMD5_QUEUE_PRIO_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @iowrite32(i32 23405, i64 %48)
  %50 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %51 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CMD5_CMD_TIMEOUT_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @iowrite32(i32 0, i64 %54)
  %56 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %57 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LSB_PRIVATE_MASK_LO_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32(i32 1073741823, i64 %60)
  %62 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %63 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LSB_PRIVATE_MASK_HI_OFFSET, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @iowrite32(i32 1023, i64 %66)
  %68 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %69 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CMD5_CLK_GATE_CTL_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @iowrite32(i32 1083427, i64 %72)
  %74 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %75 = call i32 @ccp5_config(%struct.ccp_device* %74)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @ccp5_config(%struct.ccp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
