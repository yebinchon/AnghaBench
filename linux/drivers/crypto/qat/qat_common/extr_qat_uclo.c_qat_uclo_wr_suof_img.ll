; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_suof_img.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_suof_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_suof_handle* }
%struct.icp_qat_suof_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.icp_qat_suof_img_hdr* }
%struct.icp_qat_suof_img_hdr = type { i64, i64 }
%struct.icp_qat_fw_auth_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*)* @qat_uclo_wr_suof_img to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_wr_suof_img(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_auth_desc*, align 8
  %6 = alloca %struct.icp_qat_suof_handle*, align 8
  %7 = alloca %struct.icp_qat_suof_img_hdr*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  store %struct.icp_qat_fw_auth_desc* null, %struct.icp_qat_fw_auth_desc** %5, align 8
  %8 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %9 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %8, i32 0, i32 0
  %10 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %9, align 8
  store %struct.icp_qat_suof_handle* %10, %struct.icp_qat_suof_handle** %6, align 8
  %11 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %6, align 8
  %12 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %13, align 8
  store %struct.icp_qat_suof_img_hdr* %14, %struct.icp_qat_suof_img_hdr** %7, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %56, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %6, align 8
  %18 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %15
  %23 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %24 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %24, i64 %26
  %28 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %31, i64 %33
  %35 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @qat_uclo_map_auth_fw(%struct.icp_qat_fw_loader_handle* %23, i8* %30, i32 %37, %struct.icp_qat_fw_auth_desc** %5)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %60

41:                                               ; preds = %22
  %42 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %43 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %5, align 8
  %44 = call i64 @qat_uclo_auth_fw(%struct.icp_qat_fw_loader_handle* %42, %struct.icp_qat_fw_auth_desc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %60

47:                                               ; preds = %41
  %48 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %49 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %5, align 8
  %50 = call i64 @qat_uclo_load_fw(%struct.icp_qat_fw_loader_handle* %48, %struct.icp_qat_fw_auth_desc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %60

53:                                               ; preds = %47
  %54 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %55 = call i32 @qat_uclo_ummap_auth_fw(%struct.icp_qat_fw_loader_handle* %54, %struct.icp_qat_fw_auth_desc** %5)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %15

59:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %65

60:                                               ; preds = %52, %46, %40
  %61 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %62 = call i32 @qat_uclo_ummap_auth_fw(%struct.icp_qat_fw_loader_handle* %61, %struct.icp_qat_fw_auth_desc** %5)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @qat_uclo_map_auth_fw(%struct.icp_qat_fw_loader_handle*, i8*, i32, %struct.icp_qat_fw_auth_desc**) #1

declare dso_local i64 @qat_uclo_auth_fw(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc*) #1

declare dso_local i64 @qat_uclo_load_fw(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc*) #1

declare dso_local i32 @qat_uclo_ummap_auth_fw(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_auth_desc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
