; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_init_worker_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_init_worker_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, %struct.cptvf_wqe_info*, %struct.pci_dev* }
%struct.cptvf_wqe_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cpt_vf*, i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Creating VQ worker threads (%d)\0A\00", align 1
@vq_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_vf*)* @init_worker_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_worker_threads(%struct.cpt_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpt_vf*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.cptvf_wqe_info*, align 8
  %6 = alloca i32, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %3, align 8
  %7 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %8 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cptvf_wqe_info* @kzalloc(i32 8, i32 %10)
  store %struct.cptvf_wqe_info* %11, %struct.cptvf_wqe_info** %5, align 8
  %12 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %5, align 8
  %13 = icmp ne %struct.cptvf_wqe_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %19 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %26 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %17
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %33 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %5, align 8
  %38 = getelementptr inbounds %struct.cptvf_wqe_info, %struct.cptvf_wqe_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* @vq_work_handler, align 4
  %45 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %5, align 8
  %46 = ptrtoint %struct.cptvf_wqe_info* %45 to i32
  %47 = call i32 @tasklet_init(i32* %43, i32 %44, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %5, align 8
  %50 = getelementptr inbounds %struct.cptvf_wqe_info, %struct.cptvf_wqe_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %57 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %5, align 8
  %58 = getelementptr inbounds %struct.cptvf_wqe_info, %struct.cptvf_wqe_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.cpt_vf* %56, %struct.cpt_vf** %63, align 8
  br label %64

64:                                               ; preds = %36
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %30

67:                                               ; preds = %30
  %68 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %5, align 8
  %69 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %70 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %69, i32 0, i32 1
  store %struct.cptvf_wqe_info* %68, %struct.cptvf_wqe_info** %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.cptvf_wqe_info* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
