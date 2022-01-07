; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cleanup_pending_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cleanup_pending_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Cleaning VQ pending queue (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*)* @cleanup_pending_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_pending_queues(%struct.cpt_vf* %0) #0 {
  %2 = alloca %struct.cpt_vf*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %2, align 8
  %4 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %5 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %4, i32 0, i32 2
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %8 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %16 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %20 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %19, i32 0, i32 0
  %21 = call i32 @free_pending_queues(i32* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @free_pending_queues(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
