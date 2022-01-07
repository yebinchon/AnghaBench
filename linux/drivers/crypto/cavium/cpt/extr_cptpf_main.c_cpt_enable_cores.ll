; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_enable_cores.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_enable_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32, i32 }

@AE_TYPES = common dso_local global i64 0, align 8
@CSR_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_device*, i32, i64)* @cpt_enable_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_enable_cores(%struct.cpt_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.cpt_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpt_device* %0, %struct.cpt_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @AE_TYPES, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %14 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %12, %15
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %19 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CPTX_PF_EXE_CTL(i32 0)
  %22 = call i32 @cpt_read_csr64(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %24 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CPTX_PF_EXE_CTL(i32 0)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @cpt_write_csr64(i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* @CSR_DELAY, align 4
  %32 = call i32 @udelay(i32 %31)
  ret void
}

declare dso_local i32 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_PF_EXE_CTL(i32) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
