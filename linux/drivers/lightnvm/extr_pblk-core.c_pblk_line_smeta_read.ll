; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_smeta_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_smeta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32 }
%struct.pblk_line = type { i32, i32 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { i32, i32, i64, i32 }

@NVM_OP_PREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"smeta I/O submission failed: %d\0A\00", align 1
@NVM_RSP_WARN_HIGHECC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_line_smeta_read(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca %struct.ppa_addr*, align 8
  %8 = alloca %struct.nvm_rq, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %13 = load %struct.pblk*, %struct.pblk** %4, align 8
  %14 = getelementptr inbounds %struct.pblk, %struct.pblk* %13, i32 0, i32 1
  store %struct.pblk_line_meta* %14, %struct.pblk_line_meta** %6, align 8
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %17 = call i32 @pblk_line_smeta_start(%struct.pblk* %15, %struct.pblk_line* %16)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @memset(%struct.nvm_rq* %8, i32 0, i32 24)
  %19 = load %struct.pblk*, %struct.pblk** %4, align 8
  %20 = call i32 @pblk_alloc_rqd_meta(%struct.pblk* %19, %struct.nvm_rq* %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load i32, i32* @NVM_OP_PREAD, align 4
  %27 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %29 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %8)
  store %struct.ppa_addr* %33, %struct.ppa_addr** %7, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %54, %25
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %37 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %41, i64 %43
  %45 = load %struct.pblk*, %struct.pblk** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %48 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @addr_to_gen_ppa(%struct.pblk* %45, i32 %46, i32 %49)
  %51 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.ppa_addr* %44 to i8*
  %53 = bitcast %struct.ppa_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load %struct.pblk*, %struct.pblk** %4, align 8
  %61 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %62 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pblk_submit_io_sync(%struct.pblk* %60, %struct.nvm_rq* %8, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.pblk*, %struct.pblk** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @pblk_err(%struct.pblk* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %89

71:                                               ; preds = %59
  %72 = load %struct.pblk*, %struct.pblk** %4, align 8
  %73 = getelementptr inbounds %struct.pblk, %struct.pblk* %72, i32 0, i32 0
  %74 = call i32 @atomic_dec(i32* %73)
  %75 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NVM_RSP_WARN_HIGHECC, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.pblk*, %struct.pblk** %4, align 8
  %85 = call i32 @pblk_log_read_err(%struct.pblk* %84, %struct.nvm_rq* %8)
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %83, %78, %71
  br label %89

89:                                               ; preds = %88, %67
  %90 = load %struct.pblk*, %struct.pblk** %4, align 8
  %91 = call i32 @pblk_free_rqd_meta(%struct.pblk* %90, %struct.nvm_rq* %8)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pblk_line_smeta_start(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @pblk_alloc_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_submit_io_sync(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pblk_log_read_err(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_free_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
