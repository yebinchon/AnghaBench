; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_free_rqd_ppalist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_free_rqd_ppalist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { i32 }
%struct.nvm_rq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_tgt_dev*, %struct.nvm_rq*)* @nvm_free_rqd_ppalist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_free_rqd_ppalist(%struct.nvm_tgt_dev* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.nvm_tgt_dev*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %5 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %6 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %15 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %18 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nvm_dev_dma_free(i32 %13, i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @nvm_dev_dma_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
