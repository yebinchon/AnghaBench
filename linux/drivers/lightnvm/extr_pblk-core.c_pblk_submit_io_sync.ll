; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_submit_io_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_submit_io_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { i32 }
%struct.nvm_rq = type { i64 }

@NVM_OP_PWRITE = common dso_local global i64 0, align 8
@NVM_IO_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_submit_io_sync(%struct.pblk* %0, %struct.nvm_rq* %1, i8* %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.pblk*, %struct.pblk** %4, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 1
  %11 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %10, align 8
  store %struct.nvm_tgt_dev* %11, %struct.nvm_tgt_dev** %7, align 8
  %12 = load %struct.pblk*, %struct.pblk** %4, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc(i32* %13)
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @nvm_submit_io_sync(%struct.nvm_tgt_dev* %15, %struct.nvm_rq* %16, i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = call i64 (...) @trace_pblk_chunk_state_enabled()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %26 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NVM_OP_PWRITE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.pblk*, %struct.pblk** %4, align 8
  %32 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %33 = call i32 @pblk_check_chunk_state_update(%struct.pblk* %31, %struct.nvm_rq* %32)
  br label %34

34:                                               ; preds = %30, %24, %21, %3
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nvm_submit_io_sync(%struct.nvm_tgt_dev*, %struct.nvm_rq*, i8*) #1

declare dso_local i64 @trace_pblk_chunk_state_enabled(...) #1

declare dso_local i32 @pblk_check_chunk_state_update(%struct.pblk*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
