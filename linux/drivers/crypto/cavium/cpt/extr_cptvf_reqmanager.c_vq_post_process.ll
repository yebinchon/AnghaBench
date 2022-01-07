; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_vq_post_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_vq_post_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Request for post processing on invalid pending queue: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_post_process(%struct.cpt_vf* %0, i32 %1) #0 {
  %3 = alloca %struct.cpt_vf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %7 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %11 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %24 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %25 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @process_pending_queue(%struct.cpt_vf* %23, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @process_pending_queue(%struct.cpt_vf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
