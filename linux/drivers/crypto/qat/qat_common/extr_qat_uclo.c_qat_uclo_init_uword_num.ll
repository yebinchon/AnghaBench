; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_uword_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_uword_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uclo_objhandle = type { i32, %struct.icp_qat_uclo_encapme* }
%struct.icp_qat_uclo_encapme = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*)* @qat_uclo_init_uword_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_init_uword_num(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %3 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %4 = alloca %struct.icp_qat_uclo_encapme*, align 8
  %5 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %2, align 8
  %6 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %7 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %6, i32 0, i32 0
  %8 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %7, align 8
  store %struct.icp_qat_uclo_objhandle* %8, %struct.icp_qat_uclo_objhandle** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %12 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %17 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %16, i32 0, i32 1
  %18 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %18, i64 %20
  store %struct.icp_qat_uclo_encapme* %21, %struct.icp_qat_uclo_encapme** %4, align 8
  %22 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %4, align 8
  %23 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %4, align 8
  %28 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %4, align 8
  %34 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %9

38:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
