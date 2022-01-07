; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_submit_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { i32 }
%struct.nvm_rq = type { i32 }

@NVM_IO_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_submit_io(%struct.pblk* %0, %struct.nvm_rq* %1, i8* %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.pblk*, %struct.pblk** %4, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 1
  %10 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %9, align 8
  store %struct.nvm_tgt_dev* %10, %struct.nvm_tgt_dev** %7, align 8
  %11 = load %struct.pblk*, %struct.pblk** %4, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 0
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @nvm_submit_io(%struct.nvm_tgt_dev* %14, %struct.nvm_rq* %15, i8* %16)
  ret i32 %17
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nvm_submit_io(%struct.nvm_tgt_dev*, %struct.nvm_rq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
