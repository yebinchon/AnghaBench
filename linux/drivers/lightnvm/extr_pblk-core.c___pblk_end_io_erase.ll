; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_end_io_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_end_io_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.nvm_rq = type { i32, i64 }
%struct.nvm_chk_meta = type { i32 }
%struct.pblk_line = type { i32, %struct.nvm_chk_meta* }

@PBLK_CHUNK_RESET_FAILED = common dso_local global i32 0, align 4
@NVM_CHK_ST_OFFLINE = common dso_local global i32 0, align 4
@PBLK_CHUNK_RESET_DONE = common dso_local global i32 0, align 4
@NVM_CHK_ST_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*)* @__pblk_end_io_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pblk_end_io_erase(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.nvm_chk_meta*, align 8
  %8 = alloca %struct.pblk_line*, align 8
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 1
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %11, align 8
  store %struct.nvm_tgt_dev* %12, %struct.nvm_tgt_dev** %5, align 8
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  store %struct.nvm_geo* %14, %struct.nvm_geo** %6, align 8
  %15 = load %struct.pblk*, %struct.pblk** %3, align 8
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %17 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %15, i32 %18)
  store %struct.pblk_line* %19, %struct.pblk_line** %8, align 8
  %20 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %21 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %22 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.pblk_line*, %struct.pblk_line** %8, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 1
  %27 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %27, i64 %29
  store %struct.nvm_chk_meta* %30, %struct.nvm_chk_meta** %7, align 8
  %31 = load %struct.pblk_line*, %struct.pblk_line** %8, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 0
  %33 = call i32 @atomic_dec(i32* %32)
  %34 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %35 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %2
  %39 = load %struct.pblk*, %struct.pblk** %3, align 8
  %40 = call i32 @pblk_disk_name(%struct.pblk* %39)
  %41 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %42 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %41, i32 0, i32 0
  %43 = load i32, i32* @PBLK_CHUNK_RESET_FAILED, align 4
  %44 = call i32 @trace_pblk_chunk_reset(i32 %40, i32* %42, i32 %43)
  %45 = load i32, i32* @NVM_CHK_ST_OFFLINE, align 4
  %46 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %47 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pblk*, %struct.pblk** %3, align 8
  %49 = load %struct.pblk_line*, %struct.pblk_line** %8, align 8
  %50 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %51 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pblk_mark_bb(%struct.pblk* %48, %struct.pblk_line* %49, i32 %52)
  br label %64

54:                                               ; preds = %2
  %55 = load %struct.pblk*, %struct.pblk** %3, align 8
  %56 = call i32 @pblk_disk_name(%struct.pblk* %55)
  %57 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %58 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %57, i32 0, i32 0
  %59 = load i32, i32* @PBLK_CHUNK_RESET_DONE, align 4
  %60 = call i32 @trace_pblk_chunk_reset(i32 %56, i32* %58, i32 %59)
  %61 = load i32, i32* @NVM_CHK_ST_FREE, align 4
  %62 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %63 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %38
  %65 = load %struct.pblk*, %struct.pblk** %3, align 8
  %66 = call i32 @pblk_disk_name(%struct.pblk* %65)
  %67 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %68 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %67, i32 0, i32 0
  %69 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %70 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @trace_pblk_chunk_state(i32 %66, i32* %68, i32 %71)
  %73 = load %struct.pblk*, %struct.pblk** %3, align 8
  %74 = getelementptr inbounds %struct.pblk, %struct.pblk* %73, i32 0, i32 0
  %75 = call i32 @atomic_dec(i32* %74)
  ret void
}

declare dso_local %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @trace_pblk_chunk_reset(i32, i32*, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @pblk_mark_bb(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @trace_pblk_chunk_state(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
