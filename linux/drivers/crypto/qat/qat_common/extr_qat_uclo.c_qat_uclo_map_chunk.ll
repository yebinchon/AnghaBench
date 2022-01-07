; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uclo_objhdr = type { i8*, i64, i32 }
%struct.icp_qat_uof_filehdr = type { i32 }
%struct.icp_qat_uof_filechunkhdr = type { i32, i64, i32, i32 }

@ICP_QAT_UOF_OBJID_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.icp_qat_uclo_objhdr* (i8*, %struct.icp_qat_uof_filehdr*, i8*)* @qat_uclo_map_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.icp_qat_uclo_objhdr* @qat_uclo_map_chunk(i8* %0, %struct.icp_qat_uof_filehdr* %1, i8* %2) #0 {
  %4 = alloca %struct.icp_qat_uclo_objhdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.icp_qat_uof_filehdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.icp_qat_uof_filechunkhdr*, align 8
  %9 = alloca %struct.icp_qat_uclo_objhdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.icp_qat_uof_filehdr* %1, %struct.icp_qat_uof_filehdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = bitcast i8* %13 to %struct.icp_qat_uof_filechunkhdr*
  store %struct.icp_qat_uof_filechunkhdr* %14, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %70, %3
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.icp_qat_uof_filehdr*, %struct.icp_qat_uof_filehdr** %6, align 8
  %18 = getelementptr inbounds %struct.icp_qat_uof_filehdr, %struct.icp_qat_uof_filehdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %15
  %22 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %23 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @ICP_QAT_UOF_OBJID_LEN, align 4
  %27 = call i32 @strncmp(i32 %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %32 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %10, align 8
  %36 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %37 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %41 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @qat_uclo_calc_str_checksum(i8* %39, i32 %42)
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %73

46:                                               ; preds = %29
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.icp_qat_uclo_objhdr* @kzalloc(i32 24, i32 %47)
  store %struct.icp_qat_uclo_objhdr* %48, %struct.icp_qat_uclo_objhdr** %9, align 8
  %49 = load %struct.icp_qat_uclo_objhdr*, %struct.icp_qat_uclo_objhdr** %9, align 8
  %50 = icmp ne %struct.icp_qat_uclo_objhdr* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %73

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.icp_qat_uclo_objhdr*, %struct.icp_qat_uclo_objhdr** %9, align 8
  %55 = getelementptr inbounds %struct.icp_qat_uclo_objhdr, %struct.icp_qat_uclo_objhdr* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %57 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.icp_qat_uclo_objhdr*, %struct.icp_qat_uclo_objhdr** %9, align 8
  %60 = getelementptr inbounds %struct.icp_qat_uclo_objhdr, %struct.icp_qat_uclo_objhdr* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %62 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.icp_qat_uclo_objhdr*, %struct.icp_qat_uclo_objhdr** %9, align 8
  %65 = getelementptr inbounds %struct.icp_qat_uclo_objhdr, %struct.icp_qat_uclo_objhdr* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.icp_qat_uclo_objhdr*, %struct.icp_qat_uclo_objhdr** %9, align 8
  store %struct.icp_qat_uclo_objhdr* %66, %struct.icp_qat_uclo_objhdr** %4, align 8
  br label %74

67:                                               ; preds = %21
  %68 = load %struct.icp_qat_uof_filechunkhdr*, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  %69 = getelementptr inbounds %struct.icp_qat_uof_filechunkhdr, %struct.icp_qat_uof_filechunkhdr* %68, i32 1
  store %struct.icp_qat_uof_filechunkhdr* %69, %struct.icp_qat_uof_filechunkhdr** %8, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %15

73:                                               ; preds = %51, %45, %15
  store %struct.icp_qat_uclo_objhdr* null, %struct.icp_qat_uclo_objhdr** %4, align 8
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.icp_qat_uclo_objhdr*, %struct.icp_qat_uclo_objhdr** %4, align 8
  ret %struct.icp_qat_uclo_objhdr* %75
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @qat_uclo_calc_str_checksum(i8*, i32) #1

declare dso_local %struct.icp_qat_uclo_objhdr* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
