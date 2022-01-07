; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_setup_line_meta_chk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_setup_line_meta_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun*, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_lun = type { %struct.ppa_addr }
%struct.ppa_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_line_meta = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32, i32, %struct.nvm_chk_meta* }
%struct.nvm_chk_meta = type { i32, i32, i32, i32, i32, i32 }

@NVM_CHK_TP_SZ_SPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pblk: custom-sized chunks unsupported\0A\00", align 1
@NVM_CHK_ST_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, %struct.nvm_chk_meta*)* @pblk_setup_line_meta_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_setup_line_meta_chk(%struct.pblk* %0, %struct.pblk_line* %1, %struct.nvm_chk_meta* %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.nvm_chk_meta*, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = alloca %struct.pblk_line_meta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pblk_lun*, align 8
  %13 = alloca %struct.nvm_chk_meta*, align 8
  %14 = alloca %struct.nvm_chk_meta*, align 8
  %15 = alloca %struct.ppa_addr, align 4
  %16 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store %struct.nvm_chk_meta* %2, %struct.nvm_chk_meta** %6, align 8
  %17 = load %struct.pblk*, %struct.pblk** %4, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 2
  %19 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %18, align 8
  store %struct.nvm_tgt_dev* %19, %struct.nvm_tgt_dev** %7, align 8
  %20 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %21 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %20, i32 0, i32 0
  store %struct.nvm_geo* %21, %struct.nvm_geo** %8, align 8
  %22 = load %struct.pblk*, %struct.pblk** %4, align 8
  %23 = getelementptr inbounds %struct.pblk, %struct.pblk* %22, i32 0, i32 1
  store %struct.pblk_line_meta* %23, %struct.pblk_line_meta** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %123, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %9, align 8
  %27 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %126

30:                                               ; preds = %24
  %31 = load %struct.pblk*, %struct.pblk** %4, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  %33 = load %struct.pblk_lun*, %struct.pblk_lun** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %33, i64 %35
  store %struct.pblk_lun* %36, %struct.pblk_lun** %12, align 8
  %37 = load %struct.pblk_lun*, %struct.pblk_lun** %12, align 8
  %38 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %37, i32 0, i32 0
  %39 = bitcast %struct.ppa_addr* %15 to i8*
  %40 = bitcast %struct.ppa_addr* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %42 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %41, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %47 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %46, i32 0, i32 2
  %48 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %48, i64 %50
  store %struct.nvm_chk_meta* %51, %struct.nvm_chk_meta** %13, align 8
  %52 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %53 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pblk*, %struct.pblk** %4, align 8
  %58 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %6, align 8
  %59 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.nvm_chk_meta* @pblk_chunk_get_off(%struct.pblk* %57, %struct.nvm_chk_meta* %58, i32 %61)
  store %struct.nvm_chk_meta* %62, %struct.nvm_chk_meta** %14, align 8
  %63 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %14, align 8
  %64 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %67 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %14, align 8
  %69 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %72 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %14, align 8
  %74 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %77 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %14, align 8
  %79 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %82 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %14, align 8
  %84 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %87 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %14, align 8
  %89 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %92 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.pblk*, %struct.pblk** %4, align 8
  %94 = call i32 @pblk_disk_name(%struct.pblk* %93)
  %95 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %96 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @trace_pblk_chunk_state(i32 %94, %struct.ppa_addr* %15, i32 %97)
  %99 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %100 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NVM_CHK_TP_SZ_SPEC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %30
  %106 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %123

107:                                              ; preds = %30
  %108 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %13, align 8
  %109 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NVM_CHK_ST_OFFLINE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %123

115:                                              ; preds = %107
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %118 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @set_bit(i32 %116, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %115, %114, %105
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %24

126:                                              ; preds = %24
  %127 = load i32, i32* %11, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #2

declare dso_local %struct.nvm_chk_meta* @pblk_chunk_get_off(%struct.pblk*, %struct.nvm_chk_meta*, i32) #2

declare dso_local i32 @trace_pblk_chunk_state(i32, %struct.ppa_addr*, i32) #2

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #2

declare dso_local i32 @WARN_ONCE(i32, i8*) #2

declare dso_local i32 @set_bit(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
