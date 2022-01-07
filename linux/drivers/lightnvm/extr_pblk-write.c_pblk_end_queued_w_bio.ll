; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_queued_w_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_queued_w_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.pblk_c_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, %struct.nvm_rq*, %struct.pblk_c_ctx*)* @pblk_end_queued_w_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_end_queued_w_bio(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.pblk_c_ctx* %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca %struct.pblk_c_ctx*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store %struct.pblk_c_ctx* %2, %struct.pblk_c_ctx** %6, align 8
  %7 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %8 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %12 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %13 = call i64 @pblk_end_w_bio(%struct.pblk* %10, %struct.nvm_rq* %11, %struct.pblk_c_ctx* %12)
  ret i64 %13
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @pblk_end_w_bio(%struct.pblk*, %struct.nvm_rq*, %struct.pblk_c_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
