; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cleanup_worker_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cleanup_worker_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.cptvf_wqe_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cleaning VQ worker threads (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*)* @cleanup_worker_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_worker_threads(%struct.cpt_vf* %0) #0 {
  %2 = alloca %struct.cpt_vf*, align 8
  %3 = alloca %struct.cptvf_wqe_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %2, align 8
  %6 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %7 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %10 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.cptvf_wqe_info*
  store %struct.cptvf_wqe_info* %12, %struct.cptvf_wqe_info** %3, align 8
  %13 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %3, align 8
  %14 = icmp ne %struct.cptvf_wqe_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %18 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %25 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %32 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %3, align 8
  %37 = getelementptr inbounds %struct.cptvf_wqe_info, %struct.cptvf_wqe_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @tasklet_kill(i32* %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %3, align 8
  %49 = call i32 @kzfree(%struct.cptvf_wqe_info* %48)
  %50 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %51 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %15
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kzfree(%struct.cptvf_wqe_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
