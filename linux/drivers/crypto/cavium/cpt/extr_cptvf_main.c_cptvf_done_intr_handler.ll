; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_done_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_done_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.cptvf_wqe = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"No work to schedule for VF (%d)\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cptvf_done_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cptvf_done_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpt_vf*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cptvf_wqe*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cpt_vf*
  store %struct.cpt_vf* %11, %struct.cpt_vf** %6, align 8
  %12 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %13 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  %15 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %16 = call i64 @cptvf_read_vq_done_count(%struct.cpt_vf* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @cptvf_write_vq_done_ack(%struct.cpt_vf* %20, i64 %21)
  %23 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %24 = call %struct.cptvf_wqe* @get_cptvf_vq_wqe(%struct.cpt_vf* %23, i32 0)
  store %struct.cptvf_wqe* %24, %struct.cptvf_wqe** %9, align 8
  %25 = load %struct.cptvf_wqe*, %struct.cptvf_wqe** %9, align 8
  %26 = icmp ne %struct.cptvf_wqe* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %35 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %19
  %40 = load %struct.cptvf_wqe*, %struct.cptvf_wqe** %9, align 8
  %41 = getelementptr inbounds %struct.cptvf_wqe, %struct.cptvf_wqe* %40, i32 0, i32 0
  %42 = call i32 @tasklet_hi_schedule(i32* %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @cptvf_read_vq_done_count(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_write_vq_done_ack(%struct.cpt_vf*, i64) #1

declare dso_local %struct.cptvf_wqe* @get_cptvf_vq_wqe(%struct.cpt_vf*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
