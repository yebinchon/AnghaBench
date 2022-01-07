; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_disable_all_cores.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_disable_all_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CPT_MAX_CORE_GROUPS = common dso_local global i64 0, align 8
@CSR_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cores still busy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_device*)* @cpt_disable_all_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_disable_all_cores(%struct.cpt_device* %0) #0 {
  %2 = alloca %struct.cpt_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %2, align 8
  store i64 100, i64* %4, align 8
  %6 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %7 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @CPT_MAX_CORE_GROUPS, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %16 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @CPTX_PF_GX_EN(i32 0, i64 %18)
  %20 = call i32 @cpt_write_csr64(i32 %17, i32 %19, i32 0)
  %21 = load i32, i32* @CSR_DELAY, align 4
  %22 = call i32 @udelay(i32 %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %28 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CPTX_PF_EXEC_BUSY(i32 0)
  %31 = call i64 @cpt_read_csr64(i32 %29, i32 %30)
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %47, %26
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %39 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CPTX_PF_EXEC_BUSY(i32 0)
  %42 = call i64 @cpt_read_csr64(i32 %40, i32 %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %4, align 8
  %45 = icmp ne i64 %43, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @CSR_DELAY, align 4
  %49 = call i32 @udelay(i32 %48)
  br label %32

50:                                               ; preds = %46, %32
  %51 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %52 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CPTX_PF_EXE_CTL(i32 0)
  %55 = call i32 @cpt_write_csr64(i32 %53, i32 %54, i32 0)
  ret void
}

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

declare dso_local i32 @CPTX_PF_GX_EN(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_PF_EXEC_BUSY(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @CPTX_PF_EXE_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
