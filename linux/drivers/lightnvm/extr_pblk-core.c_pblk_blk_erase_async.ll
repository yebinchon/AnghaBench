; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_blk_erase_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_blk_erase_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { %struct.pblk*, i32 }

@PBLK_ERASE = common dso_local global i32 0, align 4
@pblk_end_io_erase = common dso_local global i32 0, align 4
@PBLK_CHUNK_RESET_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not async erase line:%d,blk:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_blk_erase_async(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.ppa_addr, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = load i32, i32* @PBLK_ERASE, align 4
  %12 = call %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk* %10, i32 %11)
  store %struct.nvm_rq* %12, %struct.nvm_rq** %5, align 8
  %13 = load %struct.pblk*, %struct.pblk** %4, align 8
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %15 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pblk_setup_e_rq(%struct.pblk* %13, %struct.nvm_rq* %14, i32 %16)
  %18 = load i32, i32* @pblk_end_io_erase, align 4
  %19 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %20 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pblk*, %struct.pblk** %4, align 8
  %22 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %23 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %22, i32 0, i32 0
  store %struct.pblk* %21, %struct.pblk** %23, align 8
  %24 = load %struct.pblk*, %struct.pblk** %4, align 8
  %25 = call i32 @pblk_disk_name(%struct.pblk* %24)
  %26 = load i32, i32* @PBLK_CHUNK_RESET_START, align 4
  %27 = call i32 @trace_pblk_chunk_reset(i32 %25, %struct.ppa_addr* %3, i32 %26)
  %28 = load %struct.pblk*, %struct.pblk** %4, align 8
  %29 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %30 = call i32 @pblk_submit_io(%struct.pblk* %28, %struct.nvm_rq* %29, i32* null)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load %struct.pblk*, %struct.pblk** %4, align 8
  %35 = getelementptr inbounds %struct.pblk, %struct.pblk* %34, i32 0, i32 0
  %36 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %35, align 8
  store %struct.nvm_tgt_dev* %36, %struct.nvm_tgt_dev** %7, align 8
  %37 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %38 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %37, i32 0, i32 0
  store %struct.nvm_geo* %38, %struct.nvm_geo** %8, align 8
  %39 = load %struct.pblk*, %struct.pblk** %4, align 8
  %40 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pblk_ppa_to_line_id(i32 %41)
  %43 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %44 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %43, i32 %45)
  %47 = call i32 @pblk_err(%struct.pblk* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %33, %2
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_setup_e_rq(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @trace_pblk_chunk_reset(i32, %struct.ppa_addr*, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @pblk_submit_io(%struct.pblk*, %struct.nvm_rq*, i32*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32, i32) #1

declare dso_local i32 @pblk_ppa_to_line_id(i32) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
