; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i64 }

@CF_STARTED = common dso_local global i64 0, align 8
@ARB_ARM_ACK = common dso_local global i32 0, align 4
@ARB_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_acf*)* @fsi_master_acf_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_master_acf_terminate(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca %struct.fsi_master_acf*, align 8
  %3 = alloca i64, align 8
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %7 = call i32 @reset_cf(%struct.fsi_master_acf* %6)
  %8 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %9 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CF_STARTED, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @iowrite32(i32 0, i64 %12)
  %14 = load i32, i32* @ARB_ARM_ACK, align 4
  %15 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %16 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARB_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite8(i32 %14, i64 %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @local_irq_restore(i64 %21)
  %23 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %24 = call i32 @release_copro_gpios(%struct.fsi_master_acf* %23)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @reset_cf(%struct.fsi_master_acf*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @release_copro_gpios(%struct.fsi_master_acf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
