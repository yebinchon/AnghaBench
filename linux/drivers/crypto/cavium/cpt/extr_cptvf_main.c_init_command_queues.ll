; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_init_command_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_init_command_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@CPT_INST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to allocate AE command queues (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_vf*, i32)* @init_command_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_command_queues(%struct.cpt_vf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpt_vf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %9 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %12 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %13 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %12, i32 0, i32 1
  %14 = load i32, i32* @CPT_INST_SIZE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @alloc_command_queues(%struct.cpt_vf* %11, i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %23 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @alloc_command_queues(%struct.cpt_vf*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
