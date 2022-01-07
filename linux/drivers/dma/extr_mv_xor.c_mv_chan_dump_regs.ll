; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"config       0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"activation   0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"intr cause   0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"intr mask    0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"error cause  0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error addr   0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_chan*)* @mv_chan_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_chan_dump_regs(%struct.mv_xor_chan* %0) #0 {
  %2 = alloca %struct.mv_xor_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %2, align 8
  %4 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %5 = call i32 @XOR_CONFIG(%struct.mv_xor_chan* %4)
  %6 = call i32 @readl_relaxed(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %8 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @dev_err(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %12 = call i32 @XOR_ACTIVATION(%struct.mv_xor_chan* %11)
  %13 = call i32 @readl_relaxed(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %15 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %19 = call i32 @XOR_INTR_CAUSE(%struct.mv_xor_chan* %18)
  %20 = call i32 @readl_relaxed(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %22 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %26 = call i32 @XOR_INTR_MASK(%struct.mv_xor_chan* %25)
  %27 = call i32 @readl_relaxed(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %29 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %33 = call i32 @XOR_ERROR_CAUSE(%struct.mv_xor_chan* %32)
  %34 = call i32 @readl_relaxed(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %36 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %40 = call i32 @XOR_ERROR_ADDR(%struct.mv_xor_chan* %39)
  %41 = call i32 @readl_relaxed(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %43 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @XOR_CONFIG(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mv_chan_to_devp(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_ACTIVATION(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_INTR_CAUSE(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_INTR_MASK(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_ERROR_CAUSE(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_ERROR_ADDR(%struct.mv_xor_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
