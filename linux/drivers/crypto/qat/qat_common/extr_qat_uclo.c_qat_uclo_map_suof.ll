; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_suof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_suof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_suof_handle* }
%struct.icp_qat_suof_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.icp_qat_suof_img_hdr* }
%struct.icp_qat_suof_img_hdr = type { i32 }
%struct.icp_qat_suof_filehdr = type { i32 }
%struct.icp_qat_suof_chunk_hdr = type { i32 }

@ICP_QAT_UCLO_MAX_AE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"QAT: input parameter SUOF pointer/size is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_suof_filehdr*, i32)* @qat_uclo_map_suof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_map_suof(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_suof_filehdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca %struct.icp_qat_suof_filehdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_suof_handle*, align 8
  %9 = alloca %struct.icp_qat_suof_chunk_hdr*, align 8
  %10 = alloca %struct.icp_qat_suof_img_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.icp_qat_suof_img_hdr, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store %struct.icp_qat_suof_filehdr* %1, %struct.icp_qat_suof_filehdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %16 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %15, i32 0, i32 0
  %17 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %16, align 8
  store %struct.icp_qat_suof_handle* %17, %struct.icp_qat_suof_handle** %8, align 8
  store %struct.icp_qat_suof_chunk_hdr* null, %struct.icp_qat_suof_chunk_hdr** %9, align 8
  store %struct.icp_qat_suof_img_hdr* null, %struct.icp_qat_suof_img_hdr** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @ICP_QAT_UCLO_MAX_AE, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %6, align 8
  %20 = icmp ne %struct.icp_qat_suof_filehdr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %136

28:                                               ; preds = %21
  %29 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %6, align 8
  %30 = call i64 @qat_uclo_check_suof_format(%struct.icp_qat_suof_filehdr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %136

35:                                               ; preds = %28
  %36 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %37 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @qat_uclo_map_suof_file_hdr(%struct.icp_qat_fw_loader_handle* %36, %struct.icp_qat_suof_filehdr* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %136

44:                                               ; preds = %35
  %45 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %6, align 8
  %46 = ptrtoint %struct.icp_qat_suof_filehdr* %45 to i64
  %47 = add i64 %46, 4
  %48 = inttoptr i64 %47 to %struct.icp_qat_suof_chunk_hdr*
  store %struct.icp_qat_suof_chunk_hdr* %48, %struct.icp_qat_suof_chunk_hdr** %9, align 8
  %49 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %50 = load %struct.icp_qat_suof_chunk_hdr*, %struct.icp_qat_suof_chunk_hdr** %9, align 8
  %51 = call i32 @qat_uclo_map_suof_symobjs(%struct.icp_qat_suof_handle* %49, %struct.icp_qat_suof_chunk_hdr* %50)
  %52 = load %struct.icp_qat_suof_filehdr*, %struct.icp_qat_suof_filehdr** %6, align 8
  %53 = getelementptr inbounds %struct.icp_qat_suof_filehdr, %struct.icp_qat_suof_filehdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %54, 1
  %56 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %57 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %60 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %44
  %65 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %66 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.icp_qat_suof_img_hdr* @kcalloc(i32 %68, i32 4, i32 %69)
  store %struct.icp_qat_suof_img_hdr* %70, %struct.icp_qat_suof_img_hdr** %10, align 8
  %71 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %10, align 8
  %72 = icmp ne %struct.icp_qat_suof_img_hdr* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %136

76:                                               ; preds = %64
  %77 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %10, align 8
  %78 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %79 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store %struct.icp_qat_suof_img_hdr* %77, %struct.icp_qat_suof_img_hdr** %80, align 8
  br label %81

81:                                               ; preds = %76, %44
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %125, %81
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %85 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %83, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %82
  %90 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %91 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %90, i32 0, i32 0
  %92 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %91, align 8
  %93 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %10, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %93, i64 %95
  %97 = load %struct.icp_qat_suof_chunk_hdr*, %struct.icp_qat_suof_chunk_hdr** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add i32 1, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.icp_qat_suof_chunk_hdr, %struct.icp_qat_suof_chunk_hdr* %97, i64 %100
  %102 = call i32 @qat_uclo_map_simg(%struct.icp_qat_suof_handle* %92, %struct.icp_qat_suof_img_hdr* %96, %struct.icp_qat_suof_chunk_hdr* %101)
  %103 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %104 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %104, i64 %106
  %108 = call i32 @qat_uclo_check_simg_compat(%struct.icp_qat_fw_loader_handle* %103, %struct.icp_qat_suof_img_hdr* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %89
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %136

113:                                              ; preds = %89
  %114 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %114, i64 %116
  %118 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %122, %113
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %82

128:                                              ; preds = %82
  %129 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %10, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %8, align 8
  %132 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @qat_uclo_tail_img(%struct.icp_qat_suof_img_hdr* %129, i32 %130, i32 %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %128, %111, %73, %42, %32, %24
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @qat_uclo_check_suof_format(%struct.icp_qat_suof_filehdr*) #1

declare dso_local i32 @qat_uclo_map_suof_file_hdr(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_suof_filehdr*, i32) #1

declare dso_local i32 @qat_uclo_map_suof_symobjs(%struct.icp_qat_suof_handle*, %struct.icp_qat_suof_chunk_hdr*) #1

declare dso_local %struct.icp_qat_suof_img_hdr* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qat_uclo_map_simg(%struct.icp_qat_suof_handle*, %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_chunk_hdr*) #1

declare dso_local i32 @qat_uclo_check_simg_compat(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_suof_img_hdr*) #1

declare dso_local i32 @qat_uclo_tail_img(%struct.icp_qat_suof_img_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
