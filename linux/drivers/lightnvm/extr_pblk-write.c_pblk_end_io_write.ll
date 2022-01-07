; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_io_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { %struct.TYPE_2__*, i64, %struct.pblk* }
%struct.TYPE_2__ = type { i32 }
%struct.pblk = type { i32 }
%struct.pblk_c_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_rq*)* @pblk_end_io_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_end_io_write(%struct.nvm_rq* %0) #0 {
  %2 = alloca %struct.nvm_rq*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_c_ctx*, align 8
  store %struct.nvm_rq* %0, %struct.nvm_rq** %2, align 8
  %5 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %6 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %5, i32 0, i32 2
  %7 = load %struct.pblk*, %struct.pblk** %6, align 8
  store %struct.pblk* %7, %struct.pblk** %3, align 8
  %8 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %9 = call %struct.pblk_c_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %8)
  store %struct.pblk_c_ctx* %9, %struct.pblk_c_ctx** %4, align 8
  %10 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %11 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.pblk*, %struct.pblk** %3, align 8
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %17 = call i32 @pblk_end_w_fail(%struct.pblk* %15, %struct.nvm_rq* %16)
  br label %34

18:                                               ; preds = %1
  %19 = call i64 (...) @trace_pblk_chunk_state_enabled()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.pblk*, %struct.pblk** %3, align 8
  %23 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %24 = call i32 @pblk_check_chunk_state_update(%struct.pblk* %22, %struct.nvm_rq* %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.pblk*, %struct.pblk** %3, align 8
  %28 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %29 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %4, align 8
  %30 = call i32 @pblk_complete_write(%struct.pblk* %27, %struct.nvm_rq* %28, %struct.pblk_c_ctx* %29)
  %31 = load %struct.pblk*, %struct.pblk** %3, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  %33 = call i32 @atomic_dec(i32* %32)
  br label %34

34:                                               ; preds = %26, %14
  ret void
}

declare dso_local %struct.pblk_c_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_end_w_fail(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i64 @trace_pblk_chunk_state_enabled(...) #1

declare dso_local i32 @pblk_check_chunk_state_update(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_complete_write(%struct.pblk*, %struct.nvm_rq*, %struct.pblk_c_ctx*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
