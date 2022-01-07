; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_alloc_aqm_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_alloc_aqm_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, %struct.nitrox_cmdq**, i32 }
%struct.nitrox_cmdq = type { i32, i32, i8*, i8*, %struct.nitrox_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AQM_Q_ALIGN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_device*)* @nitrox_alloc_aqm_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_alloc_aqm_queues(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_cmdq*, align 8
  %7 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %11 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %17 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.nitrox_cmdq* @kzalloc_node(i32 32, i32 %15, i32 %18)
  store %struct.nitrox_cmdq* %19, %struct.nitrox_cmdq** %6, align 8
  %20 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %21 = icmp ne %struct.nitrox_cmdq* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %68

25:                                               ; preds = %14
  %26 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %27 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %28 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %27, i32 0, i32 4
  store %struct.nitrox_device* %26, %struct.nitrox_device** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %31 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %33 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %32, i32 0, i32 1
  store i32 4, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @AQMQ_DRBLX(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @NITROX_CSR_ADDR(%struct.nitrox_device* %36, i32 %37)
  %39 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %40 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @AQMQ_CMD_CNTX(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @NITROX_CSR_ADDR(%struct.nitrox_device* %43, i32 %44)
  %46 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %47 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %49 = load i32, i32* @AQM_Q_ALIGN_BYTES, align 4
  %50 = call i32 @nitrox_cmdq_init(%struct.nitrox_cmdq* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %25
  %54 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %55 = call i32 @kzfree(%struct.nitrox_cmdq* %54)
  br label %68

56:                                               ; preds = %25
  %57 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %58 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %59 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %58, i32 0, i32 1
  %60 = load %struct.nitrox_cmdq**, %struct.nitrox_cmdq*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %60, i64 %62
  store %struct.nitrox_cmdq* %57, %struct.nitrox_cmdq** %63, align 8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %8

67:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %72

68:                                               ; preds = %53, %22
  %69 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %70 = call i32 @nitrox_free_aqm_queues(%struct.nitrox_device* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.nitrox_cmdq* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @AQMQ_DRBLX(i32) #1

declare dso_local i8* @NITROX_CSR_ADDR(%struct.nitrox_device*, i32) #1

declare dso_local i32 @AQMQ_CMD_CNTX(i32) #1

declare dso_local i32 @nitrox_cmdq_init(%struct.nitrox_cmdq*, i32) #1

declare dso_local i32 @kzfree(%struct.nitrox_cmdq*) #1

declare dso_local i32 @nitrox_free_aqm_queues(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
