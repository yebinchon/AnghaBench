; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_end_io_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_end_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { i32, %struct.pblk* }
%struct.pblk = type { i32 }
%struct.pblk_g_ctx = type { i64 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_rq*)* @pblk_end_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_end_io_read(%struct.nvm_rq* %0) #0 {
  %2 = alloca %struct.nvm_rq*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_g_ctx*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.nvm_rq* %0, %struct.nvm_rq** %2, align 8
  %6 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %7 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 1
  %8 = load %struct.pblk*, %struct.pblk** %7, align 8
  store %struct.pblk* %8, %struct.pblk** %3, align 8
  %9 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %10 = call %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %9)
  store %struct.pblk_g_ctx* %10, %struct.pblk_g_ctx** %4, align 8
  %11 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bio*
  store %struct.bio* %14, %struct.bio** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %17 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pblk_end_user_read(%struct.bio* %15, i32 %18)
  %20 = load %struct.pblk*, %struct.pblk** %3, align 8
  %21 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %22 = call i32 @__pblk_end_io_read(%struct.pblk* %20, %struct.nvm_rq* %21, i32 1)
  ret void
}

declare dso_local %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_end_user_read(%struct.bio*, i32) #1

declare dso_local i32 @__pblk_end_io_read(%struct.pblk*, %struct.nvm_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
