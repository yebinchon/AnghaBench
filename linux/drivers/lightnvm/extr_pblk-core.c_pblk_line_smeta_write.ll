; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_smeta_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_smeta_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32 }
%struct.pblk_line = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { i32, i32, i64, i32, i32 }
%struct.pblk_sec_meta = type { i32 }

@ADDR_EMPTY = common dso_local global i32 0, align 4
@NVM_OP_PWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"smeta I/O submission failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, i64)* @pblk_line_smeta_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_smeta_write(%struct.pblk* %0, %struct.pblk_line* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pblk_line_meta*, align 8
  %9 = alloca %struct.ppa_addr*, align 8
  %10 = alloca %struct.nvm_rq, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pblk_sec_meta*, align 8
  %16 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.pblk*, %struct.pblk** %5, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 1
  store %struct.pblk_line_meta* %18, %struct.pblk_line_meta** %8, align 8
  %19 = load %struct.pblk*, %struct.pblk** %5, align 8
  %20 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %21 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @emeta_to_lbas(%struct.pblk* %19, i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* @ADDR_EMPTY, align 4
  %27 = call i32 @cpu_to_le64(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = call i32 @memset(%struct.nvm_rq* %10, i32 0, i32 24)
  %29 = load %struct.pblk*, %struct.pblk** %5, align 8
  %30 = call i32 @pblk_alloc_rqd_meta(%struct.pblk* %29, %struct.nvm_rq* %10)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %3
  %36 = load i32, i32* @NVM_OP_PWRITE, align 4
  %37 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %39 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %10)
  store %struct.ppa_addr* %43, %struct.ppa_addr** %9, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %75, %35
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %47 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load %struct.pblk*, %struct.pblk** %5, align 8
  %52 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %51, i32 %53, i32 %54)
  store %struct.pblk_sec_meta* %55, %struct.pblk_sec_meta** %15, align 8
  %56 = load %struct.ppa_addr*, %struct.ppa_addr** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %56, i64 %58
  %60 = load %struct.pblk*, %struct.pblk** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %63 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @addr_to_gen_ppa(%struct.pblk* %60, i64 %61, i32 %64)
  %66 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %16, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = bitcast %struct.ppa_addr* %59 to i8*
  %68 = bitcast %struct.ppa_addr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %15, align 8
  %74 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %44

80:                                               ; preds = %44
  %81 = load %struct.pblk*, %struct.pblk** %5, align 8
  %82 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %83 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pblk_submit_io_sync_sem(%struct.pblk* %81, %struct.nvm_rq* %10, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.pblk*, %struct.pblk** %5, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @pblk_err(%struct.pblk* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %105

92:                                               ; preds = %80
  %93 = load %struct.pblk*, %struct.pblk** %5, align 8
  %94 = getelementptr inbounds %struct.pblk, %struct.pblk* %93, i32 0, i32 0
  %95 = call i32 @atomic_dec(i32* %94)
  %96 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.pblk*, %struct.pblk** %5, align 8
  %101 = call i32 @pblk_log_write_err(%struct.pblk* %100, %struct.nvm_rq* %10)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.pblk*, %struct.pblk** %5, align 8
  %107 = call i32 @pblk_free_rqd_meta(%struct.pblk* %106, %struct.nvm_rq* %10)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %33
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32* @emeta_to_lbas(%struct.pblk*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @pblk_alloc_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i32, i32) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_submit_io_sync_sem(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pblk_log_write_err(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_free_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
