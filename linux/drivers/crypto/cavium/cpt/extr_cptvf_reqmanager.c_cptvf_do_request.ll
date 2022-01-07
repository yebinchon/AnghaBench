; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_cptvf_do_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_cptvf_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_request_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cpt_vf = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"CPT Device is not ready\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SE_TYPES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"CPTVF-%d of SE TYPE got AE request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AE_TYPES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"CPTVF-%d of AE TYPE got SE request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cptvf_do_request(i8* %0, %struct.cpt_request_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpt_request_info*, align 8
  %6 = alloca %struct.cpt_vf*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cpt_request_info* %1, %struct.cpt_request_info** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cpt_vf*
  store %struct.cpt_vf* %9, %struct.cpt_vf** %6, align 8
  %10 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %11 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  %13 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %14 = call i32 @cpt_device_ready(%struct.cpt_vf* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %24 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SE_TYPES, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %30 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %39 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %28, %22
  %45 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %46 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AE_TYPES, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %52 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %61 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %50, %44
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %69 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %70 = call i32 @process_request(%struct.cpt_vf* %68, %struct.cpt_request_info* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %57, %35, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @cpt_device_ready(%struct.cpt_vf*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @process_request(%struct.cpt_vf*, %struct.cpt_request_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
