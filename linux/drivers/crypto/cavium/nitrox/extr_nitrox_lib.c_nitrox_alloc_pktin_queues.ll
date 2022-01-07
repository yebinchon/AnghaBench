; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_alloc_pktin_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_alloc_pktin_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, %struct.nitrox_cmdq*, i32 }
%struct.nitrox_cmdq = type { i32, i32, i8*, i8*, %struct.nitrox_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PKTIN_Q_ALIGN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_device*)* @nitrox_alloc_pktin_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_alloc_pktin_queues(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_cmdq*, align 8
  %7 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  %8 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %9 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %13 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.nitrox_cmdq* @kcalloc_node(i32 %10, i32 32, i32 %11, i32 %14)
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %17 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %16, i32 0, i32 1
  store %struct.nitrox_cmdq* %15, %struct.nitrox_cmdq** %17, align 8
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %19 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %18, i32 0, i32 1
  %20 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %19, align 8
  %21 = icmp ne %struct.nitrox_cmdq* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %76

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %68, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %29 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %34 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %33, i32 0, i32 1
  %35 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %35, i64 %37
  store %struct.nitrox_cmdq* %38, %struct.nitrox_cmdq** %6, align 8
  %39 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %40 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %41 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %40, i32 0, i32 4
  store %struct.nitrox_device* %39, %struct.nitrox_device** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %44 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %46 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %45, i32 0, i32 1
  store i32 4, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @NPS_PKT_IN_INSTR_BAOFF_DBELLX(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @NITROX_CSR_ADDR(%struct.nitrox_device* %49, i32 %50)
  %52 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %53 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @NPS_PKT_SLC_CNTSX(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @NITROX_CSR_ADDR(%struct.nitrox_device* %56, i32 %57)
  %59 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %60 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %6, align 8
  %62 = load i32, i32* @PKTIN_Q_ALIGN_BYTES, align 4
  %63 = call i32 @nitrox_cmdq_init(%struct.nitrox_cmdq* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %32
  br label %72

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %26

71:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %76

72:                                               ; preds = %66
  %73 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %74 = call i32 @nitrox_free_pktin_queues(%struct.nitrox_device* %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %71, %22
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.nitrox_cmdq* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @NPS_PKT_IN_INSTR_BAOFF_DBELLX(i32) #1

declare dso_local i8* @NITROX_CSR_ADDR(%struct.nitrox_device*, i32) #1

declare dso_local i32 @NPS_PKT_SLC_CNTSX(i32) #1

declare dso_local i32 @nitrox_cmdq_init(%struct.nitrox_cmdq*, i32) #1

declare dso_local i32 @nitrox_free_pktin_queues(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
